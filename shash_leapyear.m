%{
SHASHWAT SINGH
2017KUCP1054
PROGRAM FOR CHECKING LEAP YEAR
FILE NAME : shash_leapyear.m
%}

clc
clear all
close all
%aa = input('Enter a year : ');
aa = 2016;
if rem(aa,4) == 0
    if rem(aa,100) == 0
        if rem(aa,400) == 0
            fprintf('This is a Leap Year\n');
        else
            fprintf('This is not a Leap Year\n');
        end
    else
        fprintf('This is a Leap Year\n');
    end
else
    fprintf('This is not a Leap Year');
end








