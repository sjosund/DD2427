function [ mu, W, D ] = ComputePCABasis( X )
%COMPUTEPCABASIS Summary of this function goes here
%   Detailed explanation goes here
mu = mean(X,2);
Xc = X - repmat(mu,1,size(X,2));
C = [];

if( size(X,1) > size(X,2) )
    C = 1/size(X,2) * (Xc')*Xc;
else
    C = 1/size(X,2) * Xc * (Xc');
end

[W,D] = eig(C);
D = diag(D);
if( size(X,1) > size(X,2) )
    W = Xc*W;
end

end

