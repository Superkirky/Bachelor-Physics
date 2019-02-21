close all
A1 = fit(temperature',temp1','poly1')
figur('Wavelength','Temperature [°C]')
plot(A1,temperature,temp1)
c1 = confint(A1,0.68).*(-1);
fejl1 = (c1(1,1)-c1(2,1))/2;
xlabel('Temperature [°C]')
ylabel('Wavelength [nm]')


A2 = fit(temperature',temp2','poly1');
figur('Wavelength','temperature [°C]')
plot(A2,temperature,temp2)
c2 = confint(A2,0.68).*(-1);
fejl2 = (c2(1,1)-c2(2,1))/2;
xlabel('Temperature [°C]')
ylabel('Wavelength [nm]')


A3 = fit(temperature',temp3','poly1');
figur('Wavelength','temperature [°C]')
plot(A3,temperature,temp3)
c3 = confint(A3,0.68).*(-1);
fejl3 = (c3(1,1)-c3(2,1))/2;
xlabel('Temperature [°C]')
ylabel('Wavelength [nm]')

A4 = fit(temperature',temp4','poly1');
figur('Wavelength','temperature [°C]')
plot(A4,temperature,temp4)
c4 = confint(A4,0.68).*(-1);
fejl4 = (c4(1,1)-c4(2,1))/2;
xlabel('Temperature [°C]')
ylabel('Wavelength [nm]')

A5 = fit(temperature',temp5','poly1');
figur('Wavelength','temperature [°C]')
plot(A5,temperature,temp5)
c5 = confint(A5,0.68).*(-1);
fejl5 = (c5(1,1)-c5(2,1))/2;
xlabel('Temperature [°C]')
ylabel('Wavelength [nm]')

A6 = fit(temperature',temp6','poly1');
figur('Wavelength','temperature [°C]')
plot(A6,temperature,temp6)
c6 = confint(A6,0.68).*(-1);
fejl6 = (c6(1,1)-c6(2,1))/2;
xlabel('Temperature [°C]')
ylabel('Wavelength [nm]')

figure
% hældnings koeffecienter,
p_er = [A1.p1 A2.p1 A3.p1 A4.p1 A5.p1 A6.p1]
fejl = [fejl1 fejl2 fejl3 fejl4 fejl5 fejl6]
p_afhangighed = fit(topdata',p_er','poly1') % afhængighed_af_wavelength
%figur('Slope coefficient [nm/(°C·nm)]','Wavelength [nm]')
h5 = plot(p_afhangighed,topdata,p_er,'.')
hold on
h6 = errorbar(topdata,p_er,fejl,'.b')
xlabel('Wavelength [nm]')
ylabel('a_{shift} [nm/°C]')
set(gca,'XMinorTick','on','YMinorTick','on');
set(gca,'FontSize',15);
set(gca,'GridLineStyle','-');
set(gca,'MinorGridLineStyle',':');
grid on 
grid minor
%legend([h5], 'a_{shift} coeff.')
