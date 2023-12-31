% Define data points for x and y coordinates
x=[3.125 3.50 4.00 3.25 3.125 3.60 4.00 4.125 4.20 4.0 4.0 4.50];
y=[2.000 2.75 2.75 2.50 1.250 0.75 1.25 1.750 2.80 2.5 1.5 0.75];

n=length(x);
t= 0:n-1; % Parametric coordinate t
tt= 0:0.01:n-1; % More dense coordinate tt for spline interpolation

% Compute spline interpolation
xx= spline(t,x,tt);
yy= spline(t,y,tt);

% Plot settings
figure(1)
plot(xx,yy,'k','Linewidth',1.5) % plot spline
hold on 
plot (x,y,'bo','MarkerFaceColor','b') % plot data points
axis([-0.2 6 -0.2 4.5])
grid on
title('Spline Interpolation of Cursive a')
xlabel('x')
ylabel('y')
set(gca,'FontSize',10,'LineWidth',1)
grid on