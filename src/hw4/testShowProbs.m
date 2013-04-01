function testShowProbs()
%TESTSHOWPROBS Summary of this function goes here
%   Detailed explanation goes here
    dirName = '../../Pics/lfw/George_W_Bush/';
    [mu, sigma] = TrainColourModel(dirName,20,1);
    
    image = imread('../../Pics/bike_small.jpg');
    image = double(rgb2hsv(image));
    im = reshape(image,[size(image,1)*size(image,2),3]);
    im = [cos(im(:,1)), sin(im(:,1)), im(:,2), im(:,3)];
    probs = GaussLikelihood(im,mu,sigma);
    probs = reshape(probs,[size(image,1),size(image,2)]);
    imagesc(probs)
    colormap(gray)
end

