function Fs = ExtractSIFT( im )
%EXTRACTSIFT Summary of this function goes here
%   Detailed explanation goes here
w = size(im,1);
sc = (w-2)/12;
fc = [w/2;w/2;sc;0];
addpath('../../libs/vlfeat-0.9.16/');
[fc,Fs] = vl_sift(im,'frames',fc);
Fs = double(Fs(:));
%figure(1)
%hold off;imagesc(im);colormap(gray);axis equal;
%hold on;
%h3 = vl_plotsiftdescriptor(Fs,fc);
%set(h3,'color','r','Linewidth',3);

end

