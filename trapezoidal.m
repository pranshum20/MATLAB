clc;
clear all
disp('Pranshu mishra');
disp('Interpolation by trapezoidal rule formula');
disp('---------------------------------------------------------');
syms x;
a=input('Enter the lower limit of the integration a= ');
b=input('Enter the upper limit of the integration b= ');
n=input('Enter the step size n= ');
f=input('f=');
f=inline(f);
disp('-----------------------------------------')
disp('i                 x                  integral')
disp('-----------------------------------------')
h=(b-a)/n;
sum=0;
for i=1:n-1
    x=a+i*h;
    sum = sum +f(x);
    result = h*(f(a)+ 2*sum+ f(b))/2;
    fprintf('%3f               %8.8f          %8.8f \n', i, x, result);
end
disp('-----------------------------------------')
fprintf('The numerical integration is =%8.8f \n',result);

