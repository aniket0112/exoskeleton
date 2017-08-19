function [x,y] = kinematic_eq(a,b,c,t0,th)

x = -a*cosd(t0) + b*cosd(th(:,1)) - c*cosd(th(:,2));
y = -a*sind(t0) - b*sind(th(:,1)) - c*sind(th(:,2));

end