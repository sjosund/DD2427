function cim = GrabCenterPixels( im_fname, pw, ph )
%GRABCENTERPIXELS Summary of this function goes here
%   Detailed explanation goes here
image = double(imread(im_fname));
if( pw == 1 && ph == 1)
    cim = image;
else
    %image = rgb2gray(double(image));
    [H W D] = size(image);
    hMin = floor(H/2-H*ph/2);
    hMax = floor(H/2+H*ph/2);
    wMin = floor(W/2-W*pw/2);
    wMax = floor(W/2+W*pw/2);
    cim = image(hMin:hMax,wMin:wMax);
end
end

