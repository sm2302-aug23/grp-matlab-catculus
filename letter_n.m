% Define data points
x = [0.5 0.5 0.5 0.5 0.7 0.8 1 1.2 1.2 1.4 1.8 2];
y = [1 1.4 0.6 0.3 0.8 1 1.3 1 0.6 0.3 0.6 1];

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
title('letter n')
xlabel('x')
ylabel('y')
set(gca, 'FontSize', 10, 'LineWidth', 1)
grid on




