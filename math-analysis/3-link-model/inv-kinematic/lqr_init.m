A = [zeros(2,2) eye(2,2);zeros(2,2) zeros(2,2)];
B = [zeros(2,2); eye(2,2)];
C = [eye(4,4)];
D = [zeros(size(B))];
Q = [eye(4,4)];
R = [eye(2,2)];
x0 = [10; 10; 0; 0];
%state space rep
gensys = ss(A,B,C,D);

[K,S,e] = lqr(gensys,Q,R);

U = A-B*K;
lqss = ss(U,[],C,[]);
figure;
initial(lqss,x0);
grid on;