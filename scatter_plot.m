clc
close all
order = 8;

load ('cyl_ch1_m2.mat')    
trial_cyl = paper_feature_dwt(cyl_ch1,order);
cyl_rcl_ch1 = (trial_cyl.frc1);


load ('hook_ch1_m2.mat')     
trial_hook = paper_feature_dwt(hook_ch1,order);
hook_rcl_ch1 = (trial_hook.frc1);



load ('spher_ch1_m2.mat') 
trial_spher = paper_feature_dwt(spher_ch1,order);
spher_rcl_ch1 = (trial_spher.frc1);


load ('palm_ch1_m2.mat') 
trial_palm = paper_feature_dwt(palm_ch1,order);
palm_rcl_ch1 = (trial_palm.frc1);


load ('lat_ch1_m2.mat') 
trial_lat = paper_feature_dwt(lat_ch1,order);
lat_rcl_ch1 = (trial_lat.frc1);


load ('tip_ch1_m2.mat') 
trial_tip = paper_feature_dwt(tip_ch1,order);
tip_rcl_ch1 = (trial_tip.frc1);


%channel 2
load ('cyl_ch2_m2.mat')    
trial_cyl = paper_feature_dwt(cyl_ch2,order);
cyl_rcl_ch2 = (trial_cyl.frc1);


load ('hook_ch2_m2.mat')     
trial_hook = paper_feature_dwt(hook_ch2,order);
hook_rcl_ch2 = (trial_hook.frc1);


load ('spher_ch2_m2.mat') 
trial_spher = paper_feature_dwt(spher_ch2,order);
spher_rcl_ch2 = (trial_spher.frc1);


load ('palm_ch2_m2.mat') 
trial_palm = paper_feature_dwt(palm_ch2,order);
palm_rcl_ch2 = (trial_palm.frc1);


load ('lat_ch2_m2.mat') 
trial_lat = paper_feature_dwt(lat_ch2,order);
lat_rcl_ch2 = (trial_lat.frc1);


load ('tip_ch2_m2.mat') 
trial_tip = paper_feature_dwt(tip_ch2,order);
tip_rcl_ch2 = (trial_tip.frc1);

figure
x = cyl_rcl_ch1(:,1);
y = cyl_rcl_ch1(:,2);
z = cyl_rcl_ch1(:,3);
scatter3(x,y,z, 'r', 'filled')
hold on
x1 = palm_rcl_ch1(:,1);
y1 = palm_rcl_ch1(:,2);
z1 = palm_rcl_ch1(:,3);
scatter3(x1,y1,z1, 'b', 'filled')
hold on
x2 = hook_rcl_ch1(:,1);
y2 = hook_rcl_ch1(:,2);
z2 = hook_rcl_ch1(:,3);
scatter3(x2,y2,z2, 'y', 'filled')
hold on
x3 = tip_rcl_ch1(:,1);
y3 = tip_rcl_ch1(:,2);
z3 = tip_rcl_ch1(:,3);
scatter3(x3,y3,z3, 'g', 'filled')
hold on
x4 = spher_rcl_ch1(:,1);
y4 = spher_rcl_ch1(:,2);
z4 = spher_rcl_ch1(:,3);
scatter3(x4,y4,z4, 'k', 'filled')
hold on
x5 = lat_rcl_ch1(:,1);
y5 = lat_rcl_ch1(:,2);
z5 = lat_rcl_ch1(:,3);
scatter3(x5,y5,z5, 'c', 'filled')

figure
x = cyl_rcl_ch2(:,1);
y = cyl_rcl_ch2(:,2);
z = cyl_rcl_ch2(:,3);
scatter3(x,y,z, 'r', 'filled')
hold on
x1 = palm_rcl_ch2(:,1);
y1 = palm_rcl_ch2(:,2);
z1 = palm_rcl_ch2(:,3);
scatter3(x1,y1,z1, 'b', 'filled')
hold on
x2 = hook_rcl_ch2(:,1);
y2 = hook_rcl_ch2(:,2);
z2 = hook_rcl_ch2(:,3);
scatter3(x2,y2,z2, 'y', 'filled')
hold on
x3 = tip_rcl_ch2(:,1);
y3 = tip_rcl_ch2(:,2);
z3 = tip_rcl_ch2(:,3);
scatter3(x3,y3,z3, 'g', 'filled')
hold on
x4 = spher_rcl_ch2(:,1);
y4 = spher_rcl_ch2(:,2);
z4 = spher_rcl_ch2(:,3);
scatter3(x4,y4,z4, 'k', 'filled')
hold on
x5 = lat_rcl_ch2(:,1);
y5 = lat_rcl_ch2(:,2);
z5 = lat_rcl_ch2(:,3);
scatter3(x5,y5,z5, 'c', 'filled')
cyl_rcl = [cyl_rcl_ch1, cyl_rcl_ch2];
hook_rcl = [hook_rcl_ch1, hook_rcl_ch2];
spher_rcl = [spher_rcl_ch1, spher_rcl_ch2];
lat_rcl = [lat_rcl_ch1, lat_rcl_ch2];
palm_rcl = [palm_rcl_ch1, palm_rcl_ch2];
tip_rcl = [tip_rcl_ch1, tip_rcl_ch2];
% cyl_rcl = cyl_rcl_ch1;
% hook_rcl = hook_rcl_ch1;
% spher_rcl = spher_rcl_ch1;
% palm_rcl = palm_rcl_ch1;
% lat_rcl = lat_rcl_ch1;
% tip_rcl = tip_rcl_ch1;
% [a,b] = size(cyl_rcl);
[a,b] = size(cyl_rcl);
trainmat = [cyl_rcl; hook_rcl; spher_rcl; palm_rcl; lat_rcl; tip_rcl];
group = [ones(a,1); 2*ones(a,1); 3*ones(a,1); 4*ones(a,1); 5*ones(a,1); 6*ones(a,1)];