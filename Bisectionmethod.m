% Bisection method
% Find the roots of equation using Bisection method
clear all 
clc 
disp('Name : Pranshu Mishra')
disp('Prn : 19070125062')
disp('Batch : 2019-23')
disp(' SPNM lab ESE ASS. Q-2')
disp('BISECTION METHOD')
f=input('Enter function:=','s');
f=inline(f);
a=input('Enter the first value of guess interval:=');
b=input('Enter the end value of guess interval:=');
if(f(a)*f(b)<0)
 else
    fpritn('The guess is incorrect! Enter new guesses \n');
   a=input('Enter the first value of guess interval:=');
   b=input('Enter the end value of guess interval:=');
end
err= b-a;
disp('--------------------------')
disp('i   x   f(x)   err' )
disp('--------------------------')
for i=1:10
    
    c=(a+b)/2;
    if(f(c)==0)
        break;
    elseif(f(a)*f(c)<0)
        b=c
    else 
        a=c;
    end 
    err=b-a;
    s=sprintf('\n %3.0f, %8.3f, %8.3f, %8.3f', i, c, f(c), err);
    disp(s);
end
disp(sprintf('\n The required root is x =%8.8f',c))
disp('----------------------------')

