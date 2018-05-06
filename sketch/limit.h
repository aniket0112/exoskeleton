#ifndef LIMIT_H
#define LIMIT_H
#include <cmath>

class Limit {
float a,b,c,d;
public:
	Limit(float a = 0, float b = 0, float c = 0, float d = 0);
	float function(float x);
	bool within_limits(float x, float y);
};

#endif