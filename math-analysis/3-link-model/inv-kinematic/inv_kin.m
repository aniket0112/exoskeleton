function [ th2,th3 ] = inv_kin(a1,a2,a3,thk,xc,yc)
%Finding theta 3
X3 = (xc + a1*sind(thk));
Y3 = (yc - a1*cosd(thk));
d3 = abs(sqrt(X3.^2 + Y3.^2));
D3 = (a2^2 + a3^2 - d3.^2)/(2*a2*a3);
th3 = 180 - atan2d(abs(sqrt(1-D3.^2)),D3);

%Find theta 2
alpha = atan2d(Y3,X3);
beta = atan2d(a3*sind(th3),a2+a3*cosd(th3));
th2 = 360-(beta+alpha);
end