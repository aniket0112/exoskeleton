function [] = sketch(a,b,c,t,x,y,t1,t2)
axis([-100 15 -100 15]);
[th1, th2] = regressed_func(x,y);
for i = 1:5:size(th1)
    x1 = -a*cosd(t) + b*cosd(th1(i));
    y1 = -a*sind(t) - b*sind(th1(i));
    xc = x1 - c*cosd(th2(i));
    yc = y1 - c*sind(th2(i));
    cla;
    line([0,-a*cosd(t)],[0,-a*sind(t)],'Color','Green');
    
    %regressed line
    line([-a*cosd(t),x1],[-a*sind(t),y1],'Color','red');
    line([x1,xc],[y1,yc],'Color','blue');

    %original line
    x1 = -a*cosd(t) + b*cosd(t1(i));
    y1 = -a*sind(t) - b*sind(t1(i));
    xc = x1 - c*cosd(t2(i));
    yc = y1 - c*sind(t2(i));
    
    line([-a*cosd(t),x1],[-a*sind(t),y1],'Color','red','LineStyle','--');
    line([x1,xc],[y1,yc],'Color','blue','LineStyle','--');
    pause(0.1);
end
end