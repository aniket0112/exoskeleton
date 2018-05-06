#include "limit.h"

Limit::Limit(float a_, float b_, float c_, float d_) {
	a = a_;
	b = b_;
	c = c_;
	d = d_;
}

float Limit::function(float x) {
	return (a*pow(x,3)+b*pow(x,2)+c*pow(x,1)+d*pow(x,0));
}