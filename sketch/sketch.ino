//Pin number definition
#define F_DIR 0
#define F_PWM 0
#define F_SENSOR A0
#define B_DIR 0
#define B_PWM 0
#define B_SENSOR A2

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
  bool within_tolerance() {
    if(abs(e) <= tol) {
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
  uint8_t pin, offset;
  DistanceSensor(uint8_t pin_, int offset_) {
    pin = pin_;
    offset = offset_;
  }
  float read() {
      return (1/(0.00046*analogRead(pin)) + offset);
  }
};

//Motor move function
void move(int dir_pin, int pwm_pin, int pwm) {
  analogWrite(pwm_pin, abs(pwm));
  if(pwm < 0) {
    digitalWrite(dir_pin, LOW);
  } else {
    digitalWrite(dir_pin, HIGH);    
  }
}

int f_out = 0, b_out = 0;
float f_setpoint = 0, b_setpoint = 0;
Controller f_control, b_control;
DistanceSensor f_sensor(F_SENSOR, 10), b_sensor(B_SENSOR, 10);

//Setup pins
void setup() {
  Serial.begin(9600);
  analogReadResolution(8);
  pinMode(F_DIR,OUTPUT);
  pinMode(F_PWM,OUTPUT);
  pinMode(B_DIR,OUTPUT);
  pinMode(B_PWM,OUTPUT);
}

void loop() {
  if(!f_control.within_tolerance()) {                       //Check if error is within tolerance
    f_out = f_control.pid(f_setpoint,f_sensor.read());      //If not, compute PID output
  } else {
    f_out = 0;                                              //No output if within tolerance
  }
  if(!b_control.within_tolerance()) {                       //Same procedure for back arm              
    b_out = b_control.pid(b_setpoint,b_sensor.read());
  } else {
    b_out = 0;
  }
  delay(500);
  Serial.print("Front: "); Serial.print(f_sensor.read()); Serial.print(" "); 
  Serial.print("Rear: "); Serial.println(b_sensor.read());
  //move(F_DIR, F_PWM, f_out);                                //Send direction and pwm signals
  //move(B_DIR, B_PWM, b_out);  
}
