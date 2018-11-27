// Test code for Adafruit GPS modules using MTK3329/MTK3339 driver
//
// This code shows how to listen to the GPS module in an interrupt
// which allows the program to have more 'freedom' - just parse
// when a new NMEA sentence is available! Then access data when
// desired.
//
// Tested and works great with the Adafruit Ultimate GPS module
// using MTK33x9 chipset
//    ------> http://www.adafruit.com/products/746
// Pick one up today at the Adafruit electronics shop 
// and help support open source hardware & software! 

// Set GPSECHO to 'false' to turn off echoing the GPS data to the Serial console
// Set to 'true' if you want to debug and listen to the raw GPS sentences. 
#define GPSECHO  false
#define TOFFSET 8   //timezone offset +GMT0800
#define GPSBAUD 9600   //default 9600

// this keeps track of whether we're using the interrupt
boolean usingInterrupt = false;   // off by default!

void useInterrupt(boolean);       // Func prototype keeps Arduino 0023 happy

#ifdef __AVR__
// Interrupt is called once a millisecond, looks for any new GPS data, and stores it
SIGNAL(TIMER0_COMPA_vect) {
  char c = GPS.read();
    // if you want to debug, this is a good time to do it!
  #ifdef UDR0
    if (GPSECHO)
      if (c) UDR0 = c;  
      // writing direct to UDR0 is much much faster than Serial.print 
      // but only one character can be written at a time. 
  #endif
}

void useInterrupt(boolean v) {
  if (v) {
    // Timer0 is already used for millis() - we'll just interrupt somewhere
    // in the middle and call the "Compare A" function above
    OCR0A = 0xAF;
    TIMSK0 |= _BV(OCIE0A);
    usingInterrupt = true;
  } else {
    // do not call the interrupt function COMPA anymore
    TIMSK0 &= ~_BV(OCIE0A);
    usingInterrupt = false;
  }
}
#endif //#ifdef__AVR__

void init_gps(){
  // 9600 NMEA is the default baud rate for Adafruit MTK GPS's- some use 4800
  GPS.begin(GPSBAUD);
  delay(1000);
  GPSPORT.begin(GPSBAUD);
  delay(1000);

  // uncomment this line to turn on RMC (recommended minimum) and GGA (fix data) including altitude
  GPS.sendCommand(PMTK_SET_NMEA_OUTPUT_RMCGGA);
  // uncomment this line to turn on only the "minimum recommended" data
  //GPS.sendCommand(PMTK_SET_NMEA_OUTPUT_RMCONLY);
  // For parsing data, we don't suggest using anything but either RMC only or RMC+GGA since
  // the parser doesn't care about other sentences at this time
  
  // Set the update rate
  GPS.sendCommand(PMTK_SET_NMEA_UPDATE_1HZ);   // 1 Hz update rate
  // For the parsing code to work nicely and have time to sort thru the data, and
  // print it out we don't suggest using anything higher than 1 Hz

  // Request updates on antenna status, comment out to keep quiet
  //GPS.sendCommand(PGCMD_ANTENNA);

  // the nice thing about this code is you can have a timer0 interrupt go off
  // every 1 millisecond, and read data from the GPS for you. that makes the
  // loop code a heck of a lot easier!

  #ifdef __arm__
    usingInterrupt = false;  //NOTE - we don't want to use interrupts on the Due
  #else
    useInterrupt(true);
  #endif

  delay(1000);

  // Ask for firmware version
  GPSPORT.println(PMTK_Q_RELEASE);
}

uint32_t timer = millis();

void read_gps_data(){
  // in case you are not using the interrupt above, you'll
  // need to 'hand query' the GPS, not suggested :(

  if (! usingInterrupt) {
    // read data from the GPS in the 'main loop'
    char c = GPS.read();
    // if you want to debug, this is a good time to do it!
    if (GPSECHO)
      if (c) Serial.print(c);
  }
  
  // if a sentence is received, we can check the checksum, parse it...
  if (GPS.newNMEAreceived()) {
    // a tricky thing here is if we print the NMEA sentence, or data
    // we end up not listening and catching other sentences! 
    // so be very wary if using OUTPUT_ALLDATA and trytng to print out data
    //Serial.println(GPS.lastNMEA());   // this also sets the newNMEAreceived() flag to false
  
    if (!GPS.parse(GPS.lastNMEA()))   // this also sets the newNMEAreceived() flag to false
      return;  // we can fail to parse a sentence in which case we should just wait for another
  }

  // if millis() or timer wraps around, we'll just reset it
  if (timer > millis())  timer = millis();

  // approximately every 1 second or so, print out the current stats
  if (millis() - timer > 1000) { 
    timer = millis(); // reset the timer
    
    print_gps();

    convert_gps_rtc();
    read_coordinates();

    read_bme280();
    // read_current();
    // read_voltage();
    build_message();
    send_thru_lora(temp);
  }  
}

