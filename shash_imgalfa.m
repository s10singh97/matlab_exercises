%{
SHASHWAT SINGH
2017KUCP1054
PROGRAM TO GENERATE A 3X3 RANDOM MATRIX AND TO GIVE A VALUE 1 TO 
NUMBERS GREATER THAN THE MIDDLE TERM OF THE MATRIX AND TO GIVE
VALUE 0 TO NUMBERS LESS THAN OR EQUAL TO THE MIDDLE ELEMENT. 
ALSO TO TRAVERSE THIS NEW MATRIX IN AN ANTICLOCKWISE MANNER
AND MULTIPLYING WITH POWER  OF 2 STARTING WITH 0 TO 7.
ALSO PRINTING THE SUM OF THE SEQUENCE OBTAINED FROM ABOVE 
AND REPLACING IT IN THE ORIGINAL MATRIX WITH ITS MIDDLE ELEMENT.
FILE NAME : shash_imgalfa.m
%}

clc
clear all
close all

aa = round(rand(3)*255)
bb = aa > aa(2,2)
[row col] = size(bb);
dd = zeros(1, (numel(bb) - 1));
cc = 1;
for ii = 2:-1:1
    dd(cc) = bb(ii,3);
    cc = cc + 1;
end
for jj = 2:-1:1
    dd(cc) = bb(1,jj);
    cc = cc + 1;
end
for ii = 2:3
    dd(cc) = bb(ii,1);
    cc = cc + 1;
end
for jj = 2:3
    dd(cc) = bb(3,jj);
    cc = cc + 1;
end
dd
ee = 0;
for ii = 0:7
    ee = ee + power(2,ii) * dd(ii + 1);
end
aa(2,2) = ee;
aa