#include <SPI.h>
#include <Wire.h>
#include <RH_RF95.h>
#include <Adafruit_GPS.h>
#include "Adafruit_Si7021.h"
#include "BlueDot_BME280.h"
#include <Adafruit_INA219.h>

/* for feather m0  
#define RFM95_CS 8
#define RFM95_RST 4
#define RFM95_INT 3
*/

// for teensy 3.2
#define RFM95_CS 10
#define RFM95_RST 9
#define RFM95_INT 2

#define GPSPORT Serial3   //gps comms
#define DEBUG 0           //0 or 1-turn on debug mode
#define LED 17
#define DATALEN 200       //max size of dummy length
#define DECIMAL 2

#define RF95_FREQ 433.0   // Change to 434.0 or other frequency, must match RX's freq!

RH_RF95 rf95(RFM95_CS, RFM95_INT);    // Singleton instance of the radio driver

char temp[DATALEN];   //lora
uint8_t payload[RH_RF95_MAX_MESSAGE_LEN]; //store the data
char dummy_data[DATALEN] = ">>MADTA*TP:25.43*HM:70.20*";

Adafruit_INA219 ina219;
Adafruit_GPS GPS(&GPSPORT);
Adafruit_Si7021 sensor = Adafruit_Si7021();

//constants
char station_name[6] = "MADTA";
char fixTempHum[29] = "*TP:14.20*HM:99.00*PR:804.00";

//---------------------------------------------------------
BlueDot_BME280 bme280 = BlueDot_BME280();
char bme_tp[6] = "";
char bme_pr[8] = "";
char bme_al[6] = "";
char bme_rh[6] = "";
//-----------------------------------------------------------

//gps related
char gpstimestamp[13] = "";
char gps_latitude[12] = "";
char gps_longitude[12] = "";
char gps_altitude[8] = "";
char gps_speed[6] = "";
char gps_angle[6] = "";
char l_loadvoltage[10] = "";      
char l_current_mA[10] = "";   
char l_power_mW[12] = "";


void setup(){
   pinMode(LED, OUTPUT);
   digitalWrite(LED, HIGH);

  // connect at 115200 so we can read the GPS fast enough and echo without dropping chars
  // also spit it out
  Serial.begin(115200);
  Serial.println("Baloon Testing!");

  init_gps();   //initialize gps settings
  init_lora();
  init_in219();

  // init_si7021();
  // init_bme280();
}


void loop(){
  // send_thru_lora(dummy_data);
  // read_voltage();
  // delay(1000);
  read_gps_data();
}


