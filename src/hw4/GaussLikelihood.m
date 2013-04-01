function lvals = GaussLikelihood( xs, mu, Sigma )
%GAUSSLIKELIHOOD Summary of this function goes here
%   Detailed explanation goes here
xs = double(xs);
lvals = zeros(length(xs),1);

%gaussian = @(x) 1/((2*pi)^(3/2)*det(Sigma)^(1/2))*...
%            exp(-1/2*(x-mu)/Sigma*(x-mu)');
gaussian = @(x) -(1/2)*log(det(Sigma))-1/2*(x-mu)/Sigma*(x-mu)';
      
for i=1:length(xs)
    lvals(i,:) = gaussian(xs(i,:));
end
end

