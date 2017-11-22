syms a1 a2 m1 m2 g
syms th1(t) th2(t)
A0 = [cos(th1(t)) -sin(th1(t)) 0 a1*cos(th1(t));sin(th1(t)) cos(th1(t)) 0 a1*sin(th1(t)); 0 0 1 0; 0 0 0 1];
A1 = [cos(th2(t)) -sin(th2(t)) 0 a2*cos(th2(t));sin(th2(t)) cos(th2(t)) 0 a2*sin(th2(t)); 0 0 1 0; 0 0 0 1];
A = [eye(size(A0)) A0 A0*A1; eye(size(A0)) eye(size(A0)) A1];
A = mat2cell(A,[4 4],[4 4 4]);
Q = [0 -1 0 0; 1 0 0 0; 0 0 0 0; 0 0 0 0];

J1 = [1/3*m1*a1^2 0 0 -m1*a1/2;0 0 0 0; 0 0 0 0; -1/2*m1*a1 0 0 m1];
J2 = [1/3*m2*a2^2 0 0 -m2*a2/2;0 0 0 0; 0 0 0 0; -1/2*m2*a2 0 0 m2];
J = [J1; J2];
J = mat2cell(J,[4 4],[4]); 

m = [m1; m2];
r1 = [-a1/2 0 0 1].';
r2 = [-a2/2 0 0 1].';
r = [r1 r2];
qd = [diff(th1(t),t),diff(th2(t),t)];
G = [0 -g 0 0];

D = [findD(A,Q,J,1,1) findD(A,Q,J,1,2); findD(A,Q,J,2,1) findD(A,Q,J,2,2)];
H = [findH(A,Q,J,qd,1); findH(A,Q,J,qd,2)];
C = [findC(A,Q,1,r,m,G); findC(A,Q,2,r,m,G);];

VF = D*[diff(th1(t),t); diff(th2(t),t)] + H + C;
VF = simplify(VF);