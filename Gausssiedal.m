% Gauss-Siedal method
% Solve the system of equation using  Gauss-Siedal method
clear all 
clc 
diary('Gauss-Siedal .txt')
disp('Name : Pranshu Mishra')
disp('Prn : 19070125062')
disp('Batch : 2019-23')
disp('Q.1: Write  a  MATLAB  code  for  Gauss-Jacobi Methodand in  MATLABand  comparethe.')
n=input ('Enter the number of variables')
A= input(' Enter the matrix A=');
b=input('Enter the vector b=');
[m,n]=size(A);
if m~=n
    fprintf("A is not a square matrix");
    return;
end 
for i=1:m
    row=abs(A(i,:));
    d=sum(row)-row(i);
    if d>=row(i)
        fprintf('\n A is not a diagonally dominant');
    end 
end
x=input('Enter the initial Approximation')
disp('---------------------------------------')
disp('iteration     x(1)      x(2)     x(3)' )
disp('---------------------------------------')
for iter=1:4
    for i=1:n
        num=b(i,end)-A(i,1:i-1)*x(1:i-1)-A(i, i+1:n)*x(i+1:n);
        den=A(i,i);
        x(i)=num/A(i,i);
    end
    s=sprintf('\n %3.0f    %3.8f    %3.8f   %3.8f', iter, x(1), x(2), x(3));
    disp(s);
end
fprintf("\n Solution for the given system of equation are :\n");
disp(x)
disp('--------------------')
diary('off');
    
