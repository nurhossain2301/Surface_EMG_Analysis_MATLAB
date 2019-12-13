function trial_fea = paper_feature_dwt( EMG_data, order )

j = 1;
for i=1:30
    trial=EMG_data(i,:);
    for k=150:300:3000    % window overlap size 60 sample, 120 mili second
        if k+599>3000   % window size 600 sample, 1200 mili second 
            break;
        end
        win(j,:)=trial(k:k+599); 
       
        x=win(j,:);
        

               
        [ca, cd]=dwt(x,'db4'); %dwt
       
        
     
        al = lpc(ca,order);
        ah = lpc(cd,order);
        rclca = poly2rc(al);
        rclcd = poly2rc(ah);
        rcl(j,:) = rclca;
        rch(j,:) = rclcd;
        j=j+1;
    end
    
%     rclm=mean(rcl);
%     rchm=mean(rch);
%     rcm = [rcl rch];


% frc11(i,:)=(rcm);

end
frc11 = [rcl, rch];
trial_fea.frc1= frc11;
end

