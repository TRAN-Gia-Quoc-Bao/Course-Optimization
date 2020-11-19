clear all

syms x y
%Declaring function
f = 0.5*(x-1)^2 + 50*(y-x^2)^2 + 0.5*y^2;
%Find Gradient and Hessian
gradf = gradient(f, [x, y])
Hessianf = hessian(f,[x,y])
