
function [x , y] = trajectory(t)
  % Parameters
     theta = 75*pi/180; %conversion into radian
     V = 15;
     g = 9.8;
     x0 = 0;
     y0 = 0;
  % Declare functions
        x = x0 + V * cos(theta) * t ;
        y = y0 + V*(sin(theta)*t)-(0.5*g*(t.^2));
  % Plot commands
        plot (x,y);
        legend('Ball trajectory');
        xlabel('Distance (m)');
        ylabel('Height (m)');
        title('Ballistic Trajectory from Simple Two-Dimensional Mechanics');
end

