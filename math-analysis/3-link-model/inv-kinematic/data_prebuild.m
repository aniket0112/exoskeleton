data_number = 8100;
a1 = 10;
a2 = 20;
a3 = 40;
thk = 45;
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
[x,y] = kinematic_eq(a1,a2,a3,thk,th);