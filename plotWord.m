function plotWord(inputString)

%Initializing a figure 
figure;
hold on;

%Initializing x_position to make sure letters plotted be next to each other
x_position=0;

for i=1:length(inputString)
    currentletter=inputString(i);

 switch(currentletter)
     case 'a'
% Define data points for x and y coordinates
x=[0.5 0.75 1.25 0.75 0.5 0.8 1.25 1.4 1.5 1.8 2] + x_position;
y=[1 1.25 1.2 1.25 0.75 0.25 0.7 1.2 0.25 0.3 1];

     case 'l'
% Define data points for x and y coordinates
x=[0.5 0.65 0.7 0.6 0.6 0.7 1 1.2 1.2]+ x_position;
y=[1 1.4 1.8 1.5 1 0.4 0.4 0.7 1];

     case 'm'
% Define data points for x and y coordinates
x=[0.50 0.70 0.60 0.70 1.00 1.20 1.40 1.60 1.90 2.10 2.20 2.50 2.70]+ x_position;
y=[1.00 1.20 1.30 0.25 1.30 1.40 0.25 1.00 1.30 1.10 0.25 0.40 1.00];

     case 'o'
% Define data points for x and y coordinates
x=[0.50 0.40 1.00 1.40 1.00 0.50 1.00 1.40 1.80]+x_position;
y=[1.00 0.60 0.25 0.80 1.40 1.10 0.60 0.50 1.00];

     case 'n'
% Define data points
x = [0.5 0.5 0.5 0.5 0.7 0.8 1 1.2 1.2 1.4 1.8 2]+x_position;
y = [1 1.4 0.6 0.3 0.8 1 1.3 1 0.6 0.3 0.6 1];

     case 'd'
% Define data points
x = [0.5 0.9 0.5 0.4 0.5 1 1.3 1.3 1.3 1.7 1.9]+x_position;
y = [1 1.25 1 0.6 0.3 0.4 1.8 1.2 0.4 0.45 1];
 end

n = length(x);
t = 0:n-1;
tt = 0:0.01:n-1;

xx = spline(t, x, tt);
yy = spline(t, y, tt);

plot(xx, yy, 'k', 'LineWidth', 1.5)
x_position=max(xx)-0.5;
end

grid on
title('Spine Interpolation of Cursive word')
xlabel('x')
ylabel('y')
set(gca, 'FontSize', 10, 'LineWidth', 1)

end

