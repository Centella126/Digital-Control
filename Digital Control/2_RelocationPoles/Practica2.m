clc 
close all
clear all


% Definir las matrices del sistema en espacio de estados (3x3)
A = [0 0.3 0.6;
     0.2 -0.7 -0.35;
     -0.4 0.2 0.1];  % Matriz A (3x3)

B = [0;
     1.8;
     0.9];  % Matriz B (3x1)

C = [0.2 -0.35 0];  % Matriz C (opcional para visualización)
D = 0;        % Matriz D (opcional)

% Definir las ganancias K ya calculadas
K = [-0.1475/2.042  -0.6254/2.042  -0.7896/2.042];  % Ganancias calculadas

% Crear la nueva matriz A del sistema en lazo cerrado (A_cl = A - B*K)
Acl = A - B*K;

% Crear el sistema en espacio de estados para el sistema en lazo cerrado
sys_cl = ss(Acl, B, C, D);  % Sistema en lazo cerrado

% Visualizar el lugar de las raíces del sistema original
figure;
rlocus(ss(A, B, C, D));  % Lugar de las raíces del sistema original
title('Lugar de las raíces del sistema original');
grid on;

% Verificar y mostrar los polos del sistema en lazo cerrado
poles_cl = eig(Acl);
disp('Polos reubicados en el sistema en lazo cerrado:');
disp(poles_cl);

% Graficar los polos reubicados en el lazo cerrado usando pzmap
figure;
pzmap(sys_cl);  % Mostrar polos y ceros del sistema en lazo cerrado
title('Polos del sistema en lazo cerrado');
grid on;


