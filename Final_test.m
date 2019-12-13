clc
close all;
tic
for order = 12:12



% subjective EMG data classification of hand related task

load ('cyl_ch1_m2.mat')    
trial_cyl = paper_feature_dwt(cyl_ch1,order);
cyl_rcl_ch1 = (trial_cyl.frc1);
% cyl_rcl_ch1 = [mean(abs(cyl_rcl_ch1(:,1:18)),2), mean(abs(cyl_rcl_ch1(:,19:36)),2)];
%save('rcmDistance_18_cyl_m2_ch1.mat', 'cyl_rcl_ch1');

load ('hook_ch1_m2.mat')     
trial_hook = paper_feature_dwt(hook_ch1,order);
hook_rcl_ch1 = (trial_hook.frc1);
% hook_rcl_ch1 = [mean(abs(hook_rcl_ch1(:,1:18)),2), mean(abs(hook_rcl_ch1(:,19:36)),2)];
%save('rcmDistance_18_hook_m2_ch1.mat', 'hook_rcl_ch1');

load ('spher_ch1_m2.mat') 
trial_spher = paper_feature_dwt(spher_ch1,order);
spher_rcl_ch1 = (trial_spher.frc1);
% spher_rcl_ch1 = [mean(abs(spher_rcl_ch1(:,1:18)),2), mean(abs(spher_rcl_ch1(:,19:36)),2)];
%save('rcmDistance_18_spher_m2_ch1.mat', 'spher_rcl_ch1');

load ('palm_ch1_m2.mat') 
trial_palm = paper_feature_dwt(palm_ch1,order);
palm_rcl_ch1 = (trial_palm.frc1);
% palm_rcl_ch1 = [mean(abs(palm_rcl_ch1(:,1:18)),2), mean(abs(palm_rcl_ch1(:,19:36)),2)];
%save('rcmDistance_18_palm_m2_ch1.mat', 'palm_rcl_ch1');

load ('lat_ch1_m2.mat') 
trial_lat = paper_feature_dwt(lat_ch1,order);
lat_rcl_ch1 = (trial_lat.frc1);
% lat_rcl_ch1 = [mean(abs(lat_rcl_ch1(:,1:18)),2), mean(abs(lat_rcl_ch1(:,19:36)),2)];
%save('rcmDistance_18_lat_m2_ch1.mat', 'lat_rcl_ch1');

load ('tip_ch1_m2.mat') 
trial_tip = paper_feature_dwt(tip_ch1,order);
tip_rcl_ch1 = (trial_tip.frc1);
% tip_rcl_ch1 = [mean(abs(tip_rcl_ch1(:,1:18)),2), mean(abs(tip_rcl_ch1(:,19:36)),2)];
%save('rcmDistance_18_tip_m2_ch1.mat', 'tip_rcl_ch1');

%channel 2
load ('cyl_ch2_m2.mat')    
trial_cyl = paper_feature_dwt(cyl_ch2,order);
cyl_rcl_ch2 = (trial_cyl.frc1);
% cyl_rcl_ch2 = [mean(abs(cyl_rcl_ch2(:,1:18)),2), mean(abs(cyl_rcl_ch2(:,19:36)),2)];
%save('rcmDistance_18_cyl_m2_ch2.mat', 'cyl_rcl_ch2');

load ('hook_ch2_m2.mat')     
trial_hook = paper_feature_dwt(hook_ch2,order);
hook_rcl_ch2 = (trial_hook.frc1);
% hook_rcl_ch2 = [mean(abs(hook_rcl_ch2(:,1:18)),2), mean(abs(hook_rcl_ch2(:,19:36)),2)];
%save('rcmDistance_18_hook_m2_ch2.mat', 'hook_rcl_ch2');

load ('spher_ch2_m2.mat') 
trial_spher = paper_feature_dwt(spher_ch2,order);
spher_rcl_ch2 = (trial_spher.frc1);
% spher_rcl_ch2 = [mean(abs(spher_rcl_ch2(:,1:18)),2), mean(abs(spher_rcl_ch2(:,19:36)),2)];
%%save('rcmDistance_18_spher_m2_ch2.mat', 'spher_rcl_ch2');

load ('palm_ch2_m2.mat') 
trial_palm = paper_feature_dwt(palm_ch2,order);
palm_rcl_ch2 = (trial_palm.frc1);
% palm_rcl_ch2 = [mean(abs(palm_rcl_ch2(:,1:18)),2), mean(abs(palm_rcl_ch2(:,19:36)),2)];
%save('rcmDistance_18_palm_m2_ch2.mat', 'palm_rcl_ch2');

load ('lat_ch2_m2.mat') 
trial_lat = paper_feature_dwt(lat_ch2,order);
lat_rcl_ch2 = (trial_lat.frc1);
% lat_rcl_ch2 = [mean(abs(lat_rcl_ch2(:,1:18)),2), mean(abs(lat_rcl_ch2(:,19:36)),2)];
%save('rcmDistance_18_lat_m2_ch2.mat', 'lat_rcl_ch2');

load ('tip_ch2_m2.mat') 
trial_tip = paper_feature_dwt(tip_ch2,order);
tip_rcl_ch2 = (trial_tip.frc1);
% tip_rcl_ch2 = [mean(abs(tip_rcl_ch2(:,1:18)),2), mean(abs(tip_rcl_ch2(:,19:36)),2)];
%save('rcmDistance_18_tip_m2_ch2.mat', 'tip_rcl_ch2');

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

