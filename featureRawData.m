function trial_feature =featureRawData( EMG_data, order )

j = 1;
rcl1 = [];
for i=1:30
    rcl = [];
    trial = EMG_data(i,:);
    for k=150:60:3000    % window overlap size 60 sample, 120 mili second
        if k+599>3000   % window size 600 sample, 1200 mili second
            break;
        end
        x(j,:) = trial(k:k+599); 
        al = lpc(x(j,:), order);
        rclRaw = poly2rc(al);
        rclRaw = rclRaw';
        sx = size(rclRaw);
        sy = size(rcl);
        a = max(sx(1),sy(1));
        z = [[rclRaw;zeros(abs([a 0]-sx))],[rcl;zeros(abs([a,0]-sy))]];
        rcl = z;
        j=j+1;
    end 
    rcl1(i,:) = rcl;
end
trial_feature = rcl1;
end