function Visualize( D )
%VISUALIZE Summary of this function goes here
%   Detailed explanation goes here
Y = mdscale(D,2);
%figure;
ni = size(D,1);
plot(Y(1:ni/2,1), Y(1:ni/2,2), 'rx', 'MarkerSize', 3);
hold on
plot(Y(ni/2+1:end,1), Y(ni/2+1:end,2), 'bo', 'MarkerSize',3);
axis equal

end

