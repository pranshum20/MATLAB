clc;
clear all;
disp('Name-Pranshu Mishra');
disp('PRN-19070125062');
disp('SPNM LAB ESE ASS. Q3')
disp('***Interpolation by Lagrange Formula***');
n=input('Enter the number of data points n=');
x=input('Enter the data x=');
y=input('Enter the data y=');
x_reqd=input('Enter X for which value of Y is sought');
sum=0;
for i=1:n
    nume=1;
    deno=1;
    for j=1:n
    if j~=1
       nume=nume*(x_reqd-x(j));
       deno=deno*(x(i)-x(j));
    end
    
    end
    sum=sum+nume/deno*y(1);
end
fprintf('/n The value of y at x=%5.5f is y = %5.5f\n',x_reqd,sum);