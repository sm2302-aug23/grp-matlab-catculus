% Define data points for x and y coordinates
x=[0.5 0.65 0.7 0.6 0.6 0.7 1 1.2 1.2];
y=[1 1.4 1.8 1.5 1 0.4 0.4 0.7 1];

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