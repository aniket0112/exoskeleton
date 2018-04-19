#include "inv_kinematics.h"

InverseKinematics::InverseKinematics(float f_link_length_, float b_link_length_) {
	f_link_length = f_link_length_;
	b_link_length = b_link_length_;
}

struct jointAngle InverseKinematics::getJointAngle(float x, float y) {
	float d2 = fabs(sqrt(pow(x,2) + pow(y,2)));
	float D2 = (pow(f_link_length,2) + pow(b_link_length,2) - pow(d2,2))/(2*f_link_length*b_link_length);
	struct jointAngle joint_angle;
	joint_angle.front_angle = 180 - atan2d(fabs(sqrt(1-pow(D2,2))),D2);

	float alpha = atan2d(y,x); 
	float beta = atan2d(f_link_length*sind(joint_angle.front_angle),b_link_length 
						+ f_link_length*cosd(joint_angle.front_angle));
	joint_angle.rear_angle = -beta + alpha;
	return joint_angle;
}