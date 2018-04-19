#ifndef inv_kinematics

#include <cmath>
#define inv_kinematics
#define sind(x) sin(x*M_PI/180.0)
#define cosd(x) cos(x*M_PI/180.0)
#define atan2d(y,x) atan2(y,x)*180.0/M_PI

struct jointAngle {
	float front_angle, rear_angle;
};

class InverseKinematics {
public:
	float f_link_length, b_link_length;
	InverseKinematics(float f_link_length_ = 10, float b_link_length_ = 10);
	struct jointAngle getJointAngle(float x, float y);
};

#endif