syms c1 c2 s1 s2 a1 a2 m1 m2 thd1 thd2 th1 th2 g

A0 = [c1 -s1 0 a1*c1;s1 c1 0 a1*s1; 0 0 1 0; 0 0 0 1];
A1 = [c2 -s2 0 a2*c2;s2 c2 0 a2*s2; 0 0 1 0; 0 0 0 1];
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
qd = [thd1,thd2];
G = [0 -g 0 0];

D = [findD(A,Q,J,1,1) findD(A,Q,J,1,2); findD(A,Q,J,2,1) findD(A,Q,J,2,2)];
H = [findH(A,Q,J,qd,1); findH(A,Q,J,qd,2)];
C = [findC(A,Q,1,r,m,G); findC(A,Q,2,r,m,G);];

VF = D*[thd1; thd2] + H + C;
VF = simplify(VF);