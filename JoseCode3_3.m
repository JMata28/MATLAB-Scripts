%The purpose of the following script of code is to simulate the 
%Fourier Transform of the function f(x) in slide 19. 
%After some derivation, the equation for Cn was found to be Cn=(Tp/T)sinc((n*Tp)/T).
%The Fourier Transform is the multiplicxation of Cn times the period T. 

T = 4*pi;               %Define the period T of the function
Tp= pi;                 %Define the width of the "box" in the function to be pi
W0 = (2*pi)/T;          %Define the frequency W0 of the function
k = -5*pi:W0:5*pi;      %Define the vector from -5pi to 5pi
h = -5*pi:0.001:5*pi;   %Define a vector with the range of k but with many other points so that the plot 
                        %is continuous.

FT = (Tp)*sinc((h*Tp)/T);   %Calculate the Fourier Transform of the function with thousands of points
Cn = (Tp)*sinc((k*Tp)/T);   %Calculate the Fourier Series Coefficients with a lower number of points that depend on Wo

%Plots both lines in the graph. 
figure(1)
hold on;
plot(h, FT);
stem(k, Cn);
title('Fourier Series Coefficients of the Function f(x)');
xlabel('W*k');
ylabel('Cn');
hold off; 