% for j=1:5
%     indices = crossvalind('kfold', length(trainmat), 2);
%     cp = classperf(group);
%     for i = 1:2
%         test = (indices == i);
%         train =~ test;
%         KNNmodl = fitcknn(trainmat(train, :), group(train, :), 'NumNeighbors',3);
%         ghat = predict(KNNmodl, trainmat(test, :));
%         classperf(cp,ghat,test);
%     end
%     cp.countingMatrix;
% KNNmodl = fitcknn(trainmat(train, :), group(train, :), 'NumNeighbors',3);
%     CVKNNMdl = crossval(KNNmodl, 'kfold', 2);
%     classError = kfoldLoss(CVKNNMdl);
%     accu(j) = 1- cp.errorrate;
% end
% accuracy(order) = mean(accu)
%% two fold cross validation classify
% 6 class classifier
newtrain = trainmat;
err=0;
for j=1:5
    indices = crossvalind('kfold', length(newtrain), 2);
    cp = classperf(group);
    for i=1:2
        test = (indices==i);       
        train =~ test;
        
        class = classify(newtrain(test,:), newtrain(train,:), group(train,:));
        classperf(cp,class,test)
    end
        cp.CountingMatrix
    err = err+cp.errorrate;
end
accuracy(order) = 1-err/5
end
% save('accuracy_m2', 'accuracy')
toc
% figure
% plot(1:order,accuracy(1:end))
% xlabel("Model Order")
% ylabel("Accuracy")
% save('accracy_m2 .mat', 'accuracy')
% total_sample=180;
% no_fold=2;
% 
% for j=1:1
%     group2=[ones(90,1); 2*ones(90,1)];
%     indices = crossvalind('kfold', length(newtrain), 2);
%     cp2 = classperf(group2);
%     class2=zeros(total_sample,1);
%     for i=1:no_fold
%         test = (indices == i); train = ~test;
%         class2(test,:)=knnclassify(newtrain(test,:),newtrain(train,:), group2(train,:),3);
%         class2_2 = knnclassify(newtrain(test,:),newtrain(train,:), group2(train,:),3);
%         classperf(cp2,class2_2,test);
%     end
%     cp2.CountingMatrix
%     
%    
%     train2=newtrain;
%     newgroup= group;
%     tip=0;
%     cyl=0; 
%     palm=0;
%     spher = 0;
%     hook = 0;
%     lat= 0;
%     for i=1:180
%         if (class2(i,1)~=1) && (i <= 90)
%                train2(i,:)=[];
%                newgroup(i,:)=[];
%                if i <=30
%                    cyl=cyl+1;
%                elseif i >30 && i <= 60
%                    hook = hook +1;
%                else
%                    spher = spher+1;
%                end
%         elseif (class2(i,1)==1)&& (i>90)
%                train2(i,:)=[];
%                newgroup(i,:)=[];
%                if i >90 && i <= 120
%                    palm=palm+1;
%                elseif i >120 && i <= 150
%                    lat=lat+1;
%                else
%                    tip=tip+1;
%                end
%         end
%     end
% 
%     group23_high = [ones(30-cyl,1); 2*ones(30-hook,1); 3*ones(30-spher,1)];
%     group23_low = [ones(30-palm,1); 2*ones(30-lat,1); 3*ones(30-tip,1)];
%     group26 = [ones(30-cyl,1); 2*ones(30-hook,1); 3*ones(30-spher,1); 4*ones(30-palm,1); 5*ones(30-lat,1); 6*ones(30-tip,1)];
%     train26 = train2;
%     indices = crossvalind('Kfold',length(train26),no_fold);
%     cp2_six = classperf(group26);
%     for i=1:no_fold
%         test = (indices == i); train = ~test;
%         class23_6=knnclassify(train26(test,:),train26(train,:), group26(train,:),3);
%         classperf(cp2_six,class23_6,test);
%     end
%     cp2_six.CountingMatrix
%     cp2_six.CorrectRate
%     
%     high = 90-(spher+cyl+hook);
%     train23_high = train2(1:high, :);
%     train23_low =  train2(high+1:end, :);
%     class23_high=zeros(high,1);
%     class23_low=zeros(length(train23_low),1);
%     indices = crossvalind('Kfold',length(train23_high),no_fold);
%     cp2_high = classperf(group23_high);
%     for i=1:no_fold
%         test = (indices == i); train = ~test;
%         class23_high(test,:)=knnclassify(train23_high(test,:),train23_high(train,:), group23_high(train,:),3);
%         class23_3 = knnclassify(train23_high(test,:),train23_high(train,:), group23_high(train,:),3);
%         classperf(cp2_high,class23_3,test);
%     end
%     cp2_high.CountingMatrix
%     
%     indices = crossvalind('Kfold',length(train23_low),no_fold);
%         cp2_low = classperf(group23_low);
%     for i=1:no_fold
%         test = (indices == i); train = ~test;
%         class23_low(test,:)= knnclassify(train23_low(test,:),train23_low(train,:), group23_low(train,:),3);
%         class23_2 = knnclassify(train23_low(test,:),train23_low(train,:), group23_low(train,:),3);
%         classperf(cp2_low,class23_2,test);
%     end
%     cp2_low.CountingMatrix
%     accu2(j)=100*length(find((group2-class2)==0))/180;
%     accu23_high(j)=100*length(find((group23_high-class23_high)==0))/high;
%     accu23_low(j)=100*length(find((group23_low-class23_low)==0))/length(train23_low);
% end
% final_accu23_low=[mean(accu23_low)]
% final_accu23_high=[mean(accu23_high)]
% final_accu2=[mean(accu2)] 


% figure
% plot(1:order,final_accu23_low)
% xlabel("Model Order")
% ylabel("Accuracy")
% figure
% plot(1:order,final_accu23_high)
% xlabel("Model Order")
% ylabel("Accuracy")
% figure
% plot(1:order,final_accu2)
% xlabel("Model Order")
% ylabel("Accuracy")
