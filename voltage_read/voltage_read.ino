#define BATTERY_VOLTAGE_CHECK A0
#define BATTERY_CHARGING_CUTOFF 2
#define SOLAR_POWER A1
#define STATUS_LED_100 3
#define STATUS_LED_70 4
#define STATUS_LED_30 5
#define STATUS_LED_EMPTY 6
float volt, voltage, solar_power, solar;
void setup() {
  Serial.begin(9600);
  pinMode(BATTERY_VOLTAGE_CHECK, INPUT);
  pinMode(SOLAR_POWER, INPUT);
  pinMode(BATTERY_CHARGING_CUTOFF, OUTPUT);
  pinMode(STATUS_LED_100, OUTPUT);
  pinMode(STATUS_LED_70, OUTPUT);
  pinMode(STATUS_LED_30, OUTPUT);
  pinMode(STATUS_LED_EMPTY, OUTPUT);
}

void loop() {
  battery_voltage();
  
  battery_monitor();
  
  solar_voltage();  

  line_feed();
}

void battery_voltage(){
  voltage = analogRead(BATTERY_VOLTAGE_CHECK);
  volt = voltage * voltage_conversion();
  if(volt < 2.61){
    Serial.println("Battery voltage beyond limit or no supply detected!");
  }
  else{
    Serial.print("Battery voltage: ");
    Serial.println(volt);
  }
}

void battery_monitor(){
  if(volt > 3.20){
    Serial.println("Battery over charged!");
    Serial.println("Cutting off the supply!");
    
    if(solar < 2.61){
      digitalWrite(BATTERY_CHARGING_CUTOFF, LOW);
    }
    else{
      digitalWrite(BATTERY_CHARGING_CUTOFF, HIGH);
    }
  }
  else if(3.20 >= volt && volt>= 3.14){
    Serial.println("Battery 100% charged!");
    digitalWrite(STATUS_LED_100, HIGH);
  }
  else if(3.15 >= volt && volt >= 3.12){
    Serial.println("Battery 90% charged!");
  }
  else if(3.11 >= volt && volt >= 3.09){
    Serial.println("Battery 80% charged!");
  }
  else if(3.08 >= volt && volt >= 3.06){
    Serial.println("Battery 70% charged!");
    digitalWrite(STATUS_LED_70, HIGH);
  }
  else if(3.05 >= volt && volt >= 3.03){
    Serial.println("Battery 60% charged!");
  }
  else if(3.04 >= volt && volt >= 2.99){
    Serial.println("Battery 50% charged!");
  }
  else if(2.98 >= volt && volt >= 2.95){
    Serial.println("Battery 40% charged!");
  }
  else if(2.94 >= volt && volt >= 2.91){
    Serial.println("Battery 30% charged!");
    digitalWrite(STATUS_LED_30, HIGH);
  }
  else if(2.90 >= volt && volt >= 2.89){
    Serial.println("Battery 20% charged!");
  }
  else if(2.88 >= volt && volt >= 2.83){
    Serial.println("Battery 10% charged!");
  }
  else if(2.84 >= volt && volt >= 2.61){
    Serial.println("Battery empty!");
    digitalWrite(STATUS_LED_EMPTY, HIGH);
  }
}

void solar_voltage(){
  solar_power = analogRead(SOLAR_POWER);
  solar = solar_power * voltage_conversion();
  if(solar < 2.61){
    Serial.println("Solar voltage beyond limit or no supply detected!");
  }
  else{
    Serial.print("Solar voltage: ");
    Serial.println(solar);
  }
}

void line_feed(){
  delay (2000);
  Serial.println();
  Serial.flush();
}

float voltage_conversion(){
  return (5.0/1023.0);
}
