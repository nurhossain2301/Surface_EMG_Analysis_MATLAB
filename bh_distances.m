clc
close all

load('rcmDistance_18_cyl_f1_ch1.mat')
load('rcmDistance_18_hook_f1_ch1.mat')
load('rcmDistance_18_spher_f1_ch1.mat')
load('rcmDistance_18_tip_f1_ch1.mat')
load('rcmDistance_18_palm_f1_ch1.mat')
load('rcmDistance_18_lat_f1_ch1.mat')

load('rcmDistance_18_cyl_f1_ch2.mat')
load('rcmDistance_18_hook_f1_ch2.mat')
load('rcmDistance_18_spher_f1_ch2.mat')
load('rcmDistance_18_tip_f1_ch2.mat')
load('rcmDistance_18_palm_f1_ch2.mat')
load('rcmDistance_18_lat_f1_ch2.mat')

d_CylvsHook = bhattacharyya(cyl_rcl_ch1, hook_rcl_ch1)
d_CylvsSpher = bhattacharyya(cyl_rcl_ch1, spher_rcl_ch1)
d_CylvsTip = bhattacharyya(cyl_rcl_ch1, tip_rcl_ch1)
d_CylvsPalm = bhattacharyya(cyl_rcl_ch1, palm_rcl_ch1)
d_CylvsLat = bhattacharyya(cyl_rcl_ch1, lat_rcl_ch1)
d_HookvsSpher = bhattacharyya(hook_rcl_ch1, spher_rcl_ch1)
d_HookvsPalm = bhattacharyya(palm_rcl_ch1, hook_rcl_ch1)
d_HookvsTip = bhattacharyya(hook_rcl_ch1, tip_rcl_ch1)
d_HookvsLat = bhattacharyya(hook_rcl_ch1, lat_rcl_ch1)
d_SphervsTip = bhattacharyya(spher_rcl_ch1, tip_rcl_ch1)
d_SphervsPalm = bhattacharyya(spher_rcl_ch1, palm_rcl_ch1)
d_SphervsLat = bhattacharyya(lat_rcl_ch1, spher_rcl_ch1)
d_TipvsLat = bhattacharyya(tip_rcl_ch1, lat_rcl_ch1)
d_TipvsPalm = bhattacharyya(palm_rcl_ch1, tip_rcl_ch1)
d_LatvsPalm = bhattacharyya(lat_rcl_ch1, palm_rcl_ch1)

d3_CylvsHook = bhattacharyya(cyl_rcl_ch2, hook_rcl_ch2)
d3_CylvsSpher = bhattacharyya(cyl_rcl_ch2, spher_rcl_ch2)
d3_CylvsTip = bhattacharyya(cyl_rcl_ch2, tip_rcl_ch2)
d3_CylvsPalm = bhattacharyya(cyl_rcl_ch2, palm_rcl_ch2)
d3_CylvsLat = bhattacharyya(cyl_rcl_ch2, lat_rcl_ch2)
d3_HookvsSpher = bhattacharyya(hook_rcl_ch2, spher_rcl_ch2)
d3_HookvsPalm = bhattacharyya(palm_rcl_ch2, hook_rcl_ch2)
d3_HookvsTip = bhattacharyya(hook_rcl_ch2, tip_rcl_ch2)
d3_HookvsLat = bhattacharyya(hook_rcl_ch2, lat_rcl_ch2)
d3_SphervsTip = bhattacharyya(spher_rcl_ch2, tip_rcl_ch2)
d3_SphervsPalm = bhattacharyya(spher_rcl_ch2, palm_rcl_ch2)
d3_SphervsLat = bhattacharyya(lat_rcl_ch2, spher_rcl_ch2)
d3_TipvsLat = bhattacharyya(tip_rcl_ch2, lat_rcl_ch2)
d3_TipvsPalm = bhattacharyya(palm_rcl_ch2, tip_rcl_ch2)
d3_LatvsPalm = bhattacharyya(lat_rcl_ch2, palm_rcl_ch2)

cyl_rcl = [cyl_rcl_ch1, cyl_rcl_ch2];
hook_rcl = [hook_rcl_ch1, hook_rcl_ch2];
spher_rcl = [spher_rcl_ch1, spher_rcl_ch2];
tip_rcl = [tip_rcl_ch1, tip_rcl_ch2];
lat_rcl = [lat_rcl_ch1, lat_rcl_ch2];
palm_rcl = [palm_rcl_ch1, palm_rcl_ch2];

d2_CylvsHook = bhattacharyya(cyl_rcl, hook_rcl)
d2_CylvsSpher = bhattacharyya(cyl_rcl, spher_rcl)
d2_CylvsTip = bhattacharyya(cyl_rcl, tip_rcl)
d2_CylvsPalm = bhattacharyya(cyl_rcl, palm_rcl)
d2_CylvsLat = bhattacharyya(cyl_rcl, lat_rcl)
d2_HookvsSpher = bhattacharyya(hook_rcl, spher_rcl)
d2_HookvsPalm = bhattacharyya(palm_rcl, hook_rcl)
d2_HookvsTip = bhattacharyya(hook_rcl, tip_rcl)
d2_HookvsLat = bhattacharyya(hook_rcl, lat_rcl)
d2_SphervsTip = bhattacharyya(spher_rcl, tip_rcl)
d2_SphervsPalm = bhattacharyya(spher_rcl, palm_rcl)
d2_SphervsLat = bhattacharyya(lat_rcl, spher_rcl)
d2_TipvsLat = bhattacharyya(tip_rcl, lat_rcl)
d2_TipvsPalm = bhattacharyya(palm_rcl, tip_rcl)
d2_LatvsPalm = bhattacharyya(lat_rcl, palm_rcl)
