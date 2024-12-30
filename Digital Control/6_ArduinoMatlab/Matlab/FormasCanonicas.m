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

%%%%%    FORMAS CANONICAS    %%%%%
  %%%%%    CONTROLABLE    %%%%%
  
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
%     x1(k+1)=x2(k);
%     x2(k+1)=x3(k);
%     x3(k+1)=-0.108*x1(k)-0.18*x2(k)-0.6*x3(k)+u;
%     y(k)=-0.0999*x1(k)+0.3892*x2(k)-0.63*x3(k);
%     end
% k1=0:datos-1;
% k2=0:datos;
% plot(k1,y,k2,x1,k2,x2,k2,x3)

  %%%%%    OBSERVABLE    %%%%%
% 
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
%     x1(k+1)=-0.108*x3(k)-0.0999*u;
%     x2(k+1)=x1(k)-0.18*x3(k)+0.3892*u;
%     x3(k+1)=x2(k)-0.6*x3(k)-0.63*u;
%     y(k)=x3(k);
%     end
% k1=0:datos-1;
% k2=0:datos;
% plot(k1,y,k2,x1,k2,x2,k2,x3)

  %%%%%    DIAGONAL    %%%%%
  
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
%     x1(k+1)=-0.6*x1(k)+u;
%     x2(k+1)=-0.4242*x2(k)+u;
%     x3(k+1)=0.4242*x3(k)+u;
%     y(k)=-1.0374*x1(k)+0.2657*x2(k)+0.2657*x3(k);
%     end
% k1=0:datos-1;
% k2=0:datos;
% plot(k1,y,k2,x1,k2,x2,k2,x3)

  %%%%%    JORDAN    %%%%%    polos iguales
  
%  clc
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
%     x1(k+1)=-0.6*x1(k)+u;
%     x2(k+1)=-0.4242*x2(k);
%     x3(k+1)=0.4242*x3(k)+u;
%     y(k)=-1.0374*x1(k)+0.2657*x2(k)+0.2657*x3(k);
%     end
% k1=0:datos-1;
% k2=0:datos;
% plot(k1,y,k2,x1,k2,x2,k2,x3)