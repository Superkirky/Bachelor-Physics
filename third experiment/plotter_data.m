close all
figur('Time [s]','Centroid location [nm]')
plot(tid(fwhm11<1.5 & top11>350),top11(fwhm11<1.5 & top11>350),'.')

% top 2

 figur('Time [s]','Centroid location [nm]')
plot(tid(fwhm2<1.5 & top22>400),top22(fwhm2<1.5 & top22>400),'.')
%tid(1000:1001) = [];

 figur('Time [s]','Centroid location [nm]')
 plot(tid(fwhm33<1.5 & top33>490),top33(fwhm33<1.5 & top33>490),'.')
 
 figur('Time [s]','Centroid location [nm]')
 plot(tid(fwhm44<1.5 & top44>560),top44(fwhm44<1.5 & top44>560),'.')
 
 figur('Time [s]','Centroid location [nm]')
 plot(tid(fwhm55<1.5 & top55>660),top55(fwhm55<1.5  & top55>660),'.')
 
 figur('Time [s]','Centroid location [nm]')
 plot(tid(fwhm66<1.5&top66<707 & top66>700),top66(fwhm66<1.5&top66<707 & top66>700),'.')

 I_filt =top11(fwhm11<1.5 & fwhm11>0 & top11>350);
 I_tid = tid(fwhm11<1.5 & fwhm11>0 & top11>350);
 II_filt =top22(fwhm2<1.5 & top22>400& fwhm22>0);
 II_tid = tid(fwhm2<1.5 & top22>400& fwhm22>0);
 III_filt =top33(top33>501 & fwhm33<1.3& fwhm33>0);
 III_tid = tid(top33>501 & fwhm33<1.3& fwhm33>0);
 IV_filt =top44(fwhm44<1.1 & top44>580& fwhm44>0);
 IV_tid = tid(fwhm44<1.1 & top44>580& fwhm44>0);
 V_filt =top55(fwhm55<1.1 & top55>660& fwhm55>0);
 V_tid = tid(fwhm55<1.1 & top55>660& fwhm55>0);
 VI_filt =top66(fwhm66<1.1&top66<707 & top66>700& fwhm66>0);
 VI_tid = tid(fwhm66<1.1&top66<707 & top66>700& fwhm66>0);

%      filter = I_filt;
%      X = mean(filter)
%      app_us = sqrt(1./(size(filter,2)-1)*sum((filter-X).^2));
%      Sn = app_us./sqrt(size(filter,2))
% 
%      filter2 = II_filt;
%      X2 = mean(filter2)
%      app_us2 = sqrt(1./(size(filter2,2)-1)*sum((filter2-X2).^2));
%      Sn2 = app_us2./sqrt(size(filter2,2))
%      
%      filter3 = III_filt;
%      X3 = mean(filter3)
%      app_us3 = sqrt(1./(size(filter3,2)-1)*sum((filter3-X3).^2));
%      Sn3 = app_us3./sqrt(size(filter3,2))
     
     
     
%  figur('Time [s]','Centroid Location [nm]')
%  plot(ny_tid,ny_bins,'k.','MarkerSize',10)
%  h1 = refline(0,mean(ny_bins));
%  legend([h1],'Mean');
%  
  figur('Time [s]','Centroid location [nm]')
  plot(tid(top11<450 & fwhm1<1.5),fwhm1(top11<450 & fwhm1<1.5),'.')
  figure
  plot(tid(fwhm2<1.5),fwhm2(fwhm2<1.5),'.')
  figure
  plot(tid(fwhm3<1.5),fwhm3(fwhm3<1.5),'.')
  figure
  plot(tid(fwhm4<1.5),fwhm4(fwhm4<1.5),'.')
  figure
  plot(tid(fwhm5<1.5),fwhm5(fwhm5<1.5),'.')
  figure
  plot(tid(fwhm6<1.5),fwhm6(fwhm6<1.5),'.') 
   