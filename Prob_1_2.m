% Problem 1_2

clc, clear all, close('all');
load p_1_2.mat
whos
figure,plot(x1);title('Plot of x1(t)');

% Manual measurement of one time period of x1
fprintf('\nTime period T = %f\n',(16-4));
% Calculate dominant freq of variation
fprintf('\nDominant Frequency of Variation = %f\n',1/ (16-4));

% plot x2(t) 
figure,plot(x2);title('Plot of x2(t)');
% Manually calculate the slope of the x2(t) signal
y2 = 27.06; x2 = 54;
y1 = 19.42; x1 = 39;
delta_x = x2 - x1;
delta_y = y2 - y1;
slope1 = atan(delta_y/delta_x);  
fprintf('Slope of x2(t) is %f\n',slope1);

% plot x3(t) 
figure,plot(x3);title('Plot of x3(t)');
% Manually calculate the slope of the x3(t) signal
y2 = 646.5; x2 = 62;
y1 = 326.9; x1 = 29;
delta_x = x2 - x1;
delta_y = y2 - y1;
slope2 = atan(delta_y/delta_x);
fprintf('Slope of x3(t) is %f\n',slope2);

disp('Slopes of both x2(t) and x3(t) signals are more than 5.0');
