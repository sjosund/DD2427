function [ tp, tn ] = TestHyperPlane( X, labels, target, w )
%TESTHYPERPLAN Summary of this function goes here
%   Detailed explanation goes here

X = [ ones(1,size(X,2)) ; X ];

for i=1:length(labels)
    if (labels(i) == target)
        labels(i) = 1;
    else
        labels(i) = -1;
    end
end

y = sign(w'*X)';
correct_class = (y == labels);
tp = sum( y(correct_class) == 1 );
tn = sum( y(correct_class) == -1);

end

