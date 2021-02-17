/*
 * Sense temperature and display in a seven segment display
 * Use DS18B20 for sensing temperature
 * MAX 7219 and LedControl.h library is used for displaying temperature
 */

 #include <OneWire.h>
 #include "LedControl.h"

// One wire communication is done through pin 2 of arduino
 OneWire ds(2); 

 // setup pin connections for max 7219      DATA, CLOCK, CS
 LedControl lc = LedControl(13,11,12,1);

 void setup(){
//  /Serial.begin(9600);
  // MAX7219 is in power-saving mode on startup, have to wakeup
  lc.shutdown(0,false);
  // set the brightness to a medium value
  lc.setIntensity(0,8);
  // clear the display
  lc.clearDisplay(0);
 }

 void loop(){
  byte addr[8];
  float celsius;
  byte type_s;
  byte present = 0;
  byte data[12];
  
  if(!ds.search(addr)){
//    Serial.println("No more addresses.");
//    Serial.println();
    // search for any more devices
    ds.reset_search();
    delay(250);
    return;
  }

  // check the CRC status of the data received using CRC check
  if(OneWire::crc8(addr, 7) != addr[7]){
//    /Serial.println("CRC is not valid!");
//    /Serial.println();
    return;
  }

  // check for the type of the device
  // first byte of the ROM indicates the type of the device
  switch(addr[0]){
    case 0x10:
//      /Serial.println(" Chip DS18S20");
      type_s = 1; 
      break;
    case 0x28:
//      /Serial.println(" Chip DS18B20");
      type_s = 0;
      break;
    case 0x22:
//      /Serial.println(" Chip DS1822");
      type_s = 0;
      break;
    default:
//      /Serial.println("Device is not a DS18_20 family device.");
      return;   
  }// end of switch statement

  // reset the device
  ds.reset();
  // select the device to read
  ds.select(addr);
  // start conversion of temperature by sending 0x44
  ds.write(0x44, 1);
  // give time for temperature conversion
  delay(1000);

  present = ds.reset();
  ds.select(addr);
  // read scratchpad
  ds.write(0xBE);

  for(int i=0; i<9; i++){
    // we need to read 9 bytes of data
    data[i] = ds.read();
  }

  // Convert data to temperature
  // copy dat to a 16 bit integer --> raw
  int16_t raw = (data[1] << 8) | data[0];
  // different conversion method for type_s and other types
  if(type_s){
    raw = raw << 3;
    if(data[7] == 0x10){
      // "count remain" gives full 12 bit resolution
      raw = (raw & 0xFFF0) + 12 - data[6];
    }
  }else{
    byte cfg = (data[4] & 0x60);
    // at lower resolution, the low bits are undefined, so zero them
    if(cfg == 0x00){
      raw = raw & ~7;
    }else if(cfg == 0x20){
      raw = raw & ~3;
    }else if(cfg == 0x40){
      raw = raw & ~1;
    }
  }

  celsius = (float)raw/16.0;
//  Serial.print("Temperature: ");
//  Serial.print(celsius);
//  Serial.print(" C");
//  Serial.println();

  // display to seven segment
  int ones, tens, hundreds;
  int temp = (int)celsius;
  ones = temp%10;
  tens = temp/10;
  if(tens>=9){
    tens %= 10;
  }
  hundreds = temp/100;
//  Serial.println();
//  Serial.print("ones: ");
//  Serial.print(ones);
//  Serial.print(", tens: ");
//  Serial.print(tens);
//  Serial.print(", hundreds: ");
//  Serial.print(hundreds);
//  Serial.println();
  // set ones
  lc.clearDisplay(0);
  lc.setDigit(0,2,ones,false);
  lc.setDigit(0,1,tens,false);
  if(hundreds > 0){
    lc.setDigit(0,0,hundreds,false);   
  }
  delay(2000);
 }
