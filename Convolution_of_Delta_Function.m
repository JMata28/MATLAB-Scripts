%The following code simulates the convolution between function x
%and a delta function. 

n = 0:3;                             %Create vector from zero to three
lengthn = length(n);                 %Obtain length from vector n
delta = [1 zeros(1, lengthn-1)];     %Simulate delta[n]
x = ones(1,4);                       %Make x a vector of four values of 1
lengthx = length(x);                 %Obtain length from vector x
z = conv(x,delta);                   %Convolve both x and delta signals

%N is the number of values that the convolution result will have
%N is equal to the sum of the length of both vectors minus one 

N = lengthn + lengthx;
M = 0:N-2;            %Create vector to be the x axis that z will be plotted against.
                      %The 2 is subtracted from N to get the same vector dimensions as z


stem(M, z);                         %Plot z
title({'Convolution of x[n]*delta[n]'}); %Define title
xlim([-1 9]);                       %Limit of x axis 
ylim([-1 2]);                       %Limit of y axis
grid on;                            %Add a grid to the graph 

%The results agree with the theoretical expectation, since any signal x[n] convolved with a
%delta function is expected to result in the same signal x[n]
