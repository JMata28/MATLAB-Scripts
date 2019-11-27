%Author: José Mata (JMata28)
%The purpose of the following script is to simulate
%u[n]-u[n-4] in the discrete domain and to see what happens as
%the amount of points N plotted decreases and increases

N=100                      %Define variable N (the number of points to be used)
n = linspace(-5,5,N);      %Create a vector with N values from -5 to 5
x = heaviside(n);          %Define the unit-step function with rise at zero (default)
y = heaviside(n-4);        %Define the unit-step function with a shift to the right of 4 units
z= x-y;                    %Subtract u[n]-u[n-4]
stem(n,z);                 %Make a discrete plot
title('Simulation of u[n]-u[n-4] using N Points');
ylim([-2 2]);              %Define the y-limits of the graph

%After running the code several times, it can be seen that 
%The greater N is, the area under the "box" is filled more
%As N approaches 0, the points become less so it looks more like unit step function with less
%points where the value is one. Also, in some occasions the rise of the value to one can be seen
%before the value actually reaches one since it doesn’t happen instantaneously.