void init_lora(){
  pinMode(RFM95_RST, OUTPUT);
  digitalWrite(RFM95_RST, HIGH);

  Serial.println("LoRa TX Test!");

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

void send_thru_lora(char* radiopacket){
  
  int length = sizeof(payload);
  int i=0, j=0;
  // char temp[DATALEN];   //lora
  // uint8_t payload[RH_RF95_MAX_MESSAGE_LEN]; //store the data

  // Send a message to rf95_server
  //do not stack
  for(i=0; i<200; i++){
    payload[i] = (uint8_t)'0';
  }

  for(i=0; i<length; i++){
    payload[i] = (uint8_t)radiopacket[i];
  }

  payload[i] = (uint8_t)'\0';

  // Serial.println((char*)payload);


  Serial.println("sending payload!");
  rf95.send(payload, length);

  delay(50);  
}

void build_message(){
  for(int i=0; i<DATALEN; i++) temp[i] = 0;
  strncpy(temp,">>", 2);  strncat(temp, station_name, sizeof(station_name));
  strncat(temp, fixTempHum, sizeof(fixTempHum));
  // strncat(temp, "*TP:", 4);     strncat(temp, bme_tp, sizeof(bme_tp));  
  // strncat(temp, "*RH:", 4);     strncat(temp, bme_rh, sizeof(bme_rh));
  // strncat(temp, "*PR:", 4);     strncat(temp, bme_pr, sizeof(bme_pr));
  // strncat(temp, "*AL:", 4);     strncat(temp, bme_al, sizeof(bme_al));  
  strncat(temp, "*ALG:", 5);    strncat(temp, gps_altitude, sizeof(gps_altitude));
  strncat(temp, "*SP:", 4);     strncat(temp, gps_speed, sizeof(gps_speed));
  strncat(temp, "*LAT:", 5);    strncat(temp, gps_latitude, sizeof(gps_latitude));
  strncat(temp, "*LON:", 5);    strncat(temp, gps_longitude, sizeof(gps_longitude));
  strncat(temp, "*BV:", 4);     strncat(temp, l_loadvoltage, sizeof(l_loadvoltage));
  strncat(temp, "*BI:", 4);     strncat(temp, l_current_mA, sizeof(l_current_mA));
  strncat(temp, "*BW:", 4);     strncat(temp, l_power_mW, sizeof(l_power_mW));
  strncat(temp, "*", 1);        strncat(temp, gpstimestamp, sizeof(gpstimestamp));
  strncat(temp, "<<", 2);

  Serial.println(temp);
  delay(10);
}


void sample_ina219(){
  float shuntvoltage = 0;
  float busvoltage = 0;
  float current_mA = 0;
  float loadvoltage = 0;
  float power_mW = 0;

  shuntvoltage = ina219.getShuntVoltage_mV();
  busvoltage = ina219.getBusVoltage_V();
  current_mA = ina219.getCurrent_mA();                dtostrf(current_mA, 5, 2, l_current_mA);
  power_mW = ina219.getPower_mW();                    dtostrf(power_mW, 5, 2, l_power_mW);
  loadvoltage = busvoltage + (shuntvoltage / 1000);   dtostrf(loadvoltage, 3, 2, l_loadvoltage);

  if(DEBUG == 1){
  Serial.print("Bus Voltage:   "); Serial.print(busvoltage); Serial.println(" V");
  Serial.print("Shunt Voltage: "); Serial.print(shuntvoltage); Serial.println(" mV");
  Serial.print("Load Voltage:  "); Serial.print(loadvoltage); Serial.println(" V");
  Serial.print("Current:       "); Serial.print(current_mA); Serial.println(" mA");
  Serial.print("Power:         "); Serial.print(power_mW); Serial.println(" mW");  
  }
}

/* 
  Function: init_in219()

  - initialize ina219 module
*/

void init_in219(){
  uint32_t currentFrequency;
  ina219.begin();
  ina219.setCalibration_16V_400mA();  
}

void init_si7021(){
  if (!sensor.begin()) {
    Serial.println("Did not find Si7021 sensor!");
    while (true);
  }  
}

void sample_si7021(){
  Serial.print("Humidity:    "); Serial.print(sensor.readHumidity(), 2);
  Serial.print("\tTemperature: "); Serial.println(sensor.readTemperature(), 2);
}


void read_bme280(){
  float tp, pr, rh, al = 0;

  tp = bme280.readTempC();             dtostrf(tp, 3, DECIMAL, bme_tp);
  pr = bme280.readPressure();          dtostrf(pr, 4, DECIMAL, bme_pr);
  rh = bme280.readHumidity();          dtostrf(rh, 3, DECIMAL, bme_rh);
  al = bme280.readAltitudeMeter();     dtostrf(al, 4, DECIMAL, bme_al);

 // Serial.print(F("Duration in Seconds:\t\t"));
 // Serial.println(float(millis())/1000);

 Serial.print(F("Temperature in Celsius:\t\t")); 
 Serial.println(bme280.readTempC());

 Serial.print(F("Temperature in Fahrenheit:\t")); 
 Serial.println(bme280.readTempF());
 
 Serial.print(F("Humidity in %:\t\t\t")); 
 Serial.println(bme280.readHumidity());

 Serial.print(F("Pressure in hPa:\t\t")); 
 Serial.println(bme280.readPressure());

 Serial.print(F("Altitude in Meters:\t\t")); 
 Serial.println(bme280.readAltitudeMeter());

 Serial.print(F("Altitude in Feet:\t\t")); 
 Serial.println(bme280.readAltitudeFeet());
 
 Serial.println();

 // delay(1000);     
}

void init_bme280(){
  Serial.println(F("Basic Weather Station"));

  //*********************************************************************
  //*************BASIC SETUP - READ BEFORE GOING ON!*********************
    
  //Choose between the SPI and I2C Communication protocols
  //Or leave the I2C Communication as default

  //0:        Set to 0 for I2C (default value)
  //1:        Set to 1 for Software SPI
  //2:        Set to 2 for Hardware SPI
 
    bme280.parameter.communication = 0;                  //Choose communication protocol
   
  //*********************************************************************
  //*************BASIC SETUP - READ BEFORE GOING ON!*********************
    
  //Set the I2C address of your breakout board  
  //Or ignore this, if you're using SPI Communication

  //0x76:       Alternative I2C Address (SDO pin connected to GND)
  //0x77:       Default I2C Address (SDO pin unconnected)
  
     bme280.parameter.I2CAddress = 0x77;                  //Choose I2C Address
    
  //*********************************************************************
  //*************BASIC SETUP - READ BEFORE GOING ON!*********************
    
  //Set the pins for SPI Communication
  //Or ignore this, if you're using I2C Communication instead

    bme280.parameter.SPI_cs = 10;                          //Are you using either Software SPI or Hardware SPI? Then you need to define the Chip Select Pin.
    
    bme280.parameter.SPI_mosi = 13;                       //If you are using Software SPI, then you need to define the MOSI line. For Hardware SPI you can leave this line commented.
    bme280.parameter.SPI_miso = 11;                       //If you are using Software SPI, then you need to define the MISO line. Just comment this out for Hardware SPI.
    bme280.parameter.SPI_sck = 12;                        //If you are using Software SPI, then you need to define the SCK line. Same as before. For Hardware SPI, just comment this out.

  //*********************************************************************
  //*************ADVANCED SETUP - SAFE TO IGNORE!************************
  
  //Now choose on which mode your device will run
  //On doubt, just leave on normal mode, that's the default value

  //0b00:     In sleep mode no measurements are performed, but power consumption is at a minimum
  //0b01:     In forced mode a single measured is performed and the device returns automatically to sleep mode
  //0b11:     In normal mode the sensor measures continually (default value)
  
    bme280.parameter.sensorMode = 0b11;                   //Choose sensor mode  

  //*********************************************************************
  //*************ADVANCED SETUP - SAFE TO IGNORE!************************
  
  //Great! Now set up the internal IIR Filter
  //The IIR (Infinite Impulse Response) filter suppresses high frequency fluctuations
  //In short, a high factor value means less noise, but measurements are also less responsive
  //You can play with these values and check the results!
  //In doubt just leave on default

  //0b000:      factor 0 (filter off)
  //0b001:      factor 2
  //0b010:      factor 4
  //0b011:      factor 8
  //0b100:      factor 16 (default value)

    bme280.parameter.IIRfilter = 0b100;                    //Setup for IIR Filter

  //*********************************************************************
  //*************ADVANCED SETUP - SAFE TO IGNORE!************************
  
  //Next you'll define the oversampling factor for the humidity measurements
  //Again, higher values mean less noise, but slower responses
  //If you don't want to measure humidity, set the oversampling to zero

  //0b000:      factor 0 (Disable humidity measurement)
  //0b001:      factor 1
  //0b010:      factor 2
  //0b011:      factor 4
  //0b100:      factor 8
  //0b101:      factor 16 (default value)
  
    bme280.parameter.humidOversampling = 0b101;            //Setup Humidity Oversampling

  //*********************************************************************
  //*************ADVANCED SETUP - SAFE TO IGNORE!************************
  
  //Now define the oversampling factor for the temperature measurements
  //You know now, higher values lead to less noise but slower measurements
  
  //0b000:      factor 0 (Disable temperature measurement)
  //0b001:      factor 1
  //0b010:      factor 2
  //0b011:      factor 4
  //0b100:      factor 8
  //0b101:      factor 16 (default value)

    bme280.parameter.tempOversampling = 0b101;             //Setup Temperature Ovesampling

  //*********************************************************************
  //*************ADVANCED SETUP - SAFE TO IGNORE!************************
  
  //Finally, define the oversampling factor for the pressure measurements
  //For altitude measurements a higher factor provides more stable values
  //On doubt, just leave it on default
  
  //0b000:      factor 0 (Disable pressure measurement)
  //0b001:      factor 1
  //0b010:      factor 2
  //0b011:      factor 4
  //0b100:      factor 8
  //0b101:      factor 16 (default value)
  
    bme280.parameter.pressOversampling = 0b101;            //Setup Pressure Oversampling 

  //*********************************************************************
  //*************ADVANCED SETUP - SAFE TO IGNORE!************************
  
  //For precise altitude measurements please put in the current pressure corrected for the sea level
  //On doubt, just leave the standard pressure as default (1013.25 hPa)
  
    bme280.parameter.pressureSeaLevel = 1013.25;           //default value of 1013.25 hPa

  //Now write here the current average temperature outside (yes, the outside temperature!)
  //You can either use the value in Celsius or in Fahrenheit, but only one of them (comment out the other value)
  //In order to calculate the altitude, this temperature is converted by the library into Kelvin
  //For slightly less precise altitude measurements, just leave the standard temperature as default (15°C)
  //Remember, leave one of the values here commented, and change the other one!
  //If both values are left commented, the default temperature of 15°C will be used
  //But if both values are left uncommented, then the value in Celsius will be used    
  
    bme280.parameter.tempOutsideCelsius = 15;              //default value of 15°C
  //bme280.parameter.tempOutsideFahrenheit = 59;           //default value of 59°F
    
  //*********************************************************************
  //*************ADVANCED SETUP IS OVER - LET'S CHECK THE CHIP ID!*******
  
  if (bme280.init() != 0x60){     
    Serial.println(F("Ops! BME280 could not be found!"));
    Serial.println(F("Please check your connections."));
    Serial.println();
    Serial.println(F("Troubleshooting Guide"));
    Serial.println(F("*************************************************************"));
    Serial.println(F("1. Let's check the basics: Are the VCC and GND pins connected correctly? If the BME280 is getting really hot, then the wires are crossed."));
    Serial.println();
    Serial.println(F("2. Are you using the I2C mode? Did you connect the SDI pin from your BME280 to the SDA line from the Arduino?"));
    Serial.println();
    Serial.println(F("3. And did you connect the SCK pin from the BME280 to the SCL line from your Arduino?"));
    Serial.println();
    Serial.println(F("4. Are you using the alternative I2C Address(0x76)? Did you remember to connect the SDO pin to GND?"));
    Serial.println();
    Serial.println(F("5. If you are using the default I2C Address (0x77), did you remember to leave the SDO pin unconnected?"));
    Serial.println();
    Serial.println(F("6. Are you using the SPI mode? Did you connect the Chip Select (CS) pin to the pin 10 of your Arduino (or to wherever pin you choosed)?"));
    Serial.println();
    Serial.println(F("7. Did you connect the SDI pin from the BME280 to the MOSI pin from your Arduino?"));
    Serial.println();
    Serial.println(F("8. Did you connect the SDO pin from the BME280 to the MISO pin from your Arduino?"));
    Serial.println();
    Serial.println(F("9. And finally, did you connect the SCK pin from the BME280 to the SCK pin from your Arduino?"));
    Serial.println();
    while(1);
  }
  else {
    Serial.println(F("BME280 detected!"));
  }
  Serial.println();
  Serial.println();

}