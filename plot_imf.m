function A = plot_imf(raw_data)
    [aa, bb] = size(raw_data);
    x = 0:1:bb-1;
    for i = 3:aa
        s = raw_data(i, : );
        [imf, res] = emd(s, 'SiftRelativeTolerance', .0000001, 'MaxNumIMF', 8, 'Interpolation', 'pchip', 'Display', 0);
        A = [imf, res];
        A = A';
        [cc, ~] = size(A);
        cc
        figure1=figure('Position', [10, 10, 800, 950]);
        subplot(cc+1,1,1)
        plot(x, s)
        for k=1:cc
            subplot(cc+1,1,k+1)
            plot(x, A(k,:))
        end
        break
    end
end