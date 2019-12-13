clc
close all

%singular value
load('cyl_ch1_Esd_f1.mat')
load('cyl_ch2_Esd_f1.mat')

load('hook_ch1_Esd_f1.mat')
load('hook_ch2_Esd_f1.mat')

load('spher_ch1_Esd_f1.mat')
load('spher_ch2_Esd_f1.mat')

load('palm_ch1_Esd_f1.mat')
load('palm_ch2_Esd_f1.mat')

load('lat_ch1_Esd_f1.mat')
load('lat_ch2_Esd_f1.mat')

load('tip_ch1_Esd_f1.mat')
load('tip_ch2_Esd_f1.mat')
x = 1:1:9;
figure
for i=5:5
    y = cyl_ch1_sd_emd(i,:);
    plot(x,y,'-or', 'linewidth', 2)
    hold on
end
hold on
for i=5:5
    y = hook_ch1_sd_emd(i,:);
    plot(x,y, '-ob', 'linewidth', 2)
    hold on
end
hold on
for i=5:5
    y = spher_ch1_sd_emd(i,:);
    plot(x,y, '-og', 'linewidth', 2)
    hold on
end
hold on
for i=5:5
    y = palm_ch1_sd_emd(i,:);
    plot(x,y, '-ok', 'linewidth', 2)
    hold on
end
hold on
for i=5:5
    y = lat_ch1_sd_emd(i,:);
    plot(x,y, '-oy', 'linewidth', 2)
    hold on
end
hold on
for i=5:5
    y = tip_ch1_sd_emd(i,:);
    plot(x,y, '-oc', 'linewidth', 2)
    hold on
end