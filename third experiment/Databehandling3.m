%clear all
close all
numfiles = taelfiler('1.1/');
top1 = zeros([1 numfiles-1]);
top2 = zeros([1 numfiles-1]);
top3 = zeros([1 numfiles-1]);
top4 = zeros([1 numfiles-1]);
top5 = zeros([1 numfiles-1]);
top6 = zeros([1 numfiles-1]);
fwhm1 = zeros([1 numfiles-1]);
fwhm2 = zeros([1 numfiles-1]);
fwhm3 = zeros([1 numfiles-1]);
fwhm4 = zeros([1 numfiles-1]);
fwhm5 = zeros([1 numfiles-1]);
fwhm6 = zeros([1 numfiles-1]);
n = numfiles-1;
for i = 1:n
    if i < 10
        navn = sprintf('1.12/twelve0%dpunktum.txt',i);
    elseif i < 100
        navn = sprintf('1.12/twelve%dpunktum.txt',i);
    else 
        navn = sprintf('punktum data/Vibration20april0%dpunktum.txt',i);
    end
    [topdata, FWHM] = stationardata(navn);
    %toppe = [toppe topdata]; % modtager de seks toppe værdier,
    top1(i) = topdata(1);
    fwhm1(i) = FWHM(1);
    top2(i) = topdata(2);
    fwhm2(i) = FWHM(2);
    top3(i) = topdata(3);
    fwhm3(i) = FWHM(3);
    top4(i) = topdata(4);
    fwhm4(i) = FWHM(4);
    top5(i) = topdata(5);
    fwhm5(i) = FWHM(5);
    top6(i) = topdata(6);
    fwhm6(i) = FWHM(6);
    i
end
tid = 0:numfiles-2;
top11 = top1;
top22 = top2;
top33 = top3;
top44 = top4;
top55 = top5;
top66 = top6;
fwhm11 = fwhm1;
fwhm22 = fwhm2;
fwhm33 = fwhm3;
fwhm44 = fwhm4;
fwhm55 = fwhm5;
fwhm66 = fwhm6;

