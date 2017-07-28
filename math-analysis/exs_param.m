function [P,Q,R,A,B,C] = exs_param(a,b,theta_max)
%Intial position : a,b,c for right angle
C_max = sqrt(a^2+b^2);
C_min = sqrt(-cosd(theta_max)*2*a*b+a^2+b^2);
C = C_min:0.1:C_max;
A = a*ones(size(C));
B = b*ones(size(C));
P = (A.^2+B.^2 - C.^2)./(2*A.*B);
Q = (A.^2+C.^2 - B.^2)./(2*A.*C);
R = (C.^2+B.^2 - A.^2)./(2*C.*B);
P = acosd(P);
Q = acosd(Q);
R = acosd(R);
end