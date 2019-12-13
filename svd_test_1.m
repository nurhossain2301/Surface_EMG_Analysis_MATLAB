clc
close all

load('cyl_ch1_m1.mat')
cyl_ch1 = overlap_data(cyl_ch1);
cyl_ch1_sv = svd_feature(cyl_ch1);
save('cyl_ch1_sv.mat', 'cyl_ch1_sv');

load('hook_ch1_m1.mat')
hook_ch1 = overlap_data(hook_ch1);
hook_ch1_sv = svd_feature(hook_ch1);
save('hook_ch1_sv.mat', 'hook_ch1_sv');

load('spher_ch1_m1.mat')
spher_ch1 = overlap_data(spher_ch1);
spher_ch1_sv = svd_feature(spher_ch1);
save('spher_ch1_sv.mat', 'spher_ch1_sv');

load('palm_ch1_m1.mat')
palm_ch1 = overlap_data(palm_ch1);
palm_ch1_sv = svd_feature(palm_ch1);
save('palm_ch1_sv.mat', 'palm_ch1_sv');

load('lat_ch1_m1.mat')
lat_ch1 = overlap_data(lat_ch1);
lat_ch1_sv = svd_feature(lat_ch1);
save('lat_ch1_sv.mat', 'lat_ch1_sv');

load('tip_ch1_m1.mat')
tip_ch1 = overlap_data(tip_ch1);
tip_ch1_sv = svd_feature(tip_ch1);
save('tip_ch1_sv.mat', 'tip_ch1_sv');

load('cyl_ch2_m1.mat')
cyl_ch2 = overlap_data(cyl_ch2);
cyl_ch2_sv = svd_feature(cyl_ch2);
save('cyl_ch2_sv.mat', 'cyl_ch2_sv');

load('hook_ch2_m1.mat')
hook_ch2 = overlap_data(hook_ch2);
hook_ch2_sv = svd_feature(hook_ch2);
save('hook_ch2_sv.mat', 'hook_ch2_sv');

load('spher_ch2_m1.mat')
spher_ch2 = overlap_data(spher_ch2);
spher_ch2_sv = svd_feature(spher_ch2);
save('spher_ch2_sv.mat', 'spher_ch2_sv');

load('palm_ch2_m1.mat')
palm_ch2 = overlap_data(palm_ch2);
palm_ch2_sv = svd_feature(palm_ch2);
save('palm_ch2_sv.mat', 'palm_ch2_sv');

load('lat_ch2_m1.mat')
lat_ch2 = overlap_data(lat_ch2);
lat_ch2_sv = svd_feature(lat_ch2);
save('lat_ch2_sv.mat', 'lat_ch2_sv');

load('tip_ch2_m1.mat')
tip_ch2 = overlap_data(tip_ch2);
tip_ch2_sv = svd_feature(tip_ch2);
save('tip_ch2_sv.mat', 'tip_ch2_sv');

[a,b] = size(cyl_ch1_sv);
trainmat = [cyl_ch1_sv, cyl_ch2_sv; hook_ch1_sv, hook_ch2_sv; spher_ch1_sv, spher_ch2_sv; palm_ch1_sv, palm_ch2_sv; lat_ch1_sv, lat_ch2_sv; tip_ch1_sv, tip_ch2_sv];
%trainmat = [cyl_ch1_sd_emd; cyl_ch2_sd_emd; hook_ch1_sd_emd; hook_ch2_sd_emd; spher_ch1_sd_emd; spher_ch2_sd_emd; palm_ch1_sd_emd; palm_ch2_sd_emd; lat_ch1_sd_emd; lat_ch2_sd_emd; tip_ch1_sd_emd; tip_ch2_sd_emd];

group = [ones(a,1); 2*ones(a,1); 3*ones(a,1); 4*ones(a,1); 5*ones(a,1); 6*ones(a,1)];

h = [5];
for ii=1:1
    accuracy = 0;
    for jj = 1:1
        KNNmodl = fitcecoc(trainmat, group);
        CVKNNMdl = crossval(KNNmodl, 'kfold', 2);
        classError = kfoldLoss(CVKNNMdl);
        accu = 1- classError;
        accuracy = accuracy + accu;
    end
    accuracy = accuracy
end