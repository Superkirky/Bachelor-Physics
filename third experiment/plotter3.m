close all


hold on
ylabel('Wavelength [nm]')

subplot(2,3,1),errorbar(temperature,temp1,err1,'k.','MarkerSize',10)
axis([18 51 388.6 389.2])
title('Peak 1')
%xlabel('Temperature [°C]')
%ylabel('Wavelength [nm]')
refline(0, lab_lambda(1))
set(gca,'GridColor',[0.15 0.15 0.15]);
set(gca,'MinorGridColor',[0.1 0.1 0.1]);
set(gca,'XMinorTick','on','YMinorTick','on');
set(gca,'FontSize',15);
set(gca,'GridLineStyle','-');
set(gca,'MinorGridLineStyle',':');
grid on
grid minor

subplot(2,3,2),errorbar(temperature,temp2,err2,'k.','MarkerSize',10)
axis([18 51 447 447.4])
set(gca,'XMinorTick','on','YMinorTick','on');
set(gca,'FontSize',15);
set(gca,'GridLineStyle','-');
set(gca,'MinorGridLineStyle',':');
title('Peak 2')
%xlabel('Temperature [°C]')
%ylabel('Wavelength [nm]')
grid on
grid minor
refline(0, lab_lambda(2))

subplot(2,3,3),errorbar(temperature,temp3,err3,'k.','MarkerSize',10)
axis([18 51 501.455 501.65])
set(gca,'XMinorTick','on','YMinorTick','on');
set(gca,'FontSize',15);
set(gca,'GridLineStyle','-');
set(gca,'MinorGridLineStyle',':');
title('Peak 3')
%xlabel('Temperature [°C]')
%ylabel('Wavelength [nm]')
grid on
grid minor
refline(0, lab_lambda(3))

subplot(2,3,4),errorbar(temperature,temp4,err4,'k.','MarkerSize',10)
axis([18 51 587.4 587.6])
hold on
set(gca,'XMinorTick','on','YMinorTick','on');
set(gca,'FontSize',15);
set(gca,'GridLineStyle','-');
set(gca,'MinorGridLineStyle',':');
title('Peak 4')
%xlabel('Temperature [°C]')
ylabel('Wavelength [nm]')
grid on
grid minor
refline(0, lab_lambda(4))

subplot(2,3,5),errorbar(temperature,temp5,err5,'k.','MarkerSize',10)
axis([18 51 667.4 668])
set(gca,'XMinorTick','on','YMinorTick','on');
set(gca,'FontSize',15);
set(gca,'GridLineStyle','-');
set(gca,'MinorGridLineStyle',':');
title('Peak 5')
xlabel('Temperature [°C]')
%ylabel('Wavelength [nm]')
grid on
grid minor
refline(0, lab_lambda(5))

subplot(2,3,6),h3 = errorbar(temperature,temp6,err6,'k.','MarkerSize',10)
axis([18 51 706.1 706.8])
set(gca,'XMinorTick','on','YMinorTick','on');
set(gca,'FontSize',15);
set(gca,'GridLineStyle','-');
set(gca,'MinorGridLineStyle',':');
title('Peak 6')
%xlabel('Temperature [°C]')
%ylabel('Wavelength [nm]')
grid on
grid minor
h2 = refline(0, lab_lambda(6))
legend([h3 h2],'Found Wavelength','Laboratory Wavelength')




