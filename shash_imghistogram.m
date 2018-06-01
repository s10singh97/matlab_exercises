%{
SHASHWAT SINGH
2017KUCP1054
PROGRAM TO MAKE HISTOGRAM OF AN IMAGE WITHOUT USING HISTOGRAM FUNCTION
FILE NAME : shash_imghistogram.m
%}

clc
clear all
close

figure(1)
img1 = imread('lam2.jpg');
imshow(img1);

figure(2)
img2 = rgb2gray(img1);
imshow(img2);

figure(3)
aa = unique(img2);
aa = aa';
bb = zeros(1, numel(aa));
[row col] = size(img2);
for ii = 1:row
    for jj = 1:col
        temp = img2(ii,jj);
        for kk = 1:numel(bb)
            if temp == aa(kk)
                bb(kk) = bb(kk) + 1;
            end
        end
    end
end
cc = 0:(size(bb,2)- 1);
plot(cc,bb)