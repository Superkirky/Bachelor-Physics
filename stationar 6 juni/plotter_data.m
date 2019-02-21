close all
%  figur('Time [s]','Centroid location [nm]')
% plot(tid(fwhm11<1.5 & top11>350),top11(fwhm11<1.5 & top11>350),'.')
% 
% % top 2
% 
%  figur('Time [s]','Centroid location [nm]')
% plot(tid(fwhm2<1.5 & top22>400),top22(fwhm2<1.5 & top22>400),'.')
% %tid(1000:1001) = [];
% 

  %figur('Time [s]','Centroid location [nm]')
  %plot(tid(top33>501 & fwhm33<1.3),top33(top33>501 & fwhm33<1.3),'.')
  
 figur('Time [s]','Wavelength [nm]')
  %title('Peak located587 nm')
  plot(tid(fwhm44<1.1 & top44>580).*20,top44(fwhm44<1.1 & top44>580),'k.')

 %  figur('Time [s]','Centroid location [nm]')                          %
%   title('Peak located at 587 nm')
%   errorbar(tid(fwhm44<1.1 & top44>580),top44(fwhm44<1.1 & top44>580),fwhm44(fwhm44<1.1 & top44>580),'.')

  %figur('Time [s]','Centroid location [nm]')
 %plot(tid(fwhm55<1.1 & top55>660),top55(fwhm55<1.1 & top55>660),'.')

%  figur('Time [s]','Centroid location [nm]')
%  plot(tid(fwhm66<1.1&top66<707 & top66>700),top66(fwhm66<1.1&top66<707 & top66>700),'.')

 I_filt =top11(fwhm11<1.5 & top11>350);
 I_tid = tid(fwhm11<1.5 & top11>350);
 II_filt =top22(fwhm2<1.5 & top22>400);
 II_tid = tid(fwhm2<1.5 & top22>400);
 III_filt =top33(top33>501 & fwhm33<1.3);
 III_tid = tid(top33>501 & fwhm33<1.3);
 IV_filt =top44(fwhm44<1.1 & top44>580);
 IV_tid = tid(fwhm44<1.1 & top44>580);
 V_filt =top55(fwhm55<1.1 & top55>660);
 V_tid = tid(fwhm55<1.1 & top55>660);
 VI_filt =top66(fwhm66<1.1&top66<707 & top66>700);
 VI_tid = tid(fwhm66<1.1&top66<707 & top66>700);

 ny_tid = 20:20:1000;
 
 
 ny_bins = [];
 errors = [];
 for i = 20:20:1000
     filter = IV_filt;
     tiden = IV_tid;
     bin = sum(filter(tiden<=i & tiden>(i-20)))./(sum(tiden<=i & tiden>(i-20)));
     ny_bins = [ny_bins bin];
     X = mean(bin);
     app_us = sqrt(1./(size(filter(tiden<=i & tiden>(i-20)),2)-1)*sum((filter(tiden<=i & tiden>(i-20))-X).^2));
     Sn = app_us./sqrt(size(filter(tiden<=i & tiden>(i-20)),2));
     errors = [errors Sn];
 end
 % usikkerheder
 I_filt =top11(fwhm11<1.5 & top11>350);
 sI = sqrt(1./(size(I_filt,2)-1).*sum((I_filt-mean(I_filt)).^2));
 s_I = sI./sqrt(size(I_filt,2))
 
 II_filt =top22(fwhm2<1.5 & top22>400);
 sII = sqrt(1./(size(II_filt,2)-1).*sum((II_filt-mean(II_filt)).^2));
 s_II = sII./sqrt(size(II_filt,2))
 
 III_filt =top33(top33>501 & fwhm33<1.3);
 sIII = sqrt(1./(size(III_filt,2)-1).*sum((III_filt-mean(III_filt)).^2))
 s_III = sIII./sqrt(size(III_filt,2))
 
 IV_filt =top44(fwhm44<1.1 & top44>580);
 sIV = sqrt(1./(size(IV_filt,2)-1).*sum((IV_filt-mean(IV_filt)).^2))
 s_IV = sIV./sqrt(size(IV_filt,2));
 
 V_filt =top55(fwhm55<1.1 & top55>660);
 sV = sqrt(1./(size(V_filt,2)-1).*sum((V_filt-mean(V_filt)).^2))
 s_V = sV./sqrt(size(V_filt,2));
 
 VI_filt =top66(fwhm66<1.1&top66<707 & top66>700);
 sVI = sqrt(1./(size(VI_filt,2)-1).*sum((VI_filt-mean(VI_filt)).^2))
 s_VI = sVI./sqrt(size(VI_filt,2));
 
 
 all = [s_I s_II s_III s_IV s_V s_VI];
 
 figur('Peak Number','Uncertainty of wavelength [nm]')
 axis([0 6.5 0 1.4E-3])
 plot([1:6],all,'k.','MarkerSize',20)
 
 figur('Time [s]','Wavelength [nm]')
 %title('Peak located at 587 nm')
 axis([0 20000 587.454 587.463])
 errorbar(ny_tid.*20,ny_bins,errors,'k.','MarkerSize',10)
 h1 = refline(0,mean(ny_bins));
 legend('Data','Mean') 
 
% figur('Time [s]','Centroid location [nm]')
% plot(tid(top11<450 & fwhm1<1.3),fwhm1(top11<450 & fwhm1<1.3),'.')
% figure
% plot(tid(fwhm2<1.3),fwhm2(fwhm2<1.3),'.')
% figure
% plot(tid(fwhm3<1.3),fwhm3(fwhm3<1.3),'.')
 figur('Time [s]','FWHM [nm]')
 %title('Peak located at 587 nm')
  plot(tid(fwhm4<1).*20,fwhm4(fwhm4<1),'k.')
%  figure
%  plot(tid(fwhm5<1.1),fwhm5(fwhm5<1.1),'.')
%  figure
%  plot(tid(fwhm6<1.1),fwhm6(fwhm6<1.1),'.')

  