function Fs = ExtractGridHistogram( im, ng, nbins )
%EXTRACTGRIDHISTOGRAM Summary of this function goes here
%   Detailed explanation goes here
ng = 2;
xs = floor(linspace(1, size(im, 2)+1, ng+1));
ys = floor(linspace(1, size(im, 1)+1, ng+1));
Fs = [];

for i=1:ng
    ii = xs(i):xs(i+1)-1;
    for j=1:ng
        jj = ys(j):ys(j+1)-1;
        pim = im(jj, ii);
        fs = hist(pim(:), nbins);
        fs = fs(:)/sum(fs);            
        Fs = [Fs; fs];
    end
end
    
end

