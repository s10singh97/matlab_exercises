%{
SHASHWAT SINGH
2017KUCP1054
PROGRAM DEPICTING IMAGE PROCESSING
FILE NAME : shash_imgpro.m
%}

clc
clear all
close all

figure(1)
img1 = imread('lam1.jpg');
imshow(img1);

figure(2)
img2 = rgb2gray(img1);
imshow(img2);

figure(3)
[row col] = size(img2);
for ii = 1:row
    for jj = 1:col
        if img2(ii,jj) > 120
            img3(ii,jj) = 255;
        else
            img3(ii,jj) = 0;
        end
    end
end
imshow(img3);

figure(4)
img4 = histeq(img2);
imshow(img4);