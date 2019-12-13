clc
close all

order = 12;
load('cyl_ch1_f1.mat')
cyl_ch1 = overlap_data(cyl_ch1);
[cyl_ch1_imf_1, cyl_ch1_imf_2, cyl_ch1_imf_3] = emd_data_1(cyl_ch1);
cyl_ch1_imf_1 = emd_feature(cyl_ch1_imf_1,order);
cyl_ch1_imf_2 = emd_feature(cyl_ch1_imf_2,order);
cyl_ch1_imf_3 = emd_feature(cyl_ch1_imf_3,order);

load('hook_ch1_f1.mat')
hook_ch1 = overlap_data(hook_ch1);
[hook_ch1_imf_1, hook_ch1_imf_2, hook_ch1_imf_3] = emd_data_1(hook_ch1);
hook_ch1_imf_1 = emd_feature(hook_ch1_imf_1,order);
hook_ch1_imf_2 = emd_feature(hook_ch1_imf_2,order);
hook_ch1_imf_3 = emd_feature(hook_ch1_imf_3,order);

load('spher_ch1_f1.mat')
spher_ch1 = overlap_data(spher_ch1);
[spher_ch1_imf_1, spher_ch1_imf_2, spher_ch1_imf_3] = emd_data_1(spher_ch1);
spher_ch1_imf_1 = emd_feature(spher_ch1_imf_1,order);
spher_ch1_imf_2 = emd_feature(spher_ch1_imf_2,order);
spher_ch1_imf_3 = emd_feature(spher_ch1_imf_3,order);

load('palm_ch1_f1.mat')
palm_ch1 = overlap_data(palm_ch1);
[palm_ch1_imf_1, palm_ch1_imf_2, palm_ch1_imf_3] = emd_data_1(palm_ch1);
palm_ch1_imf_1 = emd_feature(palm_ch1_imf_1,order);
palm_ch1_imf_2 = emd_feature(palm_ch1_imf_2,order);
palm_ch1_imf_3 = emd_feature(palm_ch1_imf_3,order);

load('lat_ch1_f1.mat')
lat_ch1 = overlap_data(lat_ch1);
[lat_ch1_imf_1, lat_ch1_imf_2, lat_ch1_imf_3] = emd_data_1(lat_ch1);
lat_ch1_imf_1 = emd_feature(lat_ch1_imf_1,order);
lat_ch1_imf_2 = emd_feature(lat_ch1_imf_2,order);
lat_ch1_imf_3 = emd_feature(lat_ch1_imf_3,order);

load('tip_ch1_f1.mat')
tip_ch1 = overlap_data(tip_ch1);
[tip_ch1_imf_1, tip_ch1_imf_2, tip_ch1_imf_3] = emd_data_1(tip_ch1);
tip_ch1_imf_1 = emd_feature(tip_ch1_imf_1,order);
tip_ch1_imf_2 = emd_feature(tip_ch1_imf_2,order);
tip_ch1_imf_3 = emd_feature(tip_ch1_imf_3,order);


load('cyl_ch2_f1.mat')
cyl_ch2 = overlap_data(cyl_ch2);
[cyl_ch2_imf_1, cyl_ch2_imf_2, cyl_ch2_imf_3] = emd_data_1(cyl_ch2);
cyl_ch2_imf_1 = emd_feature(cyl_ch2_imf_1,order);
cyl_ch2_imf_2 = emd_feature(cyl_ch2_imf_2,order);
cyl_ch2_imf_3 = emd_feature(cyl_ch2_imf_3,order);

load('hook_ch2_f1.mat')
hook_ch2 = overlap_data(hook_ch2);
[hook_ch2_imf_1, hook_ch2_imf_2, hook_ch2_imf_3] = emd_data_1(hook_ch2);
hook_ch2_imf_1 = emd_feature(hook_ch2_imf_1,order);
hook_ch2_imf_2 = emd_feature(hook_ch2_imf_2,order);
hook_ch2_imf_3 = emd_feature(hook_ch2_imf_3,order);

load('spher_ch2_f1.mat')
spher_ch2 = overlap_data(spher_ch2);
[spher_ch2_imf_1, spher_ch2_imf_2, spher_ch2_imf_3] = emd_data_1(spher_ch2);
spher_ch2_imf_1 = emd_feature(spher_ch2_imf_1,order);
spher_ch2_imf_2 = emd_feature(spher_ch2_imf_2,order);
spher_ch2_imf_3 = emd_feature(spher_ch2_imf_3,order);

load('palm_ch2_f1.mat')
palm_ch2 = overlap_data(palm_ch2);
[palm_ch2_imf_1, palm_ch2_imf_2, palm_ch2_imf_3] = emd_data_1(palm_ch2);
palm_ch2_imf_1 = emd_feature(palm_ch2_imf_1,order);
palm_ch2_imf_2 = emd_feature(palm_ch2_imf_2,order);
palm_ch2_imf_3 = emd_feature(palm_ch2_imf_3,order);

load('lat_ch2_f1.mat')
lat_ch2 = overlap_data(lat_ch2);
[lat_ch2_imf_1, lat_ch2_imf_2, lat_ch2_imf_3] = emd_data_1(lat_ch2);
lat_ch2_imf_1 = emd_feature(lat_ch2_imf_1,order);
lat_ch2_imf_2 = emd_feature(lat_ch2_imf_2,order);
lat_ch2_imf_3 = emd_feature(lat_ch2_imf_3,order);

load('tip_ch2_f1.mat')
tip_ch2 = overlap_data(tip_ch2);
[tip_ch2_imf_1, tip_ch2_imf_2, tip_ch2_imf_3] = emd_data_1(tip_ch2);
tip_ch2_imf_1 = emd_feature(tip_ch2_imf_1,order);
tip_ch2_imf_2 = emd_feature(tip_ch2_imf_2,order);
tip_ch2_imf_3 = emd_feature(tip_ch2_imf_3,order);

cyl_trial = [cyl_ch1_imf_1, cyl_ch2_imf_1, cyl_ch1_imf_2, cyl_ch2_imf_2, cyl_ch1_imf_3, cyl_ch2_imf_3];
hook_trial = [hook_ch1_imf_1, hook_ch2_imf_1, hook_ch1_imf_2, hook_ch2_imf_2, hook_ch1_imf_3, hook_ch2_imf_3];
spher_trial = [spher_ch1_imf_1, spher_ch2_imf_1, spher_ch1_imf_2, spher_ch2_imf_2, spher_ch1_imf_3, spher_ch2_imf_3];
palm_trial = [palm_ch1_imf_1, palm_ch2_imf_1, palm_ch1_imf_2, palm_ch2_imf_2, palm_ch1_imf_3, palm_ch2_imf_3];
lat_trial = [lat_ch1_imf_1, lat_ch2_imf_1, lat_ch1_imf_2, lat_ch2_imf_2, lat_ch1_imf_3, lat_ch2_imf_3];
tip_trial = [tip_ch1_imf_1, tip_ch2_imf_1, tip_ch1_imf_2, tip_ch2_imf_2, tip_ch1_imf_3, tip_ch2_imf_3];

[a,b] = size(cyl_trial);
trainmat = [cyl_trial; hook_trial; spher_trial; palm_trial; lat_trial; tip_trial];
group = [ones(a,1); 2*ones(a,1); 3*ones(a,1); 4*ones(a,1); 5*ones(a,1); 6*ones(a,1)];

h = [2, 5, 10];
for ii=1:3
    accuracy = 0;
    for jj = 1:5
        KNNmodl = fitcknn(trainmat, group, 'NumNeighbors', 3);
        CVKNNMdl = crossval(KNNmodl, 'kfold', h(ii));
        classError = kfoldLoss(CVKNNMdl);
        accu = 1- classError;
        accuracy = accuracy + accu;
    end
    accuracy = accuracy/5
end