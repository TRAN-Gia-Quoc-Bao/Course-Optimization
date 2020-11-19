clear all
syms x y
%Declaring function
f = 100*(y - x^2)^2 + (1 - x)^2;
%Find Gradient
gradf = gradient(f, [x, y]);
%Substitution of value
 subs(gradf,{x,y},{1,2});
 % Contour plot of Rosenbrock function
clear all
clc
x = linspace(-3,3);
y = linspace(-3,3);
[X,Y] = meshgrid(x,y);
Z = 100*(Y - X.^2).^2 + (1 - X).^2;
contour(X,Y,Z)
xlabel('x');
ylabel('y');
title('Contour plot of Rosenbrock function');