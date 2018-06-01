%{
SHASHWAT SINGH
2017KUCP1054
PROGRAM TO CONVERT A DECIMAL NUMBER INTO A BINARY EQUIVALENT MATRIX 
FILE NAME : shash_dec2bin.m
%}

clc
clear all
close all

%aa = input('Enter a number\n');
aa = 62
n = log(aa)/log(2);
if rem(n,1) == 0
    size = n + 1;
else
    size = floor(n) + 1;
end
bb = zeros(1, size);
cc = 1;
dd = 0;
while aa
    bb(size) = rem(aa,2);
    aa = floor(aa / 2);
    size = size - 1;
end
bb