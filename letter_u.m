% Define data points
x = [2.25 2.25 2.25 2.75 3.25 3.45 3.75 3.85 4.25];
y = [2.5 2.0 1.25 1.5 2.25 1.5 1.1 1.75 2.5];

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




