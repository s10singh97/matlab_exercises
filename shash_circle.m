%{
SHASHWAT SINGH
2017KUCP1054
PROGRAM TO PLOT A UNIT CIRCLE
FILE NAME : shash_circle.m
%}

clc
clear all
close all

aa = 0:0.0001:1;
xx = cos(2*pi*aa);
yy = sin(2*pi*aa);
plot(xx,yy)
title('UNIT CIRCLE')
grid on