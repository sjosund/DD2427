function [ images, w, h ] = LoadData( dirName, pw, ph )
%LOADDATA [ images, labels, w, h ] = LoadData( dirName )
%   Detailed explanation goes here
fileList = dir(dirName);
numberOfImages = length(fileList)-3
temp = imread(strcat(dirName,fileList(4).name));
images = [];
h = zeros(numberOfImages,1);
w = zeros(numberOfImages,1);

for fileIndex = 1:numberOfImages
    fileName = strcat(dirName,fileList(fileIndex+3).name);
    image = GrabCenterPixels(fileName,pw,ph);%double(imread( fileName ));
    image(:) = (image(:) - mean(image(:)))/std(image(:));
    if (isempty(images))
        images = zeros(size(image,1)*size(image,2),numberOfImages);
    end
    images(:,fileIndex) = image(:);
    h(fileIndex) = size(image,1);
    w(fileIndex) = size(image,2);    
end

end

