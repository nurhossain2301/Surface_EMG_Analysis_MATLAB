function s_value = svd_feature(raw_data)
    [aa, ~] = size(raw_data);
    s = raw_data;
    j=1;
    for i = 1:1
%         s = raw_data(i, : );
%         D = sumsqr(s);
        s_t = s';
        A = s_t*s;
        K = svd(A);
        plot(K)
        s_value(i,:) = K(:,1);
        
        j=j+1;
    end
end