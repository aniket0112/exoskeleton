clearvars
%computed torque control method PD control
a1 = 0.20; a2 = 0.40; m1 = 2; m2 = 2; g = 9.8;
Kp = diag([100 100],0);
Kd = (Kp.^2)/4;             %for critical damping

syms e1(t) e2(t) u1(t) u2(t) w1(t) w2(t)

x = [e1(t); e2(t); diff(e1(t)); diff(e2(t))];
w = [w1(t); w2(t)];
A = [zeros(2,2) eye(2,2);zeros(2,2) zeros(2,2)];
B = [zeros(2,2); eye(2,2)];
G = [zeros(2,2); eye(2,2)];
u = -Kd*[x(3);x(4)]-Kp*[x(1);x(2)];
controller = diff(x,t) - A*x - B*u;
noise =  G*w;
ode = [controller(3)==0 controller(4)==0];
De1 = diff(e1);
De2 = diff(e2);
cond = [e1(0) == 100 e2(0) == 100 De1(0)==0 De2(0)==0];
sol = dsolve(ode,cond);
e1(t) = simplify(sol.e1);
e2(t) = simplify(sol.e2);
% syms th1(t) th2(t) th1_des(t) th2_des(t)
% D = [ (a1^2*m1)/3 + a1^2*m2 + (a2^2*m2)/3 + a1*a2*m2*cos(th2(t)), (m2*a2^2)/3 + (a1*m2*cos(th2(t))*a2)/2;
%                      (m2*a2^2)/3 + (a1*m2*cos(th2(t))*a2)/2,                            (a2^2*m2)/3];
% H = [ -(a1*a2*m2*sin(th2(t))*(2*diff(th1(t), t) + diff(th2(t), t))*diff(th2(t), t))/2;
%                                       (a1*a2*m2*sin(th2(t))*diff(th1(t), t)^2)/2];
% C = [ (a2*g*m2*cos(th1(t) + th2(t)))/2 + (a1*g*m1*cos(th1(t)))/2 + a1*g*m2*cos(th1(t));
%                                                  (a2*g*m2*cos(th1(t) + th2(t)))/2];
% x = [th1(t); th2(t); diff(th1(t)); diff(th2(t))];
% xdes = [0; 0; 0; 0];
% e = xdes-x;
% u = -Kd*[e(3);e(4)]-Kp*[e(1);e(2)];
% U = D*(diff(xdes(1:2),t,t)-u)+H+C;
% equation = diff(x(1:2),t,t)+inv(D)*(H+C-U);
% ode1 = equation(1) == 0;
% ode2 = equation(2) == 0;
% Dt1 = diff(th1);
% Dt2 = diff(th2);
% ode = [ode1 ode2];
% cond = [th1(0) == 0 th2(0) == 0 Dt1(0)==0 Dt2(0)==0];