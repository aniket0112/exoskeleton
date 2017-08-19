function [x,y] = kinematic_eq(a1,a2,a3,thk,th)
thk = thk*ones(size(th(1)));
x = -a1*sind(thk) + a2*cosd(th(:,1)) + a3*cosd(th(:,2)+th(:,1));
y = a1*cosd(thk) + a2*sind(th(:,1)) + a3*sind(th(:,2)+th(:,1));
end