%%%%%    SISTEMA DE CONTROL    %%%%%
%%%%%       LAZO ABIERTO    %%%%%%

% clc
% close all
% clear all
% T=0:0.001:1;
% %CONDICIONES INICIALES
% k=1;
% x1(k)=0;
% x2(k)=0;
% x3(k)=0;
% datos=30;
% u=1;
% 
% for k=1:datos
%     x1(k+1)=0.3*x2(k) +0.6*x3(k);
%     x2(k+1)=0.2*x1(k)-0.7*x2(k)-0.35*x3(k)+1.8*u;
%     x3(k+1)=-0.4*x1(k)+0.2*x2(k)+0.1*x3(k)+0.9*u;
%     y(k)=0.2*x1(k)-0.35*x2(k);
% end
% k1=0:datos-1;
% k2=0:datos;
% plot(k1,y,k2,x1,k2,x2,k2,x3)

%%%%%       LAZO CERRADO    %%%%%%

clc
close all
clear all
T=0:0.001:1;
%CONDICIONES INICIALES
k=1;
x1(k)=0;
x2(k)=0;
x3(k)=0;
datos=30;
ref=10;
u(k)=0;

for k=1:datos
    u(k)=-1.72*ref+0.07223*x1(k)+0.3065*x2(k)+0.387*x3(k);
    x1(k+1)=0.3*x2(k) +0.6*x3(k);
    x2(k+1)=0.2*x1(k)-0.7*x2(k)-0.35*x3(k)+1.8*u(k);
    x3(k+1)=-0.4*x1(k)+0.2*x2(k)+0.1*x3(k)+0.9*u(k);
    y(k)=0.2*x1(k)-0.35*x2(k);
    ref1(k)=ref;
end
k1=0:datos-1;
k2=0:datos;
plot(k1,y,k1,ref1)