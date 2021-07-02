clc;
clear all;
disp('*********Pranshu Mishra*********');
disp('*********19070125062*********');
disp('*********Spnm lab ESE ASS. Q.4*********');
disp('*********Simpsons 3/8 Rule*********');
syms x;
a=input('Enter the lower limit a=');
b=input('Enter the upper limit b=');
h=input('Enter the stepsize h=');
w=input('w =');
f=inline(w);
n=(b-a)/h;
disp('-------------------------------------');
disp('i              x               result');
disp('-------------------------------------');
sumo=0;  
sume=0;  
for i=2:n-1
    x=a+(i-1)*h;
    if rem(i,3)==0
        sume=sume+2*f(x);
    else 
        sumo=sumo+3*f(x);
    end
    result=(3*h/8)*(f(a)+f(b)+sumo+sume);
    s=sprintf('%3.0f     %8.8f      %8.8f', i, x, result);
    disp(s);
end
result;