%{
SHASHWAT SINGH
2017KUCP1054
PROGRAM TO GENERATE A 3X3 RANDOM MATRIX AND CONVERT AND 
STORE IT'S BINARY EQUIVALENT IN EIGHT DIFFERENT MATRIX
FILE NAME : shash_imgbeta.m
%}

clc
clear all
close all

aa = round(rand(3)*255)
bb = zeros(3,3,8);
ee = 8;
for ii = 1:3
    for jj = 1:3
        while aa(ii,jj)
            bb(ii,jj,ee) = rem(aa(ii,jj), 2);
            aa(ii,jj) = floor(aa(ii,jj)/2);
            ee = ee - 1;
        end
        ee = 8;
    end
end
bb
