void setup() {
  Serial.begin(9600);
  Serial1.begin(9600);
}

void loop() {
  if(Serial1.available())
    rcvPacket();
}

byte rcvPacket(){
  
  byte x = Serial1.read();
  byte y;
  int len;
    
  if(x = 0x7E){
    while(!Serial1.available());
    x = Serial1.read();
    while(!Serial1.available());
    y = Serial1.read();
    
    len = (x << 8) | y;
  
    for(int i = 1;i <= len + 1; i++){
      while(!Serial1.available());
        x = Serial1.read();
      if(i >12 && i<=len){
        Serial.print(char(x));
      }
    }
    
  }
}
