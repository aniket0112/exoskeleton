%% o,p,q mean (k-1), k and (k+1) time sample respectively
%% h is time sample period
syms a1 a2 m1 m2 th1o th1p th1q th2o th2p th2q th1 th2 g h u1 u2
U = [u1;u2];
D = [(a1^2*m1)/3 + a1^2*m2 + (a2^2*m2)/3 + a1*a2*m2*cos(th2)    (a2*m2*(2*a2 + 3*a1*cos(th2)))/6;
    (a2*m2*(2*a2 + 3*a1*cos(th2)))/6                           (a2^2*m2)/3];
H = [-(a1*a2*m2*((th2p/h)-(th2q/h))*sin(th2)*(2*((th1p/h)-(th1q/h)) + ((th2p/h)-(th2q/h))))/2;
    (a1*a2*m2*((th1p/h)-(th1q/h))^2*sin(th2))/2];
C = [(g*(a1*m1*cos(th1) + 2*a1*m2*cos(th1) + a2*m2*cos(th1 + th2)))/2;
    (a2*g*m2*cos(th1 + th2))/2];
diff2 = [(th1q-2*th1p+th1o)/(h^2); (th2q-2*th2p+th2o)/(h^2)];
T = simplify(H+C-D*(U-diff2));
T
for i = 1:2
    strtemp = char(T(i));
    strtemp = strrep(strtemp,'th1p','t1(i)');
    strtemp = strrep(strtemp,'th2p','t2(i)');
    strtemp = strrep(strtemp,'th1o','t1(i-1)');
    strtemp = strrep(strtemp,'th2o','t2(i-1)');
    strtemp = strrep(strtemp,'th1q','t1(i+1)');
    strtemp = strrep(strtemp,'th2q','t2(i+1)');
    strtemp = strrep(strtemp,'u1','u(1)');
    strtemp = strrep(strtemp,'u2','u(2)');
    strtemp = strrep(strtemp,'th1','t1(i)');
    strtemp = strrep(strtemp,'th2','t2(i)');
    strT(i) = {strtemp};
end
char(strT(1))
char(strT(2))