function cim = GrabCenterPixels( im_fname, p )
%GRABCENTERPIXELS Summary of this function goes here
%   Detailed explanation goes here
image = imread(im_fname);
[H W D] = size(image);

cim = image((H/2-H*p/2):(H/2+H*p/2),(W/2-W*p/2):(W/2+W*p/2),1:3);
end

