syms c1 c2 s1 s2 a1 a2 m1 m2 thd1 thd2 th1 th2
A0 = [c1 -s1 0 a1*c1;s1 c1 0 a1*s1; 0 0 1 0; 0 0 0 1];
A1 = [c2 -s2 0 a2*c2;s2 c2 0 a2*s2; 0 0 1 0; 0 0 0 1];
A = [eye(size(A0)) A0 A0*A1; eye(size(A0)) eye(size(A0)) A1];
A = mat2cell(A,[4 4],[4 4 4]);
Q = [0 -1 0 0; 1 0 0 0; 0 0 0 0; 0 0 0 0];
J1 = [1/3*m1*a1^2 0 0 -m1*a1/2;0 0 0 0; 0 0 0 0; -1/2*m1*a1 0 0 m1];
J2 = [1/3*m2*a2^2 0 0 -m2*a2/2;0 0 0 0; 0 0 0 0; -1/2*m2*a2 0 0 m2];
J = [J1; J2];
J = mat2cell(J,[4 4],[4]); 
% U = [U11 U12; U21 U22];
% D11 = trace(U11*J1*U11')+trace(U21*J2*U21');
% D12 = trace(U22*J2*U21');
% D21 = D12;
% D22 = trace(U22*J2*U22');
% D = [D11 D12; D21 D22];
% 
% for i = 1:2