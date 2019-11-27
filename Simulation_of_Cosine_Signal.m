%The following code simulates a cosine signal with a frequency of 60Hz
%and it shows the difference a phase shift of pi/2 makes by plotting 
%both sine functions together

n = linspace(0,5,100); %Create a vector with 100 values from 0 to 5.
W=2*pi*60;             %Define variable for angular frequency (in radians)
x=cos(W*n);            %Establish the cosine function with frequency W
y=cos((W*n)+(pi/2));   %Establish the cosine function with frequency W and phase pi/2.

hold on;               %Prevent new stem plots from replacing other plots
stem(n,x);             %Plot x[n]
stem(n,y);             %plot y[n]
hold off;
title('Simulation of cos(2*pi*60) in 100 Points');    %Set title
ylim([-2 2]);                                         %Define limit of the y axis
ylabel('cos(2*pi*60*n)');                             %Set label for the y axis
xlabel('n');                                          %Set label for the x axis
legend('x[n]', 'y[n]');                               %Define the legend for the first stem 
                                                      %plot to be 'x[n]' and that of the second plot to be 'y[n}'
