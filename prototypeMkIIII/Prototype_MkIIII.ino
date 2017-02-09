#include <DHT11.h>
#include <OneWire.h>
#include <DallasTemperature.h>
//#include <String.h>

#define START_DELIMITER 0x7E
#define FRAME_TYPE 0x10
#define OPTION 0x00
#define FRAME_ID 0x01
#define DEST_16_BIT_ADD_UPPER 0xFF
#define DEST_16_BIT_ADD_LOWER 0xFE
#define BROADCAST_RADIUS 0x00
#define HEADER_LENGTH 14
#define PACKET_LENGTH 50


///////

static float floatvar = 12345.67;
static char sprintfbuffer[15];
char dtostrfbuffer[15];
/////

byte s1 = 0, s2 = 0, ut = 0, at = 0, h = 0, f = 0, n = 0;

byte DEST_64_BIT_ADD[8] = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};


byte RF_DATA[12] = {'S', n, s1, s2, at, h, ut, f, 'E', 'N', 'D', 'I'};

// char RF_DATA[] = "ALI HUSSAIN";

//byte CHECK_SUM = 0xFF - ( 0xFF & (FRAME_TYPE + FRAME_ID + DEST_64_BIT_ADD[0] + DEST_64_BIT_ADD[1] + DEST_64_BIT_ADD[2] + DEST_64_BIT_ADD[3] + DEST_64_BIT_ADD[4] + DEST_64_BIT_ADD[5] + DEST_64_BIT_ADD[6] + DEST_64_BIT_ADD[7] + DEST_16_BIT_ADD_UPPER + DEST_16_BIT_ADD_LOWER + BROADCAST_RADIUS + OPTION + RF_DATA));

byte packet[PACKET_LENGTH] = {START_DELIMITER, 0, 0, FRAME_TYPE, FRAME_ID, DEST_64_BIT_ADD[0], DEST_64_BIT_ADD[1], DEST_64_BIT_ADD[2], DEST_64_BIT_ADD[3], DEST_64_BIT_ADD[4], DEST_64_BIT_ADD[5], DEST_64_BIT_ADD[6], DEST_64_BIT_ADD[7], DEST_16_BIT_ADD_UPPER, DEST_16_BIT_ADD_LOWER, BROADCAST_RADIUS, OPTION};


/////////////////PREVIOUS PROTOTYPE DECLARATIONS//////////////////////////////

// Pin assignments
#define SOIL_SENSOR1_PIN A0
#define SOIL_SENSOR2_PIN A2
#define FLOW_SENSOR 2
#define DHT11PIN 4
#define ONE_WIRE_BUS 8

// Wait time in seconds
#define WAIT_TIME 4

dht11 DHT11;
// Setup a oneWire instance to communicate with any OneWire devices
OneWire oneWire(ONE_WIRE_BUS);
// Pass our oneWire reference to Dallas Temperature.
DallasTemperature sensors(&oneWire);
// Address of the SPECIFIC DS1820 we're using
DeviceAddress sensorAddress = { 0x28, 0xFF, 0xF5, 0xA7, 0x3C, 0x04, 0x00, 0x4D };
volatile int pulses;
float Calc, litres, sum = 0, avg = 0;
int count = 0;
int avg_read_time = 10; // in seconds
int currentTime = 0;

void rpm ()     //interrupt handler
{
  pulses++;
}

void setup()
{ Serial.begin(9600);

  /////////////////////





  /////////////////////////----MKII----////////////////////////////


  //  Serial.println("Hope for the Best! v:)");

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
  // the following function takes 1 second to complete
  updateFlowSensorData();

  // Main logic to be written inside this if condition
  if (++currentTime == WAIT_TIME)
  {
    /*
     ===== Data Acquisition Section =====
     Some sensors take time to give their readings, so we
     perform the calculations and data gathering at once here.
    */

    // Flow Sensor
    avg = sum / count;
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
    //Serial.println("BEGIN");
    individualKitUpdate();
    // Moisture Sensors
//    Serial.print("Soil Moisture Level (one): ");
//    Serial.println(analogRead(SOIL_SENSOR1_PIN));
 
    s1 = analogRead(SOIL_SENSOR1_PIN) / 4;
    s2 = analogRead(SOIL_SENSOR2_PIN) / 4;

//     Serial.print("Soil Moisture Level (two): ");
//     Serial.println(analogRead(SOIL_SENSOR2_PIN));
    
    
    // Flow Sensor
    
    f = (byte) litres;
    //    Serial.print("Flow Data: "); Serial.println(litres);
    //extraDelay();
    // DHT11 Sensor
    switch (chk)
    {
      case DHTLIB_OK:
        //      Serial.print("Humidity (%): ");
        //      Serial.println((float)DHT11.humidity, 2);
        //     Serial.print("External Temperature (C): ");
        //      Serial.println((float)DHT11.temperature, 2);
        at = (byte) DHT11.temperature;
        h = (byte) DHT11.humidity;
        break;
      case DHTLIB_ERROR_CHECKSUM:
        //Serial.println("External temp sensor: Checksum error");
        break;
      case DHTLIB_ERROR_TIMEOUT:
        //Serial.println("External temp sensor: Time out error");
        break;
      default:
        //Serial.println("External temp sensor: Unknown error");
        break;
    }
    //extraDelay();
    // DS1820 Sensor
    if (tempC == -127.00)
    {
      //Serial.println("Error getting underground temperature");
    }
    else
    {
      //Serial.print("Underground Temperature (C): ");
      //Serial.println(tempC);

      ut = (byte) tempC;
    }
    //Serial.println("END");

    currentTime = 0;
    
    sendPacket();
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

void extendedDelay() {
  delay(4000);
}

void individualKitUpdate() {
  //Serial.println("Sensor ID: 1 ");

  n = 2;
}

void extraDelay() {
  delay(100);
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

void sendPacket() {
    
    RF_DATA[1] = n;
    RF_DATA[2] = s1;
    RF_DATA[3] = s2;
    RF_DATA[4] = at;
    RF_DATA[5] = h ;
    RF_DATA[6] = ut;
    RF_DATA[7] = f;
/////////////////////////////////
  for (int i = 0; i < (sizeof(RF_DATA)); i++)
  {
    packet[i + 17] = RF_DATA[i];
  }
////////////////////////////////
  updateLength(sizeof(RF_DATA));

  int len = (packet[1] << 8) | packet[2];
  for (int i = 0; i < len + 3; i++)
    Serial.write(packet[i]);

  Serial.write(calculateChecksum());
  
  
}

byte readPacket() {

  while (!Serial.available());
  byte x = Serial.read();
  byte y;
  int len;
  if (x == 0x7E) {
    while (!Serial.available());
    x = Serial.read();
    while (!Serial.available());
    y = Serial.read();
    len = (x << 8) | y;
    for (int i = 0; i <= len; i++) {
      while (!Serial.available());
      x = Serial.read();

      return 1;
    }
  }
  else {
    return 0;
  }
}

void updateLength(int lengthRF) {
  int newLength = lengthRF + HEADER_LENGTH;
  packet[2] = newLength & 0xFF;
  packet[1] = (newLength >> 8) & 0xFF;
}
