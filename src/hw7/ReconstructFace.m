function rim = ReconstructFace( im, mu, W, w, h, N )
%RECONSTRUCTFACE Summary of this function goes here
%   Detailed explanation goes here

[hOriginal wOriginal] = size(im);
im = imresize(im,[h(1),w(1)]);
im = im(:);
imMu = mean(im);
imStd = std(im);
im = (im-imMu)/imStd;

im = im - mu;
coeff = (W(:,1:N))'*im

rim = zeros(size(im));
for i=1:N
    rim = rim + coeff(i)*W(:,i);
end
rim = rim + mu;

rim = rim*imStd + imMu;
rim = reshape(rim,[h(1), w(1)]);
rim = imresize(rim,[hOriginal,wOriginal]);

end

