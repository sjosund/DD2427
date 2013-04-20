function cim = GrabCenterPixels( im_fname, p )
%GRABCENTERPIXELS Summary of this function goes here
%   Detailed explanation goes here
image = imread(im_fname);
[H W D] = size(image);
hMin = floor(H/2-H*p/2);
hMax = floor(H/2+H*p/2);
wMin = floor(W/2-W*p/2);
wMax = floor(W/2+W*p/2);
cim = image(hMin:hMax,wMin:wMax,1:3);
end

