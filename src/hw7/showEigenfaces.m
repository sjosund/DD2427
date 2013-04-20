function showEigenfaces( W,w,h )
%SHOWEIGENFACES Summary of this function goes here
%   Detailed explanation goes here
a = {};
numberOfImages = size(W,2);
for i=1:10;
    a{i} = reshape(W(:,i),[h(1),w(1)]);
end
montage(a,'Size',[2 5]);

end

