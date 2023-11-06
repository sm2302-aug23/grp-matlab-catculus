% Define data points for x and y coordinates
x2=[0.50 0.75 1.40 1.50 1.25 1.00 1.125 1.50 1.75 2.40 2.50 2.25 2.125 2.50 2.75 3.125 3.50 4.00 3.25 3.125 3.60 4.00 4.125 4.20 4.0 4.0 4.50];
y2=[1.25 1.75 3.25 3.75 3.50 2.25 1.000 0.75 1.00 2.25 2.75 2.50 1.250 0.75 1.00 2.000 2.75 2.75 2.50 1.250 0.75 1.25 1.750 2.80 2.5 1.5 0.75];

n2=length(x2);
t2= 0:n2-1; % Parametric coordinate t
tt2= 0:0.01:n2-1; % More dense coordinate tt for spline interpolation

% Compute spline interpolation
xx2= spline(t2,x2,tt2);
yy2= spline(t2,y2,tt2);

% Plot settings
figure(2)
plot(xx2,yy2,'k','Linewidth',1.5) % plot spline
hold on 
plot (x2,y2,'bo','MarkerFaceColor','b') % plot data points
axis([-0.2 6 -0.2 4.5])
grid on
title('Spline Interpolation of Cursive lia')
xlabel('x')
ylabel('y')
set(gca,'FontSize',10,'LineWidth',1)
grid on