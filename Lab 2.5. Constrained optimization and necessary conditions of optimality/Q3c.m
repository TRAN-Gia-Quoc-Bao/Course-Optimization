p = [37 36 4];
x1 = roots(p) %solve for x1 (intersection of 1st and 3rd constraints, take only the bigger value as it lies on the right)
x2 = 0.2*roots(p) + 0.5 %solve for x1 (our cost function)
syms x y z
eqn1 = -2*(-0.1279+1)*x + y == 0;
eqn2 = 2*0.4744*x + y == 3;
[A,B] = equationsToMatrix([eqn1, eqn2], [x, y]);
X = linsolve(A,B) %solve for u1 and u3 (the last 2 parameters)