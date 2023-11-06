% Define data points for x and y coordinates
x=[0.50 0.40 1.00 1.40 1.00 0.50 1.00 1.40 1.80];
y=[1.00 0.60 0.25 0.80 1.40 1.10 0.60 0.50 1.00];

n=length(x);
t= 0:n-1; % Parametric coordinate t
tt= 0:0.01:n-1; % More dense coor tt fir spline interpolation

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
title('Spline Interpolation of Cursive letter o')
xlabel('x')
ylabel('y')
set(gca,'FontSize',10,'LineWidth',1)
grid on
