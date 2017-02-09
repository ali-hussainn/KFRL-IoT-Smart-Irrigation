//#include <SoftwareSerial.h>

#define START_DELIMITER 0x7E
#define FRAME_TYPE 0x10
#define OPTION 0x00
#define FRAME_ID 0x01
#define DEST_16_BIT_ADD_UPPER 0xFF
#define DEST_16_BIT_ADD_LOWER 0xFE
#define BROADCAST_RADIUS 0x00 
#define HEADER_LENGTH 14
#define PACKET_LENGTH 200


  byte DEST_64_BIT_ADD[8]={0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00};
  
  char RF_DATA[] = "ALI\n";
  
  //byte CHECK_SUM = 0xFF - ( 0xFF & (FRAME_TYPE + FRAME_ID + DEST_64_BIT_ADD[0] + DEST_64_BIT_ADD[1] + DEST_64_BIT_ADD[2] + DEST_64_BIT_ADD[3] + DEST_64_BIT_ADD[4] + DEST_64_BIT_ADD[5] + DEST_64_BIT_ADD[6] + DEST_64_BIT_ADD[7] + DEST_16_BIT_ADD_UPPER + DEST_16_BIT_ADD_LOWER + BROADCAST_RADIUS + OPTION + RF_DATA));
  
  byte packet[PACKET_LENGTH] = {START_DELIMITER, 0,0, FRAME_TYPE, FRAME_ID, DEST_64_BIT_ADD[0], DEST_64_BIT_ADD[1], DEST_64_BIT_ADD[2], DEST_64_BIT_ADD[3], DEST_64_BIT_ADD[4], DEST_64_BIT_ADD[5], DEST_64_BIT_ADD[6], DEST_64_BIT_ADD[7], DEST_16_BIT_ADD_UPPER, DEST_16_BIT_ADD_LOWER, BROADCAST_RADIUS, OPTION};
void setup(){
  Serial.begin(9600);
  for(int i=0;i<(sizeof(RF_DATA)-1);i++)
  {
    packet[i+17] = RF_DATA[i];
  }
  
  
  //sendPacket();  
}

void loop(){
//  if(Serial.available()){
//    if(readPacket())
    sendPacket();
    
    delay(2000);
//  }
  
   
}

byte calculateChecksum()
{
  byte checksum = 0;
  
  int len = (packet[1] << 8) | packet[2];

  for (int idx = 0; idx < len; idx++)
    checksum += packet[idx + 3];
  
  checksum = 0xFF - checksum;
  
  return byte(checksum);
}

void sendPacket(){
  updateLength(sizeof(RF_DATA) - 1);

  int len = (packet[1]<<8)|packet[2];
  for(int i=0; i < len + 3; i++)
  Serial.write(packet[i]);
  
  Serial.write(calculateChecksum());
}

byte readPacket(){
  
  while(!Serial.available());
  byte x= Serial.read();
  byte y;
  int len;
  if(x==0x7E){
    while(!Serial.available());
    x=Serial.read();
    while(!Serial.available());
    y=Serial.read();
    len = (x << 8) | y;
    for(int i=0;i<=len;i++){
      while(!Serial.available());
      x=Serial.read();

      return 1;
    }
  }
  else{
    return 0;
  }
}

void updateLength(int lengthRF){
   int newLength = lengthRF + HEADER_LENGTH;
   packet[2] = newLength & 0xFF;
   packet[1] = (newLength >> 8) & 0xFF; 
}
