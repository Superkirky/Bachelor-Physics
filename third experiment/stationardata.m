function [Y, FWHMreturn] = stationardata(filsti) 
data = importdata(filsti);
x = data.data(:,1);
y = data.data(:,2);
y(x>710) = [];
x(x>710) = [];
[pks, locs, w] = findpeaks(y,x,'SortStr','descend','NPeaks',6,'MinPeakDistance',10);

%figure
%hold on
% med baggrund
%plot(x,y,'b.')
%plot(locs,pks,'ko')
% uden baggrund
baggrundx = x<370;
baggrund = mean(y(baggrundx));
%figure
%hold on
%plot(x,y-baggrund,'b.')
%plot(locs,pks-baggrund,'ko')

% fit til gauss efter baggrund er fjernet.
y = y-baggrund;
pks = pks - baggrund;

a_values = zeros([1 6]);
b_values = zeros([1 6]);
c_values = zeros([1 6]);
FWHM = zeros([1 6]);
centroid_afstande = zeros([1 6]);
FWHMreturn = [];
Y=[];
n = length(w);
parfor i = 1:n
    lowerlimit = locs(i)-3;
    upperlimit = locs(i)+3;
    xakse = x(x<upperlimit & x>lowerlimit);
    y_medxakse = y(x<upperlimit & x>lowerlimit);
    F = fit(xakse,y_medxakse,'gauss2');
    
    if abs(F.b1-F.b2) > 4
         
        
    elseif F.a1<500 & F.a2<1000 %F.a1<500 & F.a2<1000
        if F.b1 < F.b2 & F.a1>0
                F2 = fit(xakse(xakse<(F.b1+0.5)),y_medxakse(xakse<(F.b1+0.5)),'gauss1');
                plot(F2,'b',xakse(xakse<(F.b1+0.5)),y_medxakse(xakse<(F.b1+0.5)))
                a_values(i) = F2.a1;
                b_values(i) = F2.b1;
                c_values(i) = F2.c1;
                FWHM(i) = 2*sqrt(log(2))*F2.c1;
        end
        
     elseif F.b1 < F.b2 && F.a1<70000 && F.a1>0
        1;
        F2 = fit(xakse(xakse<(F.b1+0.5)),y_medxakse(xakse<(F.b1+0.5)),'gauss1');
        a_values(i) = F2.a1;
        b_values(i) = F2.b1;
        c_values(i) = F2.c1;
        FWHM(i) = 2*sqrt(log(2))*F2.c1;  
         
     elseif F.a1 > 70000  && F.a2 < 70000
        2;
        F2 = fit(xakse(xakse<(F.b1+0.5)),y_medxakse(xakse<(F.b1+0.5)),'gauss1');
        %plot(F2,'b',xakse(xakse<(F.b1+0.5)),y_medxakse(xakse<(F.b1+0.5)))
        a_values(i) = F2.a1;
        b_values(i) = F2.b1;
        c_values(i) = F2.c1;
        FWHM(i) = 2*sqrt(log(2))*F2.c1;
        
     elseif F.b1 > F.b2
        
        if F.a2>0
        F2 = fit(xakse(xakse<(F.b2+0.5)),y_medxakse(xakse<(F.b2+0.5)),'gauss1');
        plot(F2,'b',xakse(xakse<(F.b2+0.5)),y_medxakse(xakse<(F.b2+0.5)))
        a_values(i) = F2.a1;
        b_values(i) = F2.b1;
        c_values(i) = F2.c1;
        FWHM(i) = 2*sqrt(log(2))*F2.c1;
        else
        F2 = fit(xakse(xakse<(F.b1+0.5)),y_medxakse(xakse<(F.b1+0.5)),'gauss1');
        plot(F2,'b',xakse(xakse<(F.b1+0.5)),y_medxakse(xakse<(F.b1+0.5)))
        a_values(i) = F2.a1;
        b_values(i) = F2.b1;
        c_values(i) = F2.c1;
        FWHM(i) = 2*sqrt(log(2))*F2.c1;
        end
        
    else
        
    end
end
[Y, I] = sort(b_values);% sortere peaks så de er i stigende bølgelængde
FWHMreturn = FWHM(I);
