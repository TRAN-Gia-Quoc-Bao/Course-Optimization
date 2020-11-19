function xdot=solvediff(t,x,v1)
    r = v1(1); K = r/v1(2); s = v1(3); alph = v1(4); bet = v1(5);
    xdot = [x(1)*((r*(1-(x(1)/K)))-s*x(2)); -alph*x(2) + bet*x(1)*x(2)]
end