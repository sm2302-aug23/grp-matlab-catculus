% Define data points
x = [0.5 0.9 0.5 0.4 0.5 1 1.3 1.3 1.3 1.7 1.9];
y = [1 1.25 1 0.6 0.3 0.4 1.8 1.2 0.4 0.45 1];

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
title('letter d')
xlabel('x')
ylabel('y')
set(gca, 'FontSize', 10, 'LineWidth', 1)
grid on




