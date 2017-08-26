function U = findU(A,Q,i,j,k)
%Find U_ijk or U_ij
if nargin < 5
    if j <= i
        U = A{1,j}*Q*A{j,i+1};
    else
        U = 0;
    end
else
    if i >= k && k >= j
        U = A{1,j}*Q*A{j,k}*Q*A{k,i+1};
    elseif i >= j && j >= k
        U = A{1,k}*Q*A{k,j}*Q*A{j,i+1};
    elseif i < j || i < k   
        U = 0;
    end
end
end

