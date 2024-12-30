% Matriz A del observador
A_observador = [-0.3518, 0.9157, 0.6;
               -1.1439, 1.6518, -0.35;
               -0.5845, 0.5229, 0.1];

% Calcular los valores propios (polos del observador)
polos_observador = eig(A_observador);

% Mostrar los polos
disp('Polos del observador:');
disp(polos_observador);

% Gráfica de los polos del controlador y del observador
controlador_polos = [-0.3, 0.1, 0.5];

figure;
hold on;
grid on;

% Graficar polos del controlador
plot(real(controlador_polos), imag(controlador_polos), 'rx', 'MarkerSize', 10, 'DisplayName', 'Polos del Controlador');

% Graficar polos del observador
plot(real(polos_observador), imag(polos_observador), 'bo', 'MarkerSize', 10, 'DisplayName', 'Polos del Observador');

% Añadir etiquetas y leyenda
xlabel('Parte Real');
ylabel('Parte Imaginaria');
title('Ubicación de los Polos del Controlador y Observador');
legend;
axis equal;

hold off;
