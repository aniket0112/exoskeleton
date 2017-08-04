data_number = 10000;
a = 10;
b = 20;
c = 40;
t0 = 45*ones(data_number,1);

th(:,1) = [90/data_number:90/data_number:90];
for i = 1:data_number
    th(i,2) = rand()*90;
end

t1=th(:,1);
t2=th(:,2);
[x,y] = kinematic_eq(a,b,c,t0,th);