%The following script simulates a simple convolution by using the 
%conv() function included in MATLAB 

x = ones(1,4);      %Make x a vector of four values of 1
N = 2*length(x)-1;  %Figure out length of convolution answer 
p = 0:N-1;          %Create vector starting at zero to plot y against
y = conv(x, x);     %Convolve x with itself and store in vector y 
stem(p, y);         %Plot y
title({'Convolution of x[n]*x[n] using conv()'}); %Define title
xlim([-2 8]);       %Limit of x axis 
ylim([-1 5]);       %Limit of y axis
grid on;            %Add a grid to the graph 

