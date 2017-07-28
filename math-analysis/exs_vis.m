[P,Q,R,A,B,C] = exs_param(23,12,30);
[xa,ya] = pol2cart(degtorad(-90),A);
[xb,yb] = pol2cart(degtorad(90.+P),B);
[xc,yc] = pol2cart(degtorad(-90.-Q),C);
yb = yb - A;
[~,iteration] = size(xa);
for i = iteration:-1:1
    axis([-25 2 -25 2]);
    cla;
%Plot reference triangle
    line([0 xa(iteration)],[0 ya(iteration)],'Color','green','LineStyle','--');
    line([0 xb(iteration)],[-A(1) yb(iteration)],'Color','red','LineStyle','--');
    line([0 xc(iteration)],[0 yc(iteration)],'Color','blue','LineStyle','--');

    text(xa(iteration),ya(iteration)-2,num2str(P(iteration)));
    text(xb(iteration),yb(iteration),num2str(R(iteration)));
    text(0,2,num2str(Q(iteration)));
    text(xc(iteration)/2-5,yc(iteration)/2,num2str(C(iteration)));

%Plot new triangle
    line([0 xa(i)],[0 ya(i)],'Color','green');
    line([0 xb(i)],[-A(1) yb(i)],'Color','red');
    line([0 xc(i)],[0 yc(i)],'Color','blue');
    
    text(xa(i),ya(i),num2str(P(i)));
    text(xb(i),yb(i),num2str(R(i)));
    text(0,0,num2str(Q(i)));
    text(xc(i)/2,yc(i)/2,num2str(C(i)));
    pause(0.1)
end

% [xc,yc] = pol2cart(C,degtorad(90-Q));
%a = [xa;ya];
%b = [xb;yb];
%c = [xc;yc];