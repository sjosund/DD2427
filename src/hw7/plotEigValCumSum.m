function [ output_args ] = plotEigValCumSum( D )
%PLOTEIGVALCUMSUM Summary of this function goes here
%   Detailed explanation goes here
clf
y = [0; cumsum(D)/sum(D)];
x = 0:length(D);
plot(x,y)
xlabel('Number of eigenvectors')
ylabel('variance captured')
axis([0 length(D) 0 1])
end

