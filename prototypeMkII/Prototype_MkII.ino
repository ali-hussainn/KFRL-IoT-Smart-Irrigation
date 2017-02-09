#include <DHT11.h>
#include <OneWire.h>
#include <DallasTemperature.h>

// Pin assignments
#define SOIL_SENSOR1_PIN A0
#define SOIL_SENSOR2_PIN A2
#define FLOW_SENSOR 2
#define DHT11PIN 4
#define ONE_WIRE_BUS 8

// Wait time in seconds
#define WAIT_TIME 2

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

void rpm ()     //interrupt handler
{ 
  pulses++;  
} 

void setup()
{ Serial.begin(9600);
  Serial.println("Hope for the Best! v:)");
  
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
                                                           extendedDelay();
    Serial.println("BEGIN");
    individualKitUpdate();
    // Moisture Sensors
    Serial.print("Soil Moisture Level (one): "); 
    Serial.println(analogRead(SOIL_SENSOR1_PIN));
    Serial.print("Soil Moisture Level (two): "); 
    Serial.println(analogRead(SOIL_SENSOR2_PIN));

    // Flow Sensor
    Serial.print("Flow Data: "); Serial.println(litres);
                                                            //extraDelay();
    // DHT11 Sensor
    switch (chk)
    {
    case DHTLIB_OK: 
      Serial.print("Humidity (%): "); 
      Serial.println((float)DHT11.humidity, 2);
      Serial.print("External Temperature (C): "); 
      Serial.println((float)DHT11.temperature, 2); 
      break;
    case DHTLIB_ERROR_CHECKSUM: 
      Serial.println("External temp sensor: Checksum error"); 
      break;
    case DHTLIB_ERROR_TIMEOUT: 
      Serial.println("External temp sensor: Time out error"); 
      break;
    default: 
      Serial.println("External temp sensor: Unknown error"); 
      break;
    }
                                                              //extraDelay();
    // DS1820 Sensor
    if (tempC == -127.00) 
    {
      Serial.println("Error getting underground temperature");
    }
    else 
    {
      Serial.print("Underground Temperature (C): ");
      Serial.println(tempC);
    }
    Serial.println("END");
    
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
    Serial.println("Sensor ID: 2 ");
}

void extraDelay(){
   delay(100); 
}
