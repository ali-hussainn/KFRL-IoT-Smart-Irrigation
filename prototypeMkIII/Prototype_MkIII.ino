


// the setup function runs once when you press reset or power the board
//void setup() {
  // initialize digital pin 13 as an output.
 // pinMode(13, OUTPUT);
//  pinMode(11, OUTPUT);
 // pinMode(3, INPUT);
//

// the loop function runs over and over again forever
//void loop() {
//  digitalWrite(2, HIGH);
//  delay(2000);
//  
//  digitalWrite(2, LOW);
//  
//  delay(2000);
//int a=digitalRead(3);
//if(a)
//  digitalWrite(13, HIGH);   // turn the LED on (HIGH is the voltage level)
//              // wait for a second
////  digitalWrite(13, LOW);    // turn the LED off by making the voltage LOW
////delay(1000);              // wait for a second
//}


#include <DHT11.h>
#include <OneWire.h>
#include <DallasTemperature.h>

// Pin assignments
#define SOIL_SENSOR1_PIN A0
#define SOIL_SENSOR2_PIN A2
#define FLOW_SENSOR 2
#define DHT11PIN 4
#define ONE_WIRE_BUS 8

// Packet format descriptors
#define HEADER           'A'
#define TAILER           'Z'

#define STARTING_POS     0
#define NODE_ID_POS      1
#define SOIL1_POS        2
#define SOIL2_POS        4
#define FLOW_POS         6
#define HUMIDITY_POS     8
#define EXT_TEMP_POS     10
#define UND_TEMP_POS     12
#define TAILER_POS       14

#define PACKET_SIZE      15

// Wait time in seconds
#define WAIT_TIME 3

dht11 DHT11;
// Setup a oneWire instance to communicate with any OneWire devices
OneWire oneWire(ONE_WIRE_BUS);
// Pass our oneWire reference to Dallas Temperature. 
DallasTemperature sensors(&oneWire);
// Address of the SPECIFIC DS1820 we're using
DeviceAddress sensorAddress = { 0x28, 0xFF, 0xF5, 0xA7, 0x3C, 0x04, 0x00, 0x4D };
volatile int pulses;
float Calc, litres,sum = 0, avg = 0;
int count = 0;
int avg_read_time = 10; // in seconds
int currentTime = 0;
byte packet[PACKET_SIZE];

void rpm ()     //interrupt handler
{ 
  pulses++;  
} 

void setup()
{
  Serial.begin(9600);
  pinMode(FLOW_SENSOR, INPUT);
  
  pinMode(A1, OUTPUT);
  pinMode(A3, OUTPUT);
  pinMode(3, OUTPUT);
  pinMode(5, OUTPUT);
  pinMode(9, OUTPUT);
   pinMode(11, OUTPUT);
  attachInterrupt(0, rpm, RISING);
  // Start up the library
  sensors.begin();
  // set the resolution to 10 bit (good enough?)
  sensors.setResolution(sensorAddress, 10);
  
  analogWrite(A1, HIGH);
  analogWrite(A3, HIGH);
  digitalWrite(3, HIGH);
  digitalWrite(5, HIGH);
  digitalWrite(9, HIGH);
  digitalWrite(11, HIGH);
  
  packet[STARTING_POS] = HEADER;
  packet[TAILER_POS] = TAILER;
  packet[NODE_ID_POS] = 0x01;
  
//  Serial.println("Guten tag. Ich bin hier!");
}

void loop()
{ 
  
  //digitalWrite(11, HIGH);
  updateFlowSensorData();
  
  if (++currentTime == WAIT_TIME)
  {
    /*
     ===== Data Acquisition Section =====
     Some sensors take time to give their readings, so we
     perform the calculations and data gathering at once here.
    */
    
    // Flow Sensor
    avg = sum/count;
    litres = avg * 60;
    sum = 0;
    count = 0;
    
    // DHT11 Sensor
    int chk = DHT11.read(DHT11PIN);
  
    // DS1820 Sensor
    sensors.requestTemperatures();
    float tempC = sensors.getTempC(sensorAddress);
    
    /*
     ===== Data Transmission Section =====
     This section simply involves sending the data
     to the recipient.
    */
//    extendedDelay();
//    Serial.println("BEGIN");
    
    // Moisture Sensors
    //Serial.print("Soil Moisture Level (one): "); 
//    Serial.println(analogRead(SOIL_SENSOR1_PIN));
    //Serial.print("Soil Moisture Level (two): "); 
//    Serial.println(analogRead(SOIL_SENSOR2_PIN));

    int reading = analogRead(SOIL_SENSOR1_PIN);
    packet[SOIL1_POS] = reading >> 8;
    packet[SOIL1_POS + 1] = reading & 0xFF;
    
    reading = analogRead(SOIL_SENSOR2_PIN);
    packet[SOIL2_POS] = reading >> 8;
    packet[SOIL2_POS + 1] = reading & 0xFF;

    // Flow Sensor
//    Serial.print("Flow Data: "); Serial.println(litres);
    reading = (int) litres;
    packet[FLOW_POS] = (reading >> 8) & 0xFF;
    packet[FLOW_POS + 1] = (reading) & 0xFF;
    
    // Clear all the previous data
    reading = (int) 0;
    packet[HUMIDITY_POS] = (reading >> 8) & 0xFF;
    packet[HUMIDITY_POS + 1] = (reading) & 0xFF;
    
    packet[EXT_TEMP_POS] = (reading >> 8) & 0xFF;
    packet[EXT_TEMP_POS + 1] = (reading) & 0xFF;
    
    // DHT11 Sensor
    switch (chk)
    {
    case DHTLIB_OK: 
//      Serial.print("Humidity (%): "); 
//      Serial.println((float)DHT11.humidity, 2);
      reading = (int) DHT11.humidity;
      packet[HUMIDITY_POS] = (reading >> 8) & 0xFF;
      packet[HUMIDITY_POS + 1] = (reading) & 0xFF;
      
//      Serial.print("External Temperature (C): ");
//      Serial.println((float)DHT11.temperature, 2);
      reading = (int)DHT11.humidity;
      packet[EXT_TEMP_POS] = (reading >> 8) & 0xFF;
      packet[EXT_TEMP_POS + 1] = (reading) & 0xFF;
      break;
      
    case DHTLIB_ERROR_CHECKSUM: 
//      Serial.println("External temp sensor: Checksum error");
      reading = (int) 200;
      packet[EXT_TEMP_POS] = (reading >> 8) & 0xFF;
      packet[EXT_TEMP_POS + 1] = (reading) & 0xFF;
      break;
      
    case DHTLIB_ERROR_TIMEOUT: 
//      Serial.println("External temp sensor: Time out error"); 
      reading = (int) 201;
      packet[EXT_TEMP_POS] = (reading >> 8) & 0xFF;
      packet[EXT_TEMP_POS + 1] = (reading) & 0xFF;
      break;
      
    default: 
//      Serial.println("External temp sensor: Unknown error"); 
      reading = (int) 202;
      packet[EXT_TEMP_POS] = (reading >> 8) & 0xFF;
      packet[EXT_TEMP_POS + 1] = (reading) & 0xFF;
      break;
    }
    
    // DS1820 Sensor
//    if (tempC == -127.00) 
//    {
//      Serial.println("Error getting underground temperature");
//    }
//    else 
//    {
//      Serial.print("Underground Temperature (C): ");
//      Serial.println(tempC);
//    }

    reading = (int) tempC;
    packet[UND_TEMP_POS] = (reading >> 8) & 0xFF;
    packet[UND_TEMP_POS + 1] = (reading) & 0xFF;

//    individualKitUpdate();
    
//    Serial.println("Guten tag. Hier ist das data!");
    
    Serial.write(packet, PACKET_SIZE);
    Serial.flush();
    
    currentTime = 0;
  }
}

void updateFlowSensorData()
{
  cli();
  pulses = 0;
  attachInterrupt(0, rpm, RISING);
  sei();            //Enables interrupts
  delay (1000);
  cli();      //Disable interrupts
  detachInterrupt(0);
  count++;
  Calc = (pulses / 7.5); // (Pulse frequency ) / 7.5 = flow rate in L/minute
  sum += Calc;
  sei();
}

void extendedDelay(){
   delay(4000);
}

void individualKitUpdate(){
    Serial.println("SENSOR ID 'ONE' ");
}

void extraDelay(){
   delay(100); 
}
