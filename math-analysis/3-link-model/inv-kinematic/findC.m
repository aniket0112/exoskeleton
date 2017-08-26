function [C] = findC(A,Q,i,rc,m,g)
C = 0;
for j = i:2
    C = C - m(j)*g*findU(A,Q,j,i)*rc(:,j);
end
C = simplify(C);
end

