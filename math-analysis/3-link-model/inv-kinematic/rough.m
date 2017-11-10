%% Script file to simulate with parameters
K = [    1.0000         0       1.7321         0;
         0          1.0000         0        1.7321];
a1 = 0.20;
a2 = 0.40;
m1 = 2;
m2 = 2;
g = 9.8;
h = 0.01;
timsc = [0.5:0.01:45];
%intial conditions
t1 = [0:0.01:45]; 
t2 = [0:0.01:45];
%for i = 10:50
%    t1(i) = 10;
%end
for i = 2:4451
u = -K*[t1(i);t2(i);(t1(i+1)-t1(i))/h;(t2(i+1)-t2(i))/h];
T = [(g*(a1*m1*cos(t1(i)) + 2*a1*m2*cos(t1(i)) + a2*m2*cos(t1(i) + t2(i))))/2 + (((a1^2*m1)/3 + a1^2*m2 + (a2^2*m2)/3 + a1*a2*m2*cos(t2(i)))*(t1(i-1) - 2*t1(i) + t1(i+1) - h^2*u(1)))/h^2 + (a2*m2*(2*a2 + 3*a1*cos(t2(i)))*(t2(i-1) - 2*t2(i) + t2(i+1) - h^2*u(2)))/(6*h^2) - (a1*a2*m2*sin(t2(i))*(t2(i) - t2(i+1))*(2*t1(i) - 2*t1(i+1) + t2(i) - t2(i+1)))/(2*h^2) ;
    (a2*g*m2*cos(t1(i) + t2(i)))/2 - (a2^2*m2*(u(2) - (t2(i-1) - 2*t2(i) + t2(i+1))/h^2))/3 - (a2*m2*(u(1) - (t1(i-1) - 2*t1(i) + t1(i+1))/h^2)*(2*a2 + 3*a1*cos(t2(i))))/6 + (a1*a2*m2*sin(t2(i))*(t1(i)/h - t1(i+1)/h)^2)/2];
t_history(i,:) = [t1(i) t2(i)];
u_history(i,:) = u;
T_history(i,:) = T;
end
plot(timsc,t_history(:,1));
hold on
plot(timsc,t_history(:,2));
figure;
plot(timsc,u_history(:,1));
hold on
plot(timsc,u_history(:,2));
figure;
plot(timsc,T_history(:,1));
hold on
plot(timsc,T_history(:,2));
