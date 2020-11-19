%%BE1_Question 4

%definition of the cost function that must be minimized
f=[ -1100 -1100 -1100 -800 -800 -800 -165 -165 -165];
%define inequalities constraints
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
b1 =[420 620 330 650*0.7 900*0.7 370*0.7 590 510 335];
%define equalitie constraint
Aeq=[31 -21 0 31 -21 0 31 -21 0
     11 0 -14 11 0 -14 11 0 -14];
beq=[ 0 0 ];
lb=[ 0 0 0 0 0 0 0 0 0];
% solve for this year's net return
 x1 = linprog(f,A,b,Aeq,beq,lb)
 max1=-f*x1
 % solve for next year's net return
 x2 = linprog(f,A,b1,Aeq,beq,lb)
 max2=-f*x2
 %the decrease in net return (percentage)
 percent = (max1 - max2)*100/ max1