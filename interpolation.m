clc;
clear all;
disp('******Pranshu Mishra*******')
disp('******19070125062*******')
disp('***Interpolation by Newton;s Forward difference formula***')
n=input('Enter the no. of data points n=');
h=input('Enter the step size h=');
x=input('Enter the data x=');
y=input('Enter the data y=');
x_reqd=input('Enter X for which value of Y is sought=');
p=(x_reqd-x(1))/h;
