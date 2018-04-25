#ifndef inv_kinematics

#include <cmath>
#define inv_kinematics


struct jointAngle {
	float front_angle, rear_angle;
};

struct pistonLength {
  float front;
  float rear;
};

struct manipulator {
  float j1j2,j2j5,j5j7,j2j4,j3j5,j5j6;
};

float cosd(float x);
float sind(float x);
float atan2d(float y, float x);

class InverseKinematics {
public:
	float f_link_length, b_link_length, base_link_length, max_radius, min_radius;
	InverseKinematics(struct manipulator man);
	struct jointAngle getJointAngle(float x, float y);
  struct pistonLength getPistonLength(struct jointAngle joint_angle, struct manipulator man);
};

#endif
