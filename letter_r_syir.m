% Define data points
x = [0.5 0.65 0.7 0.6 1.1 1.3 1.25 1.2 1.3 1.4 1.45 1.6];
y = [1.5 1.8 2 1.8 1.8 1.75 1.5 1 0.5 0.45 0.55 0.85];

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
title('letter r')
xlabel('x')
ylabel('y')
set(gca, 'FontSize', 10, 'LineWidth', 1)
grid on




