% Define data points
x = [1.5 1 0.5 1.25 1.4 1 0.5 0.75 2.25 2.25 2.4 3 3 3 3 2.5 3.3 3.8 3.6 3.65 4 4.3 4.5 4.8 4.75 4.6 5.3 5.2 5.25 5.4 5.5 5.6];
y = [4.1 4.5 3.5 2.1 1.5 0.9 1.5 2.2 3 2.5 2 2.5 3 1.6 1 1.3 2.3 2.8 2.4 1.8 1.4 1.7 2.3 2.6 2.8 2.65 2.6 2.3 1.5 1.2 1.5 1.6];

n = length(x);
t = 0:n-1;
tt = 0:0.1:n-1;

xx = spline(t, x, tt);
yy = spline(t, y, tt);

figure(1)
plot(xx, yy, 'k', 'LineWidth', 1.5)
hold on
plot (x, y, 'bo', 'MarkerFaceColor', 'b')
axis([-0.2 6 -0.2 4.5])
grid on
title('Spline interpolation of cursive Syir')
xlabel('x')
ylabel('y')
set(gca, 'FontSize', 10, 'LineWidth', 1)
grid on




