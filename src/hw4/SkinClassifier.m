function bim = SkinClassifier( im )
%SKINCLASSIFIER Summary of this function goes here
%   Detailed explanation goes here
    dirSkin = '../../Pics/lfw/George_W_Bush/';
    dirNonSkin = '../../Pics/BackgroundImages/';
    
    [muSkin, sigmaSkin] = TrainColourModel(dirSkin,20,1);
    [muNonSkin, sigmaNonSkin] = TrainColourModel(dirNonSkin,20,1);
    
    image = double(rgb2hsv(im));
    im = reshape(image,[size(image,1)*size(image,2),3]);
    im = [cos(im(:,1)), sin(im(:,1)), im(:,2), im(:,3)];
    
    bim = (GaussLikelihood(im,muSkin,sigmaSkin) > ...
            GaussLikelihood(im,muNonSkin,sigmaNonSkin));
    
    bim = reshape(bim,[size(image,1),size(image,2)]);
end

