% Define data points for x and y coordinates
x=[0.50 0.75 1.40 1.50 1.25 1.00 1.125 1.50];
y=[1.25 1.75 3.25 3.75 3.50 2.25 1.000 0.75];

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
title('Spline Interpolation of Cursive l')
xlabel('x')
ylabel('y')
set(gca,'FontSize',10,'LineWidth',1)
grid on