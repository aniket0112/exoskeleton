#include "inv_kinematics.h"
#include "limit.h"

//Pin number definition
#define F_DIR         5
#define F_PWM         7
#define F_SENSOR      A2
#define B_DIR         4
#define B_PWM         6
#define B_SENSOR      A0
#define JOYSTICK_X    A7
#define JOYSTICK_Y    A6
#define SELECT        
#define E(x)          pow(10,x)

#define COMPENSATION_X 30.69
#define FILTER_SIZE 10
float x = 42, y = -30;
bool motor_enable = true, limit = false;
int f_out = 0, b_out = 0;
float f_setpoint = 0, b_setpoint = 0;

class Controller {                                                                                          //Controller class definition
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

class DistanceSensor {                                                                                //Distance sensor class definition
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

struct jointAngle joint_angle;
struct manipulator myManipulator {17, 29, 42, 20, 20, 20};
struct pistonLength piston_length;

Controller f_control(35,0,0,0.5), b_control(35,0,0,0.5);
DistanceSensor f_sensor(F_SENSOR, 10), b_sensor(B_SENSOR, 10);
Limit Red(-4.52849847*E(-05),-1.64524233*E(-02),-7.97494366*E(-01),4.29108690*E(01));
Limit Green(2.73863348*E(-03),-8.69626948*E(-02),1.33566794,-7.05966414*E(01));
Limit Blue(2.97330832*E(-02),-3.08756571*E(00),1.07956357*E(02),-1.29453178*E(03));
Limit Yellow(6.54441420*E(-05),4.80666575*E(-03),3.15225269*E(-02),-6.80958167*E(01));
InverseKinematics myInvKin(myManipulator);


void move(int dir_pin, int pwm_pin, int pwm) {                                                          //Motor run function
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

bool write_limit(float x, float y, InverseKinematics myInvKin) {
  struct jointAngle joint_angle = myInvKin.getJointAngle(x,y);
  struct pistonLength piston_length;
  piston_length = myInvKin.getPistonLength(joint_angle, myManipulator);
  float f_setpoint = piston_length.front;
  float b_setpoint = piston_length.rear;
  if (f_setpoint > 36) return false;
  if (f_setpoint < 23) return false;
  if (b_setpoint > 30) return false;
  if (b_setpoint < 21) return false;
  return true;
}

void read_joystick() {                                                                                  //Read analog values from Joystick
  float a_x = analogRead(JOYSTICK_X);  
  float a_y = analogRead(JOYSTICK_Y);
  if(a_x > 160) {
    limit = write_limit(x+0.5,y,myInvKin);
    if(limit) x+=0.5;
  } else if (a_x < 100) {
    limit = write_limit(x-0.5,y,myInvKin);
    if(limit) x-=0.5;
  }  
  if(a_y < 100) {
    limit = write_limit(x,y+0.5,myInvKin);
    if(limit) y+=0.5;
  } else if(a_y > 160) {
    limit = write_limit(x,y-0.5,myInvKin);
    if(limit) y-=0.5;
  }

  if(x < 0) x = 0;                                                                                     //Third quadrant operation
  if (y > 0) y = 0;
}

//Setup pins
void setup() {
  Serial.begin(9600);
  Serial.println("Intialization");
  analogReadResolution(8);
  pinMode(F_DIR,OUTPUT);
  pinMode(F_PWM,OUTPUT);
  pinMode(B_DIR,OUTPUT);
  pinMode(B_PWM,OUTPUT);
}

void loop() {
  read_joystick();                                                                      //Analog read joystick x y pins  
  if(limit) joint_angle = myInvKin.getJointAngle(x,y);                                            //Convert Cartesian coordinates to joint angles
  Serial.print("Limit:"); Serial.print(limit); Serial.print("\t"); Serial.print(x); Serial.print("\t"); Serial.print(y);
  Serial.print("\t"); Serial.print(joint_angle.front_angle); Serial.print("\t"); Serial.print(joint_angle.rear_angle);
  Serial.print("\t"); Serial.print("F: "); Serial.print(f_sensor.read());
  Serial.print("\t"); Serial.print(" R: "); Serial.print(b_sensor.read());
  if(limit) {
    piston_length = myInvKin.getPistonLength(joint_angle, myManipulator);
    f_setpoint = piston_length.front;
    b_setpoint = piston_length.rear;
    Serial.print("\t"); Serial.print(piston_length.front); Serial.print("\t"); Serial.print(piston_length.rear);
    
  }
  f_out = f_control.pid(f_setpoint,f_sensor.read())*(1 - f_control.within_tolerance(f_setpoint,f_sensor.read()));                                //If not, compute PID output
  b_out = b_control.pid(b_setpoint,b_sensor.read())*(1-b_control.within_tolerance(b_setpoint,b_sensor.read()));
  if(motor_enable) {   
    move(F_DIR, F_PWM, f_out);                                                      //Send direction and pwm signals  
    move(B_DIR, B_PWM, b_out);  
  } else {
    move(F_DIR, F_PWM, 0);                                                          //Send direction and pwm signals  
    move(B_DIR, B_PWM, 0);  
  } 
  Serial.println("");
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
  } else if (inputString == "s") {
    motor_enable = false;
    Serial.println("Motor disabled");
  } else if (inputString == "g") {
    motor_enable = true;
    Serial.println("Motor enabled");
  } else {
    Serial.println("Invalid data");
  }
}


