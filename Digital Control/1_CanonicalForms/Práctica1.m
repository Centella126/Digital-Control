% Definir matrices del sistema en espacio de estados
A = [-0.5 0.2 0;
     0.1 -0.7 0.3;
     0 0.1 -0.4];
B = [0.2; 0.3; 0.4];
C = [1 -0.6 0.2];
D = 0;

% Crear el sistema en espacio de estados
sys = ss(A, B, C, D);

% Convertir a función de transferencia
tf_sys = tf(sys);

% Mostrar la función de transferencia
tf_sys

% Obtener el numerador y el denominador
[num, den] = tfdata(tf_sys, 'v');

% Mostrar el numerador y el denominador
disp('Numerador:');
disp(num);
disp('Denominador:');
disp(den);

% Graficar los polos y ceros
figure;
pzmap(sys);
title('Polos y Ceros del Sistema');
