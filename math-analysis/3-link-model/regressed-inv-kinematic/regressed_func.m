function [ theta1, theta2 ] = regressed_func(x,y)
fitmodel1 = load('model1');
fitmodel2 = load('model2');
theta1 = fitmodel1.fittedmodel1(x,y);
theta2 = fitmodel2.fittedmodel2(x,y);
end

