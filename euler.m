
%program for Euler method
clc
clear all
disp('Pranshu Mishra');
disp('19070125062');
disp('SPNM LAB ESE ASS. Q5')
disp('ODE by euler')
syms x y;
f=input('Enter te function of two variables  f(x,y)= ')
f=inline(f);
x0=input('Enter the initial value x0= ');
y0=input('Enter the initial value y0 at x0= ');
h=input('Increment for x that is h= ')
xn=input('Enter the final value= ')
n=(xn-x0)/h;
for i=1:n
       x=x0+h;
       y=y0+h*f(x0,y0);
       x0=x;
       y0=y;
       s=sprintf('\n %3.6f            %8.8f             %8.8f ', i,x,y);
       disp(s);
end
y