function w = PerceptronLearning( X, labels, d1 )
%PERCEPTRONLEARNING  w = PerceptronLearning( X, labels, d1 )
%   Detailed explanation goes here
step_size = 0.0001;
X = [ ones(1,size(X,2)) ; X ];
w = zeros(size(X,1),1); w(1) = 1; w(2) = 1;

for i=1:length(labels)
    if (labels(i) == d1)
        labels(i) = 1;
    else
        labels(i) = -1;
    end
end

max_iterations = 10000;

for i=1:max_iterations
    y = (sign(w'*X))';
    y(y==0) = 1;
    bad_classifications = (y ~= labels);
    if ( sum(bad_classifications) == 0 )
        break
    end
    w = (w' + step_size* (bad_classifications.*labels)' * X')';    
end


end

