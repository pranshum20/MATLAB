clc;
clear all;
disp('*********Pranshu Mishra*********');
disp('*********19070125062*********');
disp('*********Spnm lab ESE ASS. Q.3*********');
disp('*********Interpolation by forward difference formula*********');
n=input('Enter the number of data points n=');
h=input('Step size h=');
x=input('Enter the data x=');
y=input('Enter the data y=');
x_reqd=input('Enter X for which value of Y is sought');
p=(x_reqd-x(1))/h;
for i=1:n
    diff(i,1)=y(i);
end
%%Calculate the difference table
for j=2:n
    for i=1:n-j+1
        diff(i,j)=diff(i+1,j-1)-diff(i,j-1);
    end
end
ans=y(1);
for i=1:n-1
term=1;
    for j=1:i
        term=term.*(p-j+1)/j;
end
ans=ans+term*diff(1,i+1);
end
fprintf('\n the value at x=%f=%f',x_reqd, ans);