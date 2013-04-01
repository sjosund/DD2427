function [ mu, Sigma ] = TrainColourModel( dirName, n, hsv )
%TRAINCOLOURMODEL Summary of this function goes here
%   Detailed explanation goes here
    
fileList = dir(dirName);
colorVector = [];
for i=3:n+3
    im = GrabCenterPixels(strcat(dirName,fileList(i).name),0.2);
    
    if (hsv == 1)
        im = double(rgb2hsv(im));
    end
    
    im = reshape(im, [size(im,1)*size(im,2),3]);
    colorVector = [colorVector; im];
end

if (hsv == 1)
    colorVector = [cos(colorVector(:,1)), sin(colorVector(:,1)), colorVector(:,2), colorVector(:,3)];
end

mu = mean(colorVector);
Sigma = cov(double(colorVector));

end

