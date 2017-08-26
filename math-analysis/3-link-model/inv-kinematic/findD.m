function [ D ] = findD(A,Q,J,i,k)
l = max(i,k);
D = 0;
for j = l : 2
    U1 = findU(A,Q,j,k);
    U2 = findU(A,Q,j,i).';
    J0 = J{j};
    D = D + trace(U1*J0*U2);
end
D = simplify(D);
end

