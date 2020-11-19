function J = cost(lesu)
global gamma alpha lambda delta beta nu P0 Q0 T
% u = udet(t, lesu);
% xdot = [(gamma-delta-alpha-u)*x(1) + beta*x(2); alpha*x(1) - (lambda + beta)*x(2); u];
[tt,xx]=ode45(@myode,[0 T],[P0 Q0 0],[],lesu);
J = xx(end,1) + nu*xx(end,3);
end