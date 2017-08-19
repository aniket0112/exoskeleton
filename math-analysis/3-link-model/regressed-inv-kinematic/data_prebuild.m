data_number = 8100;
a = 10;
b = 20;
c = 40;
t0 = 45*ones(data_number,1);
x = [1:90]';
t2 = x;
for i = 1:89
    t2 = vertcat(t2,x);
end
x = ones(90,1);
t1 = x;
for i = 2:90
    t1 = vertcat(t1,x*i);
end
th = horzcat(t1,t2);
[x,y] = kinematic_eq(a,b,c,t0,th);