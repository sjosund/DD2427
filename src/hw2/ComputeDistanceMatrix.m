function ret = ComputeDistanceMatrix( Fs )
%COMPUTEDISTANCEMATRIX Summary of this function goes here
%   Detailed explanation goes here
numberOfImages = size(Fs,2);
ret = zeros(numberOfImages);
for i=1:numberOfImages
    for j = i:numberOfImages
        d = sqrt(sum( (Fs(:,i) - Fs(:,j)).*(Fs(:,i) - Fs(:,j) ) ));
        ret(i,j) = d;
        ret(j,i) = d;
    end
end

end

