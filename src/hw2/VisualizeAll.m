function VisualizeAll(  )
%VISUALIZEALL Summary of this function goes here
%   Detailed explanation goes here
dirNameMisaligned = '/Users/lassolass/Developer/Image Based Recognition/Pics/Misaligned_Pics';
dirNameAligned = '/Users/lassolass/Developer/Image Based Recognition/Pics/Aligned_Pics';
nbins = 30;
ng = 2;

Fs = ComputeDescriptors(dirNameAligned,nbins,ng);
dists = [];

clf
figure;
figure;

for i=1:4
    dists{i} = ComputeDistanceMatrix(Fs{i});
    
    figure(1);
    subplot(2,4,i);
    imagesc(dists{i});
    colorbar
    
    figure(2);
    subplot(2,4,i);
    Visualize(dists{i});
end


Fs = ComputeDescriptors(dirNameMisaligned,nbins,ng);
dists = [];
for i=1:4
    dists{i} = ComputeDistanceMatrix(Fs{i});
    
    figure(1);
    subplot(2,4,i+4);
    imagesc(dists{i});
    colorbar
    
    figure(2);
    subplot(2,4,i+4);
    Visualize(dists{i});
end

end

