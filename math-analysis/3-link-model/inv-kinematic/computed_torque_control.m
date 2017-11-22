function [T1,T2,th1,th2] = computed_torque_control(des_th1,des_th2)
%computed torque control method PD control
a1 = 0.20; a2 = 0.40; m1 = 2; m2 = 2; g = 9.8;
Kp = diag([0.1 0.1],0);
Kd = diag([1 1],0);             %for critical damping

h = 1;
des_dth1 = [0 diff(des_th1)]/h;
des_dth2 = [0 diff(des_th2)]/h;
des_ddth1 = [0 diff(des_dth1)]/h;
des_ddth2 = [0 diff(des_dth2)]/h;
s = length(des_th1);
T1 = zeros(1,s);
T2 = zeros(1,s);

th1 = zeros(1,s+1);
th2 = zeros(1,s+1);
dth1 = zeros(1);
dth2 = zeros(1);

for i = 1:s
    D = [ ((a1^2*m1)/3 + a1^2*m2 + (a2^2*m2)/3)*ones + a1*a2*m2*cos(th2(i)), (m2*a2^2)/3 + (a1*m2*cos(th2(i))*a2)/2;
                         (m2*a2^2)/3 + (a1*m2*cos(th2(i))*a2)/2,                            (a2^2*m2)/3];
    H = [ -(a1*a2*m2*sin(th2(i))*(2*dth1(i) + dth2(i))*dth2(i))/2;
                                          (a1*a2*m2*sin(th2(i))*dth1(i)^2)/2];
    C = [ (a2*g*m2*cos(th1(i) + th2(i)))/2 + (a1*g*m1*cos(th1(i)))/2 + a1*g*m2*cos(th1(i));
                                                     (a2*g*m2*cos(th1(i) + th2(i)))/2];
    x = [th1(i); th2(i); dth1(i); dth2(i)];
    xdes = [des_th1(i); des_th2(i); des_dth1(i); des_dth2(i)];
    e = xdes-x;
    u = -Kd*[e(3);e(4)]-Kp*[e(1);e(2)];
    U = D*([des_ddth1(i);des_ddth2(i)]-u)+H+C;
    T1(i) = U(1);
    T2(i) = U(2);
    ddt = inv(D)*(U-H-C);
    ddth1 = ddt(1);
    ddth2 = ddt(2);
    dth1(i+1) = dth1(i) + ddth1;
    dth2(i+1) = dth2(i) + ddth2;
    th1(i+1) = th1(i)+dth1(i+1);
    th2(i+1) = th2(i)+dth2(i+1);
end