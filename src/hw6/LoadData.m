function [ images, labels, w, h ] = LoadData( dirName )
%LOADDATA [ images, labels, w, h ] = LoadData( dirName )
%   Detailed explanation goes here
fileList = dir(dirName);
numberOfImages = length(fileList)-3;
temp = imread(strcat(dirName,fileList(4).name));
images = zeros(size(temp,1)*size(temp,2), numberOfImages);
labels = zeros(numberOfImages,1);
h = zeros(numberOfImages,1);
w = zeros(numberOfImages,1);

for fileIndex = 1:numberOfImages
    fileName = strcat(dirName,fileList(fileIndex+3).name);
    image = double(imread( fileName ));
    image(:) = (image(:) - mean(image(:)))/std(image(:));
    images(:,fileIndex) = image(:);
    h(fileIndex) = size(image,1);
    w(fileIndex) = size(image,2);
    
    labelIndex = 11;
    if ( ~isempty(regexp(fileList(fileIndex+3).name,'train')))
        labelIndex = 12;
    end    
    labels(fileIndex) = str2num( fileList(fileIndex+3).name(labelIndex) );
end

end

