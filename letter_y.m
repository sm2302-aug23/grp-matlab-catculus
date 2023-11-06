% Define data points
x = [0.5 0.5 0.6 1.2 1.3 1.3 1.3 0.6 0.7 1.5 1.9];
y = [3 2.5 2 2.5 3 1.6 0.8 0.5 1.3 2.3 2.9];

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
title('letter y')
xlabel('x')
ylabel('y')
set(gca, 'FontSize', 10, 'LineWidth', 1)
grid on




