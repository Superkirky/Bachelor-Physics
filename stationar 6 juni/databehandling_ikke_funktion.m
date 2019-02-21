close all
data = importdata('punktum data/stationary0263punktum.txt');
x = data.data(:,1);
y = data.data(:,2);
[pks, locs, w] = findpeaks(y,x,'SortStr','descend','NPeaks',6,'MinPeakDistance',10);

baggrundx = x<370;
baggrund = mean(y(baggrundx));
figure
hold on
plot(x,y-baggrund,'b.')
plot(locs,pks-baggrund,'ko')

% fit til gauss efter baggrund er fjernet.
y = y-baggrund;
pks = pks - baggrund;

%a_values = zeros([1 6]);
%b_values = zeros([1 6]);
%c_values = zeros([1 6]);
%FWHM = zeros([1 6]);
n = length(w);
    for i = 1:n
    lowerlimit = locs(i)-4;
    upperlimit = locs(i)+4;
    xakse = x(x<upperlimit & x>lowerlimit);
    y_medxakse = y(x<upperlimit & x>lowerlimit);
    F = fit(xakse,y_medxakse,'gauss2')
    figure
    hold on
    plot(F,xakse,y_medxakse,'.')
    if F.b1 < F.b2 && F.a1<50000 && F.a1>0
        1;
        F2 = fit(xakse(xakse<(F.b1+0.5)),y_medxakse(xakse<(F.b1+0.5)),'gauss1');
        plot(F2,'b',xakse(xakse<(F.b1+0.5)),y_medxakse(xakse<(F.b1+0.5)))
        a_values(i) = F2.a1;
        b_values(i) = F2.b1;
        c_values(i) = F2.c1;
        FWHM(i) = 2*sqrt(log(2))*F2.c1;
        
     elseif abs(F.b1-F.b2) > 5
        2
     elseif F.a1 > 10000   && F.a2 < 10000
        2;
        F2 = fit(xakse(xakse<(F.b1+0.5)),y_medxakse(xakse<(F.b1+0.5)),'gauss1');
        plot(F2,'b',xakse(xakse<(F.b1+0.5)),y_medxakse(xakse<(F.b1+0.5)))
        a_values(i) = F2.a1;
        b_values(i) = F2.b1;
        c_values(i) = F2.c1;
        FWHM(i) = 2*sqrt(log(2))*F2.c1;
        
     elseif F.a2 > F.a1 && F.a2>0
        3;
        F2 = fit(xakse(xakse<(F.b2+0.5)),y_medxakse(xakse<(F.b2+0.5)),'gauss1');
        plot(F2,'b',xakse(xakse<(F.b2+0.5)),y_medxakse(xakse<(F.b2+0.5)))
        a_values(i) = F2.a1;
        b_values(i) = F2.b1;
        c_values(i) = F2.c1;
        FWHM(i) = 2*sqrt(log(2))*F2.c1;
        
    
        
%     elseif F.a2 > 60000
%         3
%      % F3 = @(x) F.a2.*exp(-((x-F.b2)./F.c2).^2);  
%       %  y_medxakse = y_medxakse - F3(xakse);
%         
%         F2 = fit(xakse(xakse<(F.b1+0.5 & y_medxakse>0)),y_medxakse(xakse<(F.b1+0.5 & y_medxakse>0)),'gauss1')
%         plot(F2)
%         plot(F2,xakse(xakse<(F.b1+0.5 & y_medxakse>0)),y_medxakse(xakse<(F.b1+0.5 & y_medxakse>0)),'.')
%         a_values(i) = F2.a1;
%         b_values(i) = F2.b1;
%         c_values(i) = F2.c1;
%         FWHM(i) = 2*sqrt(log(2))*F2.c1;
%         
    else
%         4
%         
%         F2 = fit(xakse(xakse<(F.b2+0.5)),y_medxakse(xakse<(F.b2+0.5)),'gauss1')
%         a_values(i) = F2.a1;
%         b_values(i) = F2.b1;
%         c_values(i) = F2.c1;
%         FWHM(i) = 2*sqrt(log(2))*F2.c1;
    end 
end
% 
% [Y, I] = sort(b_values);% sortere peaks så de er i stigende bølgelængde
% FWHMreturn = FWHM(I);