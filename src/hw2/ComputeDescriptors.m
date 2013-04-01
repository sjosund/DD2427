function Fs = ComputeDescriptors( DirName, nbins, ng )
%COMPUTEDESCRIPTORS Summary of this function goes here
%   Detailed explanation goes here
mystr = [DirName, '/*.png'];
im_files = dir(mystr);
ni = length(im_files);
ims = cell(1, ni);
addpath(DirName);
for i=1:ni
    col_im = imread(im_files(i).name);
    im = single(rgb2gray(col_im));
    ims{i} = (im - mean(im(:)))/std(im(:));
end

Fs = cell(1,4);

for i=1:ni
    Fs{1} = [Fs{1}, ExtractHistogram(ims{i},nbins)];
    Fs{2} = [Fs{2}, ExtractGridHistogram(ims{i},ng,nbins)];
    Fs{3} = [Fs{3}, ExtractSIFT(ims{i})];
    Fs{4} = [Fs{4}, ExtractTemplate(ims{i})];
end

