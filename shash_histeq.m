%{
SHASHWAT SINGH
2017KUCP1054
PROGRAM FOR HISTOGRAM EQUALIZATION
FILE NAME : shash_histeq.m
%}

clc
clear all
close all

aa = [52,55,61,59,70,61,76,61;62,59,55,104,94,85,59,71;
    63,65,66,113,144,104,63,72;64,70,70,126,154,109,71,69;
    67,73,68,106,122,88,68,68;68,79,60,79,77,66,58,75;
    69,85,64,58,55,61,65,83;70,87,69,68,65,73,78,90]

bb = unique(aa);
bb = bb';
[row col] = size(aa);
cc = zeros(1,numel(bb));
for ii = 1:row
    for jj = 1:col
        temp = aa(ii,jj);
        for kk = 1:numel(bb)
            if temp == bb(kk)
                cc(kk) = cc(kk) + 1;
            end
        end
    end
end
cdf = zeros(1,numel(cc));
cdf(1,1) = cc(1,1);
for ii = 2:numel(cc)
    cdf(1,ii) = cc(ii) + cdf(ii - 1);
end
hh = zeros(1,numel(cdf));
for ii = 1:numel(hh)
    hh(ii) = round(((cdf(ii) - min(cdf))/((row * col) - 1)) * 255);
end
ll = zeros(row,col);
for ii = 1:row
    for jj = 1:col
        temp = aa(ii,jj);
        for kk = 1:numel(hh)
            if temp == bb(kk)
                ll(ii,jj) = hh(1,kk);
            end
        end
    end
end
ll
