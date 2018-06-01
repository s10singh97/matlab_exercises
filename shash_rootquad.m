%{
SHASHWAT SINGH
2017KUCP1054
PROGRAM TO FIND THE ROOTS OF A QUADRATIC EQUATION USING FUNCTION
FILE NAME : shash_rootquad.m
%}

clc
clear all
close all

fprintf('Enter the values of a, b, and c for the quadratic equation ax^2+ bx + c\n');
%a = input('Enter the value of a\n');
%b = input('Enter the value of b\n');
%c = input('Enter the value of c\n');
a = 1;
b = 3;
c = 2;
[r1 r2] = rootquad(a,b,c);
fprintf('First root is : %f\n');
r1
fprintf('Second root is : %f\n');
r2

%{
FUNCTION DEFININTION
function [op1 op2] = rootquad(x,y,z)
op1 = ((-y) + (sqrt(y*y - 4*x*z)))/(2*x);
op2 = ((-y) - (sqrt(y*y - 4*x*z)))/(2*x);
end
%}
