%% Problem 1.1
%  given is x(t) for t>=0

clc, clear all, close('all');

%first plor x(t) for t = 0 to 10
t = linspace(0,10,1000000);

x = exp(-2*t);
figure, plot(t,x), title('Plot of analog signal x(t)'),xlabel('time'),ylabel('Amplitude');

% Now sample x(t) with Ts = 0.1 sec to form xd1
Ts = 0.1;
t = 0:Ts:10;
xd1 = exp(-2*t);
figure, plot(t,xd1,'.','MarkerSize',10), title('Plot of analog signal x(t) sampled at Ts = 0.1 sec'),xlabel('time in n*Ts'),ylabel('Amplitude');

% Increase the sampling period to Ts = 1 s to form xd2
% Now sample x(t) with Ts = 1 sec to form xd2
Ts = 1.0;
t = 0:Ts:10;
xd2 = exp(-2*t);
figure, plot(t,xd2,'.','MarkerSize',10), title('Plot of analog signal x(t) sampled at Ts = 1 sec'),xlabel('time in n*Ts'),ylabel('Amplitude');

% Increase the sampling period to Ts = 4 s to form xd3
% Now sample x(t) with Ts = 4 sec to form xd3
Ts = 4.0;
t = 0:Ts:10;
xd3 = exp(-2*t);
figure, plot(t,xd3,'.','MarkerSize',10), title('Plot of analog signal x(t) sampled at Ts = 4 sec'),xlabel('time in n*Ts'),ylabel('Amplitude');

% After comparing the three plots,
fprintf('The x(t) signal sampled at Ts = 1 sec is creates the best discrete version \n of the original analog signal that preserve the \nwaveform of the original signal and at the same time \n reduces the number of the sampled points.\n');
