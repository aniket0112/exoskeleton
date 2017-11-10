function [strD,strH,strC] = discretize(D,H,C)
%D matrix
for i = 1:2
    for j = 1:2
        strd = char(D(i,j));
        strtemp = strrep(strd,'thd1','((th1q/h)-(th1p/h))');
        strD(i,j) = {strrep(strtemp,'thd2','((th2q/h)-(th2p/h))')};
    end
end

%H matrix
for i = 1:2
    strh= char(H(i));
    strtemp = strrep(strh,'thd1','((th1q/h)-(th1p/h))');
    strH(i) = {strrep(strtemp,'thd2','((th2q/h)-(th2p/h))')};
end

%C matrix
for i = 1:2
    strc= char(C(i));
    strtemp = strrep(strc,'thd1','((th1q/h)-(th1p/h))');
    strC(i) = {strrep(strtemp,'thd2','((th2q/h)-(th2p/h))')};
end
end