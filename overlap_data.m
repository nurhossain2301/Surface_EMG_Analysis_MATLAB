function newData = overlap_data(EMG_data)
j = 1;
for i=1:30
    trial=EMG_data(i,:);
    for k=1:300:3000 
        if k+599>3000   
            break;
        end
        newData(j,:)=trial(k:k+599);
        j=j+1;
    end
end
end