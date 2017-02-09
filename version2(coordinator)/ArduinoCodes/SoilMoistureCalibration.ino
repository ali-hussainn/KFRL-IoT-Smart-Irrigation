int sensorPin = A0;    // select the input pin for the potentiometer
int ledPin = 13;      // select the pin for the LED
int sensorValue = 0;  // variable to store the value coming from the sensor

void setup() {
  // declare the ledPin as an OUTPUT:
  pinMode(ledPin, OUTPUT);
  Serial.begin(9600);
}

void loop() {
  // read the value from the sensor:
  sensorValue = analogRead(sensorPin);
  Serial.println("\n");
  
  Serial.println(sensorValue);
  
  delay(2000);
  Serial.println("Soil Moisture: ");
  if(sensorValue<=23)
   { sensorValue=sensorValue+23;
    sensorValue = ((sensorValue-23)/10);
  
   }  else
  sensorValue = ((sensorValue-23)/10);
  
  Serial.print(sensorValue);
  Serial.print("\n");
  // turn the ledPin off:
 // digitalWrite(ledPin, LOW);
  // stop the program for for <sensorValue> milliseconds:
  //delay(sensorValue);
}
