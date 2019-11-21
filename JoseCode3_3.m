%The purpose of the following script of code simulates the plot of the 
%Fourier Series coefficients Cn of the function f(x) in slide 19. 
%After some derivation, the equation for Cn is Cn=(Tp/T)sinc((n*Tp)/T).

T = 40;        %Define the period T of the function
Tp= T/4;      %Define the width of the "box" in the function
              %As seen in the graph of x(t), the width is a fourth of the period
W = (2*pi)/T; %Define the frequency of the function
k = -20:20;     %Define the vector from one to fifty
Wk = W.*k;     %Define the x axis for the sinc graph
h = -20:0.001:20; %Define a vector like k but with many other points so that the plot 
                  %is continuous 
Wh = W.*h;        %Define the x axis for the Fourier Transform

FT = (Tp/T)*sinc((h*Tp)/T);   %Calculate the Fourier Transform of the function 
Cn = (Tp/T)*sinc((k*Tp)/T);   %Calculate the Fourier Series Coefficients

figure(1)
hold on;
plot(Wh, FT);
stem(Wk, Cn);
title('Fourier Series Coefficients of the Function f(x)');
xlabel('W*k');
ylabel('Cn');
%ylim([-0.1 0.3]);
hold off; 