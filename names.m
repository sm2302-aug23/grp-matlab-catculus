% Define data points for x and y coordinates for Sur
x1=[1.5 1 0.5 1.25 1.5 1 0.5 0.75 2.25 2.25 2.25 2.75 3.25 3.45 3.75 3.85 4.25 4.75 4.5 5.25 5.0 5.25 5.75];
y1=[3.5 4 3 2 1.25 0.25 1 1.75 2.5 2.0 1.25 1.5 2.25 1.5 1.1 1.75 2.5 3.0 2.70 2.75 2.0 1.0 1.5];

n1=length(x1);
t1= 0:n1-1; % Parametric coordinate t
tt1= 0:0.01:n1-1; % More dense coordinate tt for spline interpolation

% Compute spline interpolation for Sur
xx1= spline(t1,x1,tt1);
yy1= spline(t1,y1,tt1);

% Define data points for x and y coordinates for lia
x2=[0.50 0.75 1.40 1.50 1.25 1.00 1.125 1.50 1.75 2.40 2.50 2.25 2.125 2.50 2.75 3.125 3.50 4.00 3.25 3.125 3.60 4.00 4.125 4.20 4.0 4.0 4.50];
y2=[1.25 1.75 3.25 3.75 3.50 2.25 1.000 0.75 1.00 2.25 2.75 2.50 1.250 0.75 1.00 2.000 2.75 2.75 2.50 1.250 0.75 1.25 1.750 2.80 2.5 1.5 0.75];

n2=length(x2);
t2= 0:n2-1; % Parametric coordinate t
tt2= 0:0.01:n2-1; % More dense coor tt fir spline interpolation

% Compute spline interpolation for lia
xx2= spline(t2,x2,tt2);
yy2= spline(t2,y2,tt2);

% Define data points for x and y coordinates for Syir
x3 = [1.5 1 0.5 1.25 1.4 1 0.5 0.75 2.25 2.25 2.4 3 3 3 3 2.5 3.3 3.8 3.6 3.65 4 4.3 4.5 4.8 4.75 4.6 5.3 5.2 5.25 5.4 5.5 5.6];
y3 = [4.1 4.5 3.5 2.1 1.5 0.9 1.5 2.2 3 2.5 2 2.5 3 1.6 1 1.3 2.3 2.8 2.4 1.8 1.4 1.7 2.3 2.6 2.8 2.65 2.6 2.3 1.5 1.2 1.5 1.6];

n3 = length(x3);
t3 = 0:n3-1;
tt3 = 0:0.1:n3-1;

xx3 = spline(t3, x3, tt3);
yy3 = spline(t3, y3, tt3);



% Plot settings
figure(1)

% Plotting the Spline Interpolation of Cursive Sur
subplot(2,2,1)
plot(xx1,yy1,'k','Linewidth',1.5) % plot spline
hold on 
plot (x1,y1,'bo','MarkerFaceColor','b') % plot data points
axis([-0.2 6 -0.2 4.5])
grid on
title('Spline Interpolation of Cursive Sur')
xlabel('x')
ylabel('y')
set(gca,'FontSize',10,'LineWidth',1)
grid on

% Plotting the Spline Interpolation of Cursive lia
subplot(2,2,2)
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

% Plotting the Spline Interpolation of Cursive Syir
subplot(2,2,3)
plot(xx3, yy3, 'k', 'LineWidth', 1.5)
hold on
plot (x3, y3, 'bo', 'MarkerFaceColor', 'b')
axis([-0.2 6 -0.2 4.5])
grid on
title('Spline interpolation of cursive Syir')
xlabel('x')
ylabel('y')
set(gca, 'FontSize', 10, 'LineWidth', 1)
grid on
