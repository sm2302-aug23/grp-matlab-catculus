% Define data points for x and y coordinates
x=[1.5 1 0.5 1.25 1.5 1 0.5 0.75 2.25 2.25 2.25 2.75 3.25 3.45 3.75 3.85 4.25 4.75 4.5 5.25 5.0 5.25 5.75];
y=[3.5 4 3 2 1.25 0.25 1 1.75 2.5 2.0 1.25 1.5 2.25 1.5 1.1 1.75 2.5 3.0 2.70 2.75 2.0 1.0 1.5];

n=length(x);
t= 0:n-1; % Parametric coordinate t
tt= 0:0.01:n-1; % More dense coordinate tt for spline interpolation

% Compute spline interpolation
xx= spline(t,x,tt);
yy= spline(t,y,tt);

% Plot settings
figure(4)
plot(xx,yy,'k','Linewidth',1.5) % plot spline
hold on 
plot (x,y,'bo','MarkerFaceColor','b') % plot data points
axis([-0.2 6 -0.2 4.5])
grid on
title('Spline Interpolation of Cursive Sur')
xlabel('x')
ylabel('y')
set(gca,'FontSize',10,'LineWidth',1)
grid on