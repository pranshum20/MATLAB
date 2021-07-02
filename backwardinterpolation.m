clc
clear all;
disp('Name-Pranshu Mishra');
disp('PRN-19070125062');
disp('Interpolation by Backward difference formula');
n=input('Enter the number of data points n=');
h=input('Step size h=');
x=input('Enter the data x=');
y=input('Enter the data y=');
x_reqd=input('Enter X for which value of Y is sought');
p=(x_reqd-x(n))/h;
for i=1:n
    diff(i,1)=y(i);
end
%%Calculate the difference table
for j=2:n
    for i=n:-1:j
        diff(i,j)=diff(i,j-1)-diff(i-1,j-1);
    end
end
ans=y(n);
for i=1:n-1
term=1;
    for j=1:i
        term=term.*(p+j-1)/j;
end
ans=ans+term*diff(n,i+1);
end
fprintf('\n the value at x=%f=%f',x_reqd, ans);