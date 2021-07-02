%Bisection method 
%Find the roots of equation using Newton Raphson Method 
clear all
clc
syms x;
disp('Name : Pranshu Mishra')
disp('Prn : 19070125062')
disp('Batch : 2019-23')
disp('Spnm lab ESE ASS. q2 ')
f=input('Enter function:=','s');
f=inline(f);
x0=input('Enter the intial value of Guess interval:=');
f1=diff(f(x));
df=inline(f1);
err=1;
disp('---------------------------------')
disp('i   x   f(x)   err' )
disp('--------------------------')
for i=1:10
    if df(x)==0
        disp('Entered function is not suitable')
        return
    end
    x=x0-f(x0)/df(x0);
    err=abs(x-x0);
    x0=x;
    s=sprintf('\n %3.0f, %8.3f, %8.3f, %8.3f', i, x, f(x), err);
    disp(s);
end
disp(sprintf('\n The required root is x =%8.8f',x))
disp('----------------------------')
