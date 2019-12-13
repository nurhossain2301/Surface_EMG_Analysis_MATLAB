function feature = emd_feature( EMG_data, order )

[j, ~] = size(EMG_data);
rcl = zeros(j, order);
for i=1:j
    x = EMG_data(i,:);
    
    ax = lpc(x, order);
    rclax = poly2rc(ax);
    rcl(i,:) = rclax;
end
feature = rcl;
end