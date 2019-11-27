%Author: José Mata (JMata28)
%The following code simulates the Fourier series representation of 
%the function f(x). The period is assumed to have a value of four. 
%It is clear from the graph of function x that the length of the "box"
%Where the value of f(x) is one, is two. 
%Running the code, we can see that the higher the value of k (the more summations there are),
%the more accurate the Fourier Series becomes as a representation of f(x).

clear %Clear the workspace

T=4;                              %Define period with a value of four
t=0:0.01:20;                      %Create a vector for time (from 0 to 20 in internvals of 0.01)
W = (2*pi)/T;                     %Calculate the frequency of the function (pi/2)

square1 = square(((2*pi)/4)*t);   %Creates a square wave. 2pi/4 was multiplied to make the period of the square wave 4
square2 = (square1 + 1)/2;        %This line uses the first square wave created, adds a value of one to raise it and divides it by two so its maximum value is still one.
x = zeros(1,length(t));           %Create a vector with all values of zero to later create the approximation of f(X)

%Simulate the Fourier Series sum
for k = 1:10                      %Go through the loop from 1 to 10, increasing every time by one
    ak = sin((pi*k)/2)/(pi*k);    %Calculate the value of ak obtained from manual calculations
    x = x + (2*ak *cos(k*W*t));   %Perform the sum for all values of k 
    y = x + 0.5;                  %Add the ak0 value, obtained from the manual calculations (one half)
end
figure
hold on;                          %Hold the plots that will be added to the same graph
 plot(t,y)                        %Plot the Fourier Series sum
 title('Simulation of Fourier Series for f(x)');     %Define title for the graph
 ylim([-0.5 1.5]);                %Define the y limits of the plot 
 xlim([0 11]);                    %Define the x limits of the plot
 xlabel('Time t)');               %Define the x axis label
 grid on;
 plot(t-1, square2, 'r')          %Plots the exact square function (the t+1 shifts the signal so it can be in the right place
hold off;                         %End the hold 
 
