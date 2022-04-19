%All Variables

%Nyquist frequency and rate
Fn = 8;%Nyquist Frequency
Fn2 = 3;
Fn3 = 4;
Fn4 = 1;

%Nyquist rate
Fnr = 2*(Fn);

%Sampling Period
Sp = 5*(Fnr);%Sampling Frequency
Ts = 1/(Sp);%Sampling period
T = 1/(Fn);%General Time period

%Number of Samples
N = T/Ts; %Number of samples needed
n = 0:1:N+70; %Integer Index, this will be usually added with an extra number to increase sampling range. 
% Just adding one usually does not fill the entire graph, so trial and
% error must be used.

nTs = n * Ts; %Sampling Intervals
x_c = sin(2*pi*Fn*nTs) + cos(2*pi*Fn2*nTs) + sin(2*pi*Fn3*nTs) - sin(2*pi*Fn4*nTs); %summation of frequencies
% x_c = cos(2*pi*3*nTs) - sin(2*pi*18*nTs) %summation of frequencies
% involving only two frequencies. Unlike the above example which hosts four
% frequencies, this one only includes two.

%Second Part
t = 0:0.01:1;
x_c2 = sin(2*pi*Fn*t) + cos(2*pi*Fn2*t) + sin(2*pi*Fn3*t) - sin(2*pi*Fn4*t);
% x_c2 = cos(2*pi*3*t) - sin(2*pi*18*t)


% figure('units','normalized','outerposition',[0 0 1 1])
stem(nTs, x_c, 'linewidth', 2);
hold
plot(t, x_c2, 'linewidth', 2)
lgd = legend('Discrete Data', 'Continuous Data');
lgd.FontSize = 12;
set(gca,'XTick',[0:0.2:1.8]);
set(gca,'YTick',[-2:0.5:2]);
title('Time vs Magnitude','fontweight','bold','fontsize',16);
xlabel('Time','fontweight','bold','fontsize',15)
ylabel('Magnitude','fontweight','bold','fontsize',15)
grid