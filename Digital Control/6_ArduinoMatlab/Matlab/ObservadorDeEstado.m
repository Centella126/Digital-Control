%%%%%    SISTEMA DE CONTROL    %%%%%
%%%%%       LAZO ABIERTO    %%%%%%

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
u=1;

for k=1:datos
    x1(k+1)=0.3*x2(k) +0.6*x3(k);
    x2(k+1)=0.2*x1(k)-0.7*x2(k)-0.35*x3(k)+1.8*u;
    x3(k+1)=-0.4*x1(k)+0.2*x2(k)+0.1*x3(k)+0.9*u;
    y(k)=0.2*x1(k)-0.35*x2(k);
    %ECUACIONES DEL OBSERVADOR
    x1T(k+1)=-0.3518*x1T(k)+0.9157*x2T(k)+0.6*x3T(k)+1.7591*y(k);
    x2T(k+1)=-1.1439*x1T(k)+1.6518*x2T(k)-0.35*x3T(k)+6.7195*y(k)+1.84*u;
    x3T(k+1)=-0.5845*x1T(k)+0.5229*x2T(k)+0.1*x3T(k)+0.9224*y(k)+0.9*u;
end
k1=0:datos-1;
k2=0:datos;
subplot(3,1,1);plot(k2,x1,k2,x1T)
subplot(3,1,2);plot(k2,x2,k2,x2T)
subplot(3,1,3);plot(k2,x3,k2,x3T)