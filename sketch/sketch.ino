#include "inv_kinematics.h"

//Pin number definition
#define F_DIR 5
#define F_PWM 7
#define F_SENSOR A2
#define F_LINK_LENGTH 10
#define B_DIR 4
#define B_PWM 6
#define B_SENSOR A0
#define B_LINK_LENGTH 10

#define FILTER_SIZE 10
//Controller class definition
class Controller {
  public:
  float kp, ki, kd, tol, e = 0, E = 0, e_p = 0;
  Controller(float kp_ = 0, float ki_ = 0, float kd_ = 0, float tol_ = 1) {
    kp = kp_;
    ki = ki_;
    kd = kd_;
    tol = tol_;
  }
  float pid(float setpoint, float process_value) {
    e = setpoint - process_value;
    E += e;
    float e_d = e - e_p;
    e_p = e;
    return (kp*e+ki*E+kd*e_d);
  }
  bool within_tolerance(float setpoint, float process_value) {
    float e_ = setpoint - process_value;
    if(abs(e_) <= tol) {
       return true;
    } else{ 
      return false;
    }
  }
  void reset() {
     kp = 0;
     ki = 0;
     kd = 0;
     tol = 0;
     e = 0;
     E = 0;
     e_p = 0;
  }
};

//Distance sensor class definition
class DistanceSensor {
  public:
  uint8_t pin, offset, i = 0;
  bool first_run = true;
  float filter_readings[FILTER_SIZE] = {0}, sum = 0;
  DistanceSensor(uint8_t pin_, int offset_) {
    pin = pin_;
    offset = offset_;
  }
  float read() {
    sum = sum - filter_readings[i];
    filter_readings[i] = (1/(0.00046*analogRead(pin)) + offset);
    sum = sum + filter_readings[i];
    i++;
    if(i%10 == 0) { i = 0; first_run = false; }
    return (first_run ? (sum/i) : (sum/FILTER_SIZE));
  }
};

//Motor move function
void move(int dir_pin, int pwm_pin, int pwm) {
  if(pwm > 255) {
    pwm = 255;
  } else if (pwm < -255) {
    pwm = -255;
  }
  analogWrite(pwm_pin, abs(pwm));
  if(pwm < 0) {
    digitalWrite(dir_pin, HIGH);
  } else {
    digitalWrite(dir_pin, LOW);    
  }
}

int f_out = 0, b_out = 0;
float f_setpoint = 20, b_setpoint = 25;
Controller f_control(20,0,0,1), b_control(0,0,0,1);
DistanceSensor f_sensor(F_SENSOR, 10), b_sensor(B_SENSOR, 10);
InverseKinematics myInvKin(F_LINK_LENGTH,B_LINK_LENGTH);

//Setup pins
void setup() {
  Serial.begin(9600);
//  while(!Serial);
  Serial.println("Intialization");
  analogReadResolution(8);
  pinMode(F_DIR,OUTPUT);
  pinMode(F_PWM,OUTPUT);
  pinMode(B_DIR,OUTPUT);
  pinMode(B_PWM,OUTPUT);
}

void loop() {
  Serial.print("Front: "); Serial.print(f_sensor.read()); Serial.print(": PWM: "); Serial.print(f_out); 
  Serial.print(" Rear: "); Serial.print(b_sensor.read()); Serial.print(": PWM: "); Serial.println(b_out); 
  if(!f_control.within_tolerance(f_setpoint,f_sensor.read())) {                       //Check if error is within tolerance
  delay(10);
    f_out = f_control.pid(f_setpoint,f_sensor.read());      //If not, compute PID output
  } else {
    f_out = 0;                                              //No output if within tolerance
  }
  if(!b_control.within_tolerance(b_setpoint,b_sensor.read())) {                       //Same proced ure for back arm              
    b_out = b_control.pid(b_setpoint,b_sensor.read());
  } else {
    b_out = 0;
  }
  move(F_DIR, F_PWM, f_out);                                //Send direction and pwm signals
  move(B_DIR, B_PWM, b_out);  
}
void serialEvent() {
  String inputString = "";
  while (Serial.available()) {
    char inChar = (char)Serial.read();
    inputString += inChar;
  }
  if(inputString == "f +") {
    f_control.kp += 5;
    Serial.println(f_control.kp);
  } else if(inputString == "f -") {
    f_control.kp -= 5;
    if(f_control.kp < 0) f_control.kp = 0;
    Serial.println(f_control.kp);
  } else if (inputString == "b +") {
    b_control.kp += 5;
    Serial.println(b_control.kp);
  } else if (inputString == "b -") {
    b_control.kp -= 5;
    if(b_control.kp < 0) b_control.kp = 0;
    Serial.println(b_control.kp);    
  } else {
    Serial.println("Invalid data");
  }
}


