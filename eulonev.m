%program for Euler method
clc
clear all
disp('Pranshu Mishra');
disp('19070125062');
disp('SPNM LAB ESE ASS. Q5')
disp('ODE by euler')
syms x y;
f=input('Enter te function  f(x,y)= ');
f=inline(f);
x0=input('Enter the initial value of x0 = ');
y0=input('Enter the initial value of y0 = ');
xn=input('Enter the final value xn = ');
h=input('Increment for x that is h= ');
n=(xn-x0)/h;
for i=1:n
       x=x0+h;
       y=y0+h*f(x0,y0);
       for j=1:10
           yr=y0+(h/2)*(f(x0,y0)+f(x,y);
       y0=yr;
       x0=x;
       end
       y0=y;
       x0=x
       s=sprintf('\n %3.6f            %3.6f             %3.6f ', i,x,y);
       disp(s);
end
y;
