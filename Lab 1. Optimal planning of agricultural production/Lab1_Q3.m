%%BE1_Question 3
A=[1 0 0 1 0 0 1 0 0
   0 1 0 0 1 0 0 1 0
   0 0 1 0 0 1 0 0 1
   3 0 0 2 0 0 1.5 0 0
   0 3 0 0 2 0 0 1.5 0
   0 0 3 0 0 2 0 0 1.5
   1 1 1 0 0 0 0 0 0
   0 0 0 1 1 1 0 0 0
   0 0 0 0 0 0 1 1 1];

b=[420 620 330 650 900 370 590 510 335];

Aeq=[31 -21 0 31 -21 0 31 -21 0
     11 0 -14 11 0 -14 11 0 -14];
 
 beq=[ 0 0 ];
 
 lb=[ 0 0 0 0 0 0 0 0 0];
x = [ 0 0 0 0 0 0 0 0 0]';
i = 0;
while (x(7) == 0 && x(8) == 0 && x(9) == 0)
clc
%definition of the cost function that must be minimized
p = 1+0.01*i;
f=[ -1100 -1100 -1100 -800 -800 -800 -165*p -165*p -165*p];
 x = linprog(f,A,b,Aeq,beq,lb);
 i = i+1
end
 
