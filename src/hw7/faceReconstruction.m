function faceReconstruction()
%FACERECONSTRUCTION Summary of this function goes here
%   Detailed explanation goes here
dirName = '/Users/lassolass/Developer/Image Based Recognition/Pics/ADAFACES/';
pw = 1;
ph = 1;
[images, w, h] = LoadData( dirName, pw, ph );
[ mu, W, D ] = ComputePCABasis( images );

im = imread('/Users/lassolass/Developer/Image Based Recognition/Pics/StudentImages/Student4.jpg');
im = double(im(183:248,297:362));

images = {};
%images{1} = imresize(imresize(im,[h(1),w(1)]),size(im));
amountOfEigenvectors = [10, 50, 100, 200];

for i=1:length(amountOfEigenvectors)
    images{i} = ReconstructFace(im,mu,W,w,h,amountOfEigenvectors(i));
end

montage(images,'Size',[1 4]);
end

