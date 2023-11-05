% Define data points
x = [3.0 3.0 3.0 3.5 4.0 4.2 4.5 4.6 5.0];
y = [2.0 1.5 0.75 1.0 1.75 1.0 0.6 1.25 2.0];

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
title('letter u')
xlabel('x')
ylabel('y')
set(gca, 'FontSize', 10, 'LineWidth', 1)
grid on




