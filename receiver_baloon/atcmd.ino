#define ATCMD     "AT"
#define ATECMDTRUE  "ATE"
#define ATECMDFALSE "ATE0"
#define OKSTR     "OK"
#define ERRORSTR  "ERROR"

bool ate = false;

void getArguments(String at_cmd, String *arguments){

  int i_from = 0, i_to = 0, i_arg = 0;
  bool f_exit = true;
  String sub;

  // find '=' sign
  i_from = at_cmd.indexOf('=');

  do{
    i_to = at_cmd.indexOf(',',i_from+1);
    if (i_to < 0){
    }
    else sub = at_cmd.substring(i_from+1,i_to);

    arguments[i_arg] = sub;
    i_from = i_to;
    i_arg += 1;

  } while(f_exit);

}

void getAtcommand(){

  String serial_line, command;
  int i_equals = 0;
    
  do{
     serial_line = Serial.readStringUntil('\r\n');
    }while(serial_line == "");
    serial_line.toUpperCase();
    serial_line.replace("\r","");

    // echo command if ate is set, default true
    if (ate) Serial.println(serial_line);

    // get characters before '='
    i_equals = serial_line.indexOf('=');
    if (i_equals == -1) command = serial_line;
    else command = serial_line.substring(0,i_equals);

    // Serial.println(command);
    
    if (command == ATCMD)
      Serial.println(OKSTR);
    else if (command == ATECMDTRUE){
      ate = true;
      Serial.println(OKSTR);
    }
    else if (command == ATECMDFALSE){
      ate = false;
      Serial.println(OKSTR);
    }
    else if (command == "AT+SETTS"){
      setupTime();
    }    
    else if (command == "AT+READTS"){
      readTimeStamp();
    }  
    else if (command == "AT+READTEMP"){
      // Serial.print("RTC Temperature: ");
      readTemp();
    }       
    else{
      Serial.println(ERRORSTR);
    }
}


void setupTime() {

	int MM = 0, DD = 0, YY = 0, hh = 0, mm = 0, ss = 0, dd = 0;

	Serial.println(F("\nSet time and date in this format: YY,MM,DD,hh,mm,ss,dd[0-6]Mon-Sun"));
	delay (2000);
	//2018,11,15,11,32,30,2
	while (!Serial.available()) {}
	if (Serial.available()) {
		YY = Serial.parseInt();
		MM  = Serial.parseInt();
		DD = Serial.parseInt();
		hh = Serial.parseInt();
		mm = Serial.parseInt();
		ss = Serial.parseInt();
		dd = Serial.parseInt();
	}

	adjustDate(YY, MM, DD, hh, mm, ss, dd);
	// Serial.print(F("Time now is: "));
	// Serial.println(Ctimestamp);		  	
	readTimeStamp();
}

void adjustDate(int year, int month, int date, int hour, int min, int sec, int weekday){
	DateTime dt(year, month, date, hour, min, sec, weekday);
	rtc.setDateTime(dt);	// adjust date-time as defined by 'dt'
	// Serial.println(rtc.now().getEpoch());	//debug info
}

void readTemp(){
	float temp;
	rtc.convertTemperature();
	temp = rtc.getTemperature();
	// Serial.print(rtc.getTemperature());
	dtostrf(temp, 5, 2, l_temp);
	Serial.print("RTC Temperature: ");
	Serial.println(l_temp);
}

void readTimeStamp(){
	// char timestamp[12];

	DateTime now = rtc.now(); //get the current date-time

	String ts = String(now.year());
	
	if (now.month() <= 9){
		ts += "0" + String(now.month());
	}else{
		ts += String(now.month());
	}

	if (now.date() <= 9){
		ts += "0" + String(now.date());
	}else{
		ts += String(now.date());
	}

	if (now.hour() <= 9){
		ts += "0" + String(now.hour());
	}else{
		ts += String(now.hour());
	}

	if (now.minute() <= 9){
		ts += "0" + String(now.minute());
	}else{
		ts += String(now.minute());
	}

	if (now.second() <= 9){
		ts += "0" + String(now.second());
	}else{
		ts += String(now.second());
	}
	ts.remove(0,2);	//remove 1st 2 data in ts
	// return(ts);	
	// Serial.println(ts);
	ts.toCharArray(Ctimestamp, 13);
	// Serial.println(Ctimestamp);


  	if (DEBUG == 1) {Serial.print("Timestamp: ");}
  	if (DEBUG == 1) {Serial.println(Ctimestamp);}
}