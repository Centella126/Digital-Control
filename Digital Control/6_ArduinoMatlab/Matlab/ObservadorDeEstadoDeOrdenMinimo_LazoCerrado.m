%%%%%             SISTEMA DE CONTROL             %%%%%
%%%%%    OBSERVADOR DE ESTADO DE ORDEN MINIMO    %%%%%
%%%%%                LAZO CERRADO                %%%%% 

clc
close all
clear all
T=0:0.001:1;
%CONDICIONES INICIALES
k=1;
x1(k)=0;
x2(k)=2;
x3(k)=3;
n2(k)=-2;
n3(k)=-3;
x2T(k)=0;
x3T(k)=0;
datos=30;
ref=10;
u(k)=0;

for k=1:datos
    x2T(k)=n2(k)-4.4593*x1(k);
    x3T(k)=n3(k)+1.2630*x1(k);
    u(k)=0.6678*(ref+0.07223*x1(k)+0.3065*x2T(k)+0.387*x3T(k));
    x1(k+1)=0.3*x2(k)+0.6*x3(k);
    x2(k+1)=0.2*x1(k)-0.7*x2(k)-0.35*x3(k)+1.8*u(k);
    x3(k+1)=-0.4*x1(k)+0.2*x2(k)+0.1*x3(k)+0.9*u(k);
    y(k)=x1(k);
    %ECUACIONES DEL OBSERVADOR DE ORDEN MINIMO
    n2(k+1)=0.6378*n2(k)+2.3256*n3(k)+0.2931*y(k)+1.8*u(k);
    n3(k+1)=-0.1789*n2(k)-0.6578*n3(k)-0.433*y(k)+0.9*u(k);
    ref1(k)=ref;
end
k1=0:datos-1;
k2=0:datos;
figure
plot(k2,x2,k1,x2T)
figure
plot(k2,x3,k1,x3T)
figure
plot(k1,y,k1,ref1)