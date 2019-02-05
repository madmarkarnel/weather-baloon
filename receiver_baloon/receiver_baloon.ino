#include <SPI.h>
#include <RH_RF95.h>
#include <SD.h>
#include <Wire.h>
#include "Sodaq_DS3231.h"

#define RFM95_CS 10
#define RFM95_RST 9
#define RFM95_INT 2
 
// Change to 434.0 or other frequency, must match RX's freq!
#define RF95_FREQ 433.0
#define DEBUG 1
#define LED 14    // Blinky on receipt

// Singleton instance of the radio driver
RH_RF95 rf95(RFM95_CS, RFM95_INT);

uint8_t buf[RH_RF95_MAX_MESSAGE_LEN];
uint8_t len = sizeof(buf);

char recieved[250];

// set up variables using the SD utility library functions:
File myFile;
const int chipSelect = BUILTIN_SDCARD;  //for teensy 3.5

char l_temp[10] = "";     
char Ctimestamp[13] = ""; 
char rssiVal[7] = "";

int timestart = millis();

void init_sd(){

  if (DEBUG == 1) {Serial.println("Initializing SD card...");}
  
  // see if the card is present and can be initialized:
  if (!SD.begin(chipSelect)) {
    Serial.println("Card failed, or not present");
    if (DEBUG == 1) {Serial.println("SD initialization failed!");}
    // don't do anything more:
    return;
  }
  
  // if (DEBUG == 1) {Serial.println("card initialized.");}
}

void setup(){
  Serial.begin(115200);

  Wire.begin();   //initialize i2c connection
  rtc.begin();    //initialize rtc
  init_lora();
  init_sd();

  // Serial.println("Debug MOde! Please enter command");
  /*
  while((millis() - timestart < 10000)){
    if(Serial.available()){     
      
      getAtcommand();
    } 
    // else{read_lora_data();}
  }
  */
}

void loop(){
  //run code forever
  read_lora_data();
  // getAtcommand();
}

void init_lora(){
  pinMode(LED, OUTPUT);     

  pinMode(RFM95_RST, OUTPUT);
  digitalWrite(RFM95_RST, HIGH);
 
  Serial.println("Arduino LoRa RX Test!");
  
  // manual reset
  digitalWrite(RFM95_RST, LOW);
  delay(10);
  digitalWrite(RFM95_RST, HIGH);
  delay(10);
 
  while (!rf95.init()) {
    Serial.println("LoRa radio init failed");
    while (1);
  }
  Serial.println("LoRa radio init OK!");
 
  // Defaults after init are 434.0MHz, modulation GFSK_Rb250Fd250, +13dbM
  if (!rf95.setFrequency(RF95_FREQ)) {
    Serial.println("setFrequency failed");
    while (1);
  }
  Serial.print("Set Freq to: "); Serial.println(RF95_FREQ);
 
  // Defaults after init are 434.0MHz, 13dBm, Bw = 125 kHz, Cr = 4/5, Sf = 128chips/symbol, CRC on
 
  // The default transmitter power is 13dBm, using PA_BOOST.
  // If you are using RFM95/96/97/98 modules which uses the PA_BOOST transmitter pin, then 
  // you can set transmitter powers from 5 to 23 dBm:
  rf95.setTxPower(23, false);

}

void read_lora_data(){
  if (rf95.available())
  {
    // Should be a message for us now   

    if (rf95.recv(buf, &len)){
      digitalWrite(LED, HIGH);

      int i = 0;
      for (i = 0; i < len; ++i){
        recieved[i] = (uint8_t)buf[i];
      }

      recieved[i] = (uint8_t)'\0';
      Serial.println(recieved);

      readTimeStamp();
      logData();

      Serial.print("RSSI: ");
      Serial.println(rf95.lastRssi(), DEC);

      /*
      // Send a reply
      uint8_t data[] = "mad back to you";
      rf95.send(data, sizeof(data));
      rf95.waitPacketSent();
      Serial.println("Sent a reply");
      digitalWrite(LED, LOW);
      */
    }
    else{
      Serial.println("Receive failed");
    }
  }
}

void logData(){  
  String dataString = "";   //hold string from streamBuffer

  Serial.println("Writing Data to SD card . . ");

  File dataFile = SD.open ("datalog.txt", FILE_WRITE);

  // if the file is available, write to it:
  if (dataFile) {
    dataFile.print(recieved);
    dataFile.print("*");
    dataFile.println(Ctimestamp);
    dataFile.close();
  }  
  // if the file isn't open, pop up an error:
  else {
    Serial.println("error opening datalog.txt");
    Serial.println("Please insert SD Card.");
  }
}
