%%BE1_Question 1

%define the cost function that must be minimized
f=[ -1100 -1100 -1100 -800 -800 -800 -165 -165 -165];
%define inequality constraints
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
%define equality constraint
Aeq=[31 -21 0 31 -21 0 31 -21 0
     11 0 -14 11 0 -14 11 0 -14];
beq=[ 0 0 ];
%define lower bounds
lb=[ 0 0 0 0 0 0 0 0 0];
 
 x = linprog(f,A,b,Aeq,beq,lb)
 max=-f*x
 
 q2 = A*x - b'