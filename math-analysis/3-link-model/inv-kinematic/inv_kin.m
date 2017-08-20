function [ th1,th2 ] = inv_kin(a1,a2,xc,yc)
%Finding theta 2
d2 = abs(sqrt(xc.^2 + yc.^2));
D2 = (a1^2 + a2^2 - d2.^2)/(2*a2*a1);
th2 = 180 - atan2d(abs(sqrt(1-D2.^2)),D2);

%Find theta 1
alpha = atan2d(yc,xc);
beta = atan2d(a2*sind(th2),a1+a2*cosd(th2));
th1 = -beta+alpha;
end