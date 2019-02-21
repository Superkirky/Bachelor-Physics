true_wavelength = [388.9;501.6;587.6;667.8;706.5;728.1];
pixel_nr=[983;1534;1970;2391;2600;2718];
%wavelength=[388.46;501.30;587.36;667.61;706.36;727.09]; %nm
g = fittype('I+c_1*x+c_2*x^2+c_3*x^3');
f=fit(pixel_nr,true_wavelength,g,'StartPoint',[170,0,-5e-06,-1e-10]) 
% pixel_nr er uafhængig varialbel (X), true er afhængig (Y)
f.I
f.c_1
f.c_2
f.c_3