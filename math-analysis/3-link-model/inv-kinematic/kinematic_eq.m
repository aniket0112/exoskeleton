function [x,y] = kinematic_eq(a1,a2,th)
x = a1*cosd(th(:,1)) + a2*cosd(th(:,2)+th(:,1));
y = a1*sind(th(:,1)) + a2*sind(th(:,2)+th(:,1));
end