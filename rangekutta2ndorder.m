clc
clear all
disp('---------------Pranshu Mishra -------------------')
disp('----------------19070125062 -------------------');
disp('Spnm lab ESE ASS. Q.5-');
disp('---------------Range-kutta 2nd order ---------------');
syms x y 
f=input('Enter the function  = ');
f=inline(f);
x0=input('Enter the initial value of x0 = ');
y0=input('Enter the initial value of y0 = ');
xn=input('Enter the final value of xn = ');
h=input('Enter the step size h = ');
n=(xn-x0)/h;
for i=1:n
    x=x0+h;
    k1=h*f(x0,y0);
    k2=h*f(x0+h,y0+k1);
    y=y0+(k1+k2)/2;
    x0=x;
    y0=y;
end
y
