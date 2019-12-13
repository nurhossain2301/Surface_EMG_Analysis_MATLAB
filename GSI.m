function s = GSI(data1, data2)
    [a,b] = size(data1);
    norm_data1 = matrixNormalize(data1);
    norm_data2 = matrixNormalize(data2);
    trial_data1vsdata2 = [norm_data1; norm_data2];
    group = [ones(a,1); -ones(a,1)];
    X = trial_data1vsdata2 + 1e-3*randn(size(trial_data1vsdata2));      % tie-breaker for toy data
    p = size(X,1);        % number of points
    d2 = dist2(X, trial_data1vsdata2);
    [S,I] = sort(d2);     % sort each col by distance;  I = index
    t1 = group(I(1,:));         % labels of points          (row 1 of d2)
    t2 = group(I(2,:));        % labels of n-neighbours  (row 2 of d2)
    s = sum(t1==t2)/p; 
end