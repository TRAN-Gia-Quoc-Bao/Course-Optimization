t = linspace(0,2*pi,100); x = cos(t)-1; y = sin(t); % 1st constraint (circle)
plot(x,y)
title('Constrained Optimization')
axis equal
hold on
t = linspace(0,2*pi,100); x = 2*cos(t)+2; y = 2*sin(t); % 2nd constraint (circle)
plot(x,y)
hold on
x = -3:0.1:5;y = 0.25*x + 0.5; % 3rd constraint (line)
plot(x,y)
hold on
line([-1 -1],[-3 5]) % 4th constraint (line)
xlabel('x1') 
ylabel('x2') 
legend('1st Constraint','2nd Constraint','3rd Constraint','4th Constraint')
hold off