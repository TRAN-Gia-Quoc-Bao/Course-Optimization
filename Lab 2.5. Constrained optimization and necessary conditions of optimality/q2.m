t = linspace(0,2*pi,100); x = 8*cos(t); y = 8*sin(t);
plot(x,y)
title('Constrained Optimization')
axis equal
hold on
x = -8:0.1:8; y = -8:0.1:8;
[X,Y] = meshgrid(x,y);
Z = -X.^2 - 2*Y.^2;
contour(X,Y,Z,'ShowText','on')
xlabel('x1') 
ylabel('x2') 
legend('Constraint','Contour lines')
hold off