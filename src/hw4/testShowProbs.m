function testShowProbs()
%TESTSHOWPROBS Summary of this function goes here
%   Detailed explanation goes here
    hsv = 1;
    dirName = '../../Pics/lfw/George_W_Bush/';
    [mu, sigma] = TrainColourModel(dirName,20,hsv);
    
    image = imread('../../Pics/bike_small.jpg');
    if (hsv)
        image = double(rgb2hsv(image));
    else
        %image = double(image);
    end
    
    im = reshape(image,[size(image,1)*size(image,2),3]);
    if (hsv)
        im = [cos(im(:,1)), sin(im(:,1)), im(:,2), im(:,3)];
    end
    probs = GaussLikelihood(im,mu,sigma);
    probs = reshape(probs,[size(image,1),size(image,2)]);
    imagesc(probs)
    colormap(gray)
end

