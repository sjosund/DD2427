function Fs = ExtractHistogram( im, nbins )
%EXTRACTHISTOGRAM Summary of this function goes here
%   Detailed explanation goes here
[Fs, xx] = hist(im(:), nbins);
Fs = Fs(:)/sum(Fs);
%stem(xx, Fs);

end

