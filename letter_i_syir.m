% Define data points
x = [3.6 3.6 3.65 4 4.3 4.5];
y = [2.8 2.4 1.8 1.4 1.7 2.3];

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
title('letter i')
xlabel('x')
ylabel('y')
set(gca, 'FontSize', 10, 'LineWidth', 1)
grid on




