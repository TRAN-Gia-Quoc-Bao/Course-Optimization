clear all
close all
a = linspace(0,0.5,50);
b = linspace(0,0.5,50);
c = linspace(0,0.33,50);
[A,B,C] = meshgrid(a,b,c);
% Constraints
C1 = A.*B.*C - 0.032;
C2 = 0.5 - A;
C3 = 0.5 - B;
C4 = 3*A - B;
C5 = 2*B - 3*C;
C6 = 1.5 - 2*(A + B);

%Isosurfaces
p1 = patch(isosurface(a,b,c,C1,0));
p1.FaceColor = 'red';
p1.EdgeColor = 'none';

p2 = patch(isosurface(a,b,c,C2,0));
p2.FaceColor = 'g';
p2.EdgeColor = 'none';

p3 = patch(isosurface(a,b,c,C3,0));
p3.FaceColor = 'blue';
p3.EdgeColor = 'none';

p4 = patch(isosurface(a,b,c,C4,0));
p4.FaceColor = 'y';
p4.EdgeColor = 'none';

p5 = patch(isosurface(a,b,c,C5,0));
p5.FaceColor = 'm';
p5.EdgeColor = 'none';

p6 = patch(isosurface(a,b,c,C6,0));
p6.FaceColor = 'w';
p6.EdgeColor = 'none';

%Objective function
OF = 3*(A.*B + B.*C + A.*C);
p = patch(isosurface(a,b,c,OF,0));
p.FaceColor = 'red';
p.EdgeColor = 'none';
daspect([1 1 1])

view(3); 
axis tight
camlight 
lighting gouraud