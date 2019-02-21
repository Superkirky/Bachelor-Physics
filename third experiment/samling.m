     filter = I_filt;
     X1 = mean(filter)
     app_us1 = sqrt(1./(size(filter,2)-1)*sum((filter-X1).^2));
     Sn1 = app_us1./sqrt(size(filter,2))

     filter2 = II_filt;
     X2 = mean(filter2)
     app_us2 = sqrt(1./(size(filter2,2)-1)*sum((filter2-X2).^2));
     Sn2 = app_us2./sqrt(size(filter2,2))
     
     filter3 = III_filt;
     X3 = mean(filter3)
     app_us3 = sqrt(1./(size(filter3,2)-1)*sum((filter3-X3).^2));
     Sn3 = app_us3./sqrt(size(filter3,2))
     
     filter4 = IV_filt;
     X4 = mean(filter4)
     app_us4 = sqrt(1./(size(filter4,2)-1)*sum((filter4-X4).^2));
     Sn4 = app_us4./sqrt(size(filter4,2))

     filter5 = V_filt;
     X5 = mean(filter5)
     app_us5 = sqrt(1./(size(filter5,2)-1)*sum((filter5-X5).^2));
     Sn5 = app_us5./sqrt(size(filter5,2))
     
     filter6 = VI_filt;
     X6 = mean(filter6)
     app_us6 = sqrt(1./(size(filter6,2)-1)*sum((filter6-X6).^2));
     Sn6 = app_us6./sqrt(size(filter6,2))
     
     
     temp1 = [temp1 X1]
     err1 = [err1 Sn1]
     
     temp2 = [temp2 X2]
     err2 = [err2 Sn2]
     
     temp3 = [temp3 X3]
     err3 = [err3 Sn3]
     
     temp4 = [temp4 X4]
     err4 = [err4 Sn4]
     
     temp5 = [temp5 X5]
     err5 = [err5 Sn5]
     
     temp6 = [temp6 X6]
     err6 = [err6 Sn6]
     