% Define data points for x and y coordinates
x=[0.5 0.75 1.25 0.75 0.5 0.8 1.25 1.4 1.5 1.8 2];
y=[1 1.25 1.2 1.25 0.75 0.25 0.7 1.2 0.25 0.3 1];

n=length(x);
t= 0:n-1; % Parametric coordinate t
tt= 0:0.01:n-1; % More dense coordinate tt fit spline interpolation

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