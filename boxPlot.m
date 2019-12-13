clc
close all

load('rcm_18_cyl_f1_ch1.mat')
load('rcm_18_hook_f1_ch1.mat')
load('rcm_18_spher_f1_ch1.mat')
load('rcm_18_tip_f1_ch1.mat')
load('rcm_18_palm_f1_ch1.mat')
load('rcm_18_lat_f1_ch1.mat')

load('rcm_18_cyl_f1_ch2.mat')
load('rcm_18_hook_f1_ch2.mat')
load('rcm_18_spher_f1_ch2.mat')
load('rcm_18_tip_f1_ch2.mat')
load('rcm_18_palm_f1_ch2.mat')
load('rcm_18_lat_f1_ch2.mat')

% m_cyl_app_ch1 = mean(abs(cyl_rcl_ch1(:,1:18)),2);
% m_hook_app_ch1 = mean(abs(hook_rcl_ch1(:,1:18)),2);
% m_spher_app_ch1 = mean(abs(spher_rcl_ch1(:,1:18)),2);
% m_lat_app_ch1 = mean(abs(lat_rcl_ch1(:,1:18)),2);
% m_tip_app_ch1 = mean(abs(tip_rcl_ch1(:,1:18)),2);
% m_palm_app_ch1 = mean(abs(palm_rcl_ch1(:,1:18)),2);
% 
% m_cyl_app_ch2 = mean(cyl_rcl_ch2(:,1:18),2);
% m_hook_app_ch2 = mean(hook_rcl_ch2(:,1:18),2);
% m_spher_app_ch2 = mean(spher_rcl_ch2(:,1:18),2);
% m_lat_app_ch2 = mean(lat_rcl_ch2(:,1:18),2);
% m_tip_app_ch2 = mean(tip_rcl_ch2(:,1:18),2);
% m_palm_app_ch2 = mean(palm_rcl_ch2(:,1:18),2);
% 
% m_cyl_det_ch1 = mean(cyl_rcl_ch1(:,19:36),2);
% m_hook_det_ch1 = mean(hook_rcl_ch1(:,19:36),2);
% m_spher_det_ch1 = mean(spher_rcl_ch1(:,19:36),2);
% m_lat_det_ch1 = mean(lat_rcl_ch1(:,19:36),2);
% m_tip_det_ch1 = mean(tip_rcl_ch1(:,19:36),2);
% m_palm_det_ch1 = mean(palm_rcl_ch1(:,19:36),2);
% 
% m_cyl_det_ch2 = mean(cyl_rcl_ch2(:,19:36),2);
% m_hook_det_ch2 = mean(hook_rcl_ch2(:,19:36),2);
% m_spher_det_ch2 = mean(spher_rcl_ch2(:,19:36),2);
% m_lat_det_ch2 = mean(lat_rcl_ch2(:,19:36),2);
% m_tip_det_ch2 = mean(tip_rcl_ch2(:,19:36),2);
% m_palm_det_ch2 = mean(palm_rcl_ch2(:,19:36),2);

X = [cyl_rcl_ch2(:,18), hook_rcl_ch2(:,18), spher_rcl_ch2(:,18), lat_rcl_ch2(:,18), palm_rcl_ch2(:,18), tip_rcl_ch2(:,18)];
movements = ['Cylindrical'; 'Hook       '; 'Spherical  '; 'Lateral    '; 'Palmer     '; 'Tip        '];
boxplot(X, movements, 'OutlierSize', 15, 'Colors', 'k')
xlabel('Hand Movements')
ylabel('Signal Amplitude')