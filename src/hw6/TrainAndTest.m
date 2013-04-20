function [res] = TrainAndTest( dir_name )
%TRAINANDTEST Summary of this function goes here
%   Detailed explanation goes here

[im,labels,w,h] = LoadData(dir_name);

trainIm = im(:,1:1000);
testIm = im(:,1000:2000);
trainLabels = labels(1:1000);
testLabels = labels(1000:2000);

iterations = 100:100:10000;
res = zeros(10,2);
%res_for_plot = zeros(10,length(iterations));


%for iter_index = 1:length(iterations)
    for i=0:9
        w = PerceptronLearning(trainIm,trainLabels,i);
        [tp, tn] = TestHyperPlane(testIm,testLabels,i,w);
        res(i+1,1) =  tp;
        res(i+1,2) =  tn;
 %       res_for_plot(i+1,iter_index) = tp;
    end    
%end

%plot(iterations,sum(res_for_plot,1))
%axis([0 1000 0 10000])
end

