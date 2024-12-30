clc
clear all
close all

z=sym("z"); 
I=eye(3);

A=[0 0.3 0.6; 0.2 -0.7 -0.35; -0.4 0.2 0.1];
B=[0;1.8;0.9];
C=[0.2 -0.35 0];


Ob=[C; C*A; C*A*A];

det(Ob);

pol=((z-0.4-0.7j)*(z-0.4+0.7j)*(z-0.6));
expand(pol);

phi=(A^3)-(1.4*A^2)+(1.13*A)-(0.39*I);

inv=inv(Ob);

Kc=phi*inv*[0;0;1];



