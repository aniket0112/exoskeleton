#include "inv_kinematics.h"

float atan2d(float y,float x) {
  return atan2(y,x)*180.0/M_PI;
}

float sind(float x) {
  return sin(x*M_PI/180.0);
}

float cosd(float x) {
  return cos(x*M_PI/180.0);
}

InverseKinematics::InverseKinematics(struct manipulator man) {
	f_link_length = man.j5j7;
	b_link_length = man.j2j5;
  base_link_length = man.j1j2;
  max_radius = f_link_length+b_link_length;
  min_radius = fabs(f_link_length-b_link_length);
}

struct jointAngle InverseKinematics::getJointAngle(float x, float y) {
	struct jointAngle joint_angle;
	float d2 = fabs(sqrt(pow(x,2) + pow(y,2)));
  if(d2 > max_radius || d2 < min_radius) {                                                                //not possible {x,y} set
    joint_angle.front_angle = 181;
    joint_angle.rear_angle = 181;
    return joint_angle;
  }
	float D2 = (pow(f_link_length,2) + pow(b_link_length,2) - pow(d2,2))/(2*f_link_length*b_link_length);
	joint_angle.front_angle = 180 - atan2d(fabs(sqrt(1-pow(D2,2.0))),D2);

	float alpha = atan2d(y,x); 
	float beta = atan2d(f_link_length*sind(joint_angle.front_angle),b_link_length 
						+ f_link_length*cosd(joint_angle.front_angle));
	joint_angle.rear_angle = -beta + alpha;
	return joint_angle;
}

struct pistonLength InverseKinematics::getPistonLength(struct jointAngle joint_angle, struct manipulator man) {
  struct pistonLength piston_length;
  piston_length.rear = sqrt(pow(man.j1j2,2.0)+pow(man.j2j4,2.0)-2.0*man.j1j2*man.j2j4*cosd(180 - fabs(joint_angle.front_angle)));   //Added 180 to convert clockwise fourth quadrant to minor angle of triangle
  piston_length.front = sqrt(pow(man.j3j5,2.0)+pow(man.j5j6,2.0)-2.0*man.j5j6*man.j3j5*cosd(180 - fabs(joint_angle.rear_angle)));
  return piston_length;
}