void print_gps(){
    Serial.print("\nTime: ");
    Serial.print((GPS.hour ), DEC); Serial.print(':');
    Serial.print(GPS.minute, DEC); Serial.print(':');
    Serial.print(GPS.seconds, DEC); Serial.print('.');
    Serial.println(GPS.milliseconds);
    Serial.print("Date: ");
    Serial.print(GPS.day, DEC); Serial.print('/');
    Serial.print(GPS.month, DEC); Serial.print("/20");
    Serial.println(GPS.year, DEC);
   
    Serial.print("Fix: "); Serial.print((int)GPS.fix);
    Serial.print(" quality: "); Serial.println((int)GPS.fixquality);   
}

void read_coordinates(){
  float glatitude = 0, glongitude = 0, galtitude = 0, gspeed = 0, gsat = 0, gangle = 0;

  if(GPS.fix){
    glatitude = conv_coords(GPS.latitude);    dtostrf(glatitude, 3, 5, gps_latitude);
    glongitude = conv_coords(GPS.longitude);  dtostrf(glongitude, 3, 5, gps_longitude);
    galtitude = (GPS.altitude);               dtostrf(galtitude, 3, DECIMAL, gps_altitude);
    gspeed = (GPS.speed);                     dtostrf(gspeed, 4, DECIMAL, gps_speed);
    gsat = ((int)GPS.satellites);             dtostrf(gangle, 4, DECIMAL, gps_angle);
    gangle = (GPS.angle);

    Serial.print("Location: ");
    Serial.print(gps_latitude); 
    Serial.print(", "); 
    Serial.println(gps_longitude); 
    Serial.print("Speed (knots): "); Serial.println(gspeed);
    Serial.print("Angle: "); Serial.println(gangle);
    Serial.print("Altitude: "); Serial.println(galtitude);
    Serial.print("Satellites: "); Serial.println(gsat);
    Serial.println("----------------------------------");   
    // read_bme280();
  }
}

void convert_gps_rtc(){	//convert timestamp tp YYMMDDSS format

	String ts = String(GPS.year);

	if((GPS.month) <= 9){
		ts += '0' + String(GPS.month);
	}else{ ts += String(GPS.month); }

	if((GPS.day) <= 9){
		ts += '0' + String(GPS.day);
	}else{ ts += String(GPS.day); }

	if((GPS.hour + TOFFSET) > 23){
		ts += '0' + String((GPS.hour + TOFFSET)-24);
	}else if((GPS.hour + TOFFSET) < 10){
    ts += '0' + String(GPS.hour + TOFFSET);
  }
  else{ ts += String(GPS.hour + TOFFSET); }

	if((GPS.minute) <= 9){
		ts += '0'+ String(GPS.minute);
	}else{ ts += String(GPS.minute); }

	if((GPS.seconds) <= 9){
		ts += '0' + String(GPS.seconds);
	}else{ ts += String(GPS.seconds); }

	Serial.print("Timestamp: ");	Serial.print(ts);	Serial.println("");
	ts.toCharArray(gpstimestamp, 13);

  	//if (DEBUG == 1) {Serial.print("Timestamp: ");} if (DEBUG == 1) {Serial.println(gpstimestamp);}	
}

float conv_coords(float in_coords){
 //Initialize the location.
 float f = in_coords;
 // Get the first two digits by turning f into an integer, then doing an integer divide by 100;
 // firsttowdigits should be 77 at this point.
 int firsttwodigits = ((int)f)/100; //This assumes that f < 10000.

 float nexttwodigits = f - (float)(firsttwodigits*100);
 float theFinalAnswer = (float)(firsttwodigits + nexttwodigits/60.0);

 return theFinalAnswer;
 }