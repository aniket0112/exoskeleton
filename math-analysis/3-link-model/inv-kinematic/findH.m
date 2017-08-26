function [h] = findH(A,Q,J,qd,i)
h = 0;
for k = 1:2
    for m = 1:2
        hikm = 0;
        for j = max(max(i,k),m) : 2
            hikm  = hikm + trace(findU(A,Q,j,k,m)*J{j}*findU(A,Q,j,i).');
        end
        h = h + hikm*qd(k)*qd(m);
    end
end
h = simplify(h);
end

