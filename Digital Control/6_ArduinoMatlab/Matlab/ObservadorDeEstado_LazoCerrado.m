%%%%%     SISTEMA DE CONTROL     %%%%%
%%%%%    OBSERVADOR DE ESTADO    %%%%%
%%%%%        LAZO CERRADO        %%%%% 

clc
close all
clear all
T=0:0.001:1;
%CONDICIONES INICIALES
k=1;
x1(k)=1;
x2(k)=2;
x3(k)=3;

x1T(k)=-1;
x2T(k)=-2;
x3T(k)=-3;
datos=30;
ref=10;
u(k)=0;

for k=1:datos
    u(k)=-1.72*ref+0.07223*x1T(k)+0.3065*x2T(k)+0.387*x3T(k);
    x1(k+1)=0.3*x2(k) +0.6*x3(k);
    x2(k+1)=0.2*x1(k)-0.7*x2(k)-0.35*x3(k)+1.8*u(k);
    x3(k+1)=-0.4*x1(k)+0.2*x2(k)+0.1*x3(k)+0.9*u(k);
    y(k)=0.2*x1(k)-0.35*x2(k);
    %ECUACIONES DEL OBSERVADOR
    x1T(k+1)=0.0518*x1T(k)+0.2094*x2T(k)+0.6*x3T(k)-0.2589*y(k);
    x2T(k+1)=-0.0847*x1T(k)-0.2018*x2T(k)-0.35*x3T(k)+1.4235*y(k)+1.84*u(k);
    x3T(k+1)=-0.1569*x1T(k)-0.2255*x2T(k)+0.1*x3T(k)-1.12156*y(k)+0.9*u(k);
    ref1(k)=ref;
end
k1=0:datos-1;
k2=0:datos;
figure
plot(k2,x1,k2,x1T)
figure
plot(k2,x2,k2,x2T)
figure
plot(k2,x3,k2,x3T)
figure
plot(k1,y,k1,ref1)