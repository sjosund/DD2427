function [ pim, dim ] = MakeDichromatIms( image )
%EXERCISE1 Summary of this function goes here
%   Detailed explanation goes here
image = double(image);

r = (image(:,:,1)/255).^2.2;
g = (image(:,:,2)/255).^2.2;
b = (image(:,:,3)/255).^2.2;

rp = 0.992052*r + 0.003974;
gp = 0.992052*g + 0.003974;
bp = 0.992052*b + 0.003974;

rd = 0.957237*r + 0.0213814;
gd = 0.957237*g + 0.0213814;
bd = 0.957237*b + 0.0213814;

M = [17.8824 43.5161 4.11935
     3.45565 27.1554 3.86714
     0.0299566 0.184309 1.46709];
 
P = [0 2.02344 -2.52581
     0 1        0
     0 0        1];

D = [1 0 0
     0.494207 0 1.24827
     0 0 1];

tmp = inv(M)*P*M*[rp(:)'; gp(:)'; bp(:)'];
rp(:) = tmp(1,:);
gp(:) = tmp(2,:);
bp(:) = tmp(3,:);

tmp = M\D*M*[rd(:)'; gd(:)'; bd(:)'];
rd(:) = tmp(1,:);
gd(:) = tmp(2,:);
bd(:) = tmp(3,:);

Rp = 255*(rp.^(1/2.2));
Gp = 255*(gp.^(1/2.2));
Bp = 255*(bp.^(1/2.2));

Rd = 255*(rd.^(1/2.2));
Gd = 255*(gd.^(1/2.2));
Bd = 255*(bd.^(1/2.2));

pim = zeros(size(image));
dim = zeros(size(image));

pim(:,:,1) = Rp;
pim(:,:,2) = Gp;
pim(:,:,3) = Bp;

dim(:,:,1) = Rd;
dim(:,:,2) = Gd;
dim(:,:,3) = Bd;

end

