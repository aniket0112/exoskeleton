data_prebuild;
[t1,t2] = inv_kin(a1,a2,x,y);
t = [t1,t2];
Pd = sqrt(a1*a1+b2*b2-2*a1*b2*cosd(180-t2));
Pu = sqrt(a0*a0+b1*b1-2*a0*b1*cosd(180-t1+t0));