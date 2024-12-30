clc
clear all
PolosControlador = [-0.3, 0.1, 0.5];
PolosObservadorMinimo = [0.05 -0.07]; %% NUEVOS POLOSSS
real_partControlador = real(PolosControlador);  % Parte real
imag_partControlador = imag(PolosControlador);  % Parte imaginaria
real_partObservador = real(PolosObservadorMinimo);  % Parte real
imag_partObservador = imag(PolosObservadorMinimo);  % Parte imaginaria

% Crear la gráfica en el plano complejo
figure;
plot(real_partControlador, imag_partControlador, 'bo', 'MarkerSize', 10, 'MarkerFaceColor', 'r');
hold on
plot(real_partObservador, imag_partObservador, 'bx', 'MarkerSize', 10, 'MarkerFaceColor', 'b');
grid on;
xlabel('Parte Real');
ylabel('Parte Imaginaria');
title('Polos del controlador y observador');

% Añadir líneas de referencia en los ejes
line(xlim, [0 0], 'Color', 'k', 'LineStyle', '--');  % Eje x
line([0 0], ylim, 'Color', 'k', 'LineStyle', '--');  % Eje y