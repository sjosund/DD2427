%%
addpath('/Users/lassolass/Developer/Image Based Recognition/utils/')
dirName = '/Users/lassolass/Developer/Image Based Recognition/Pics/lfw/George_W_Bush/';
pw = 0.33;
ph = 0.5;
[images, w, h] = LoadData( dirName, pw, ph );
[ mu, W, D ] = ComputePCABasis( images );
W = -W;
D
showEigenfaces( W,w,h );
figure;
plotEigValCumSum( D );
%%
dirName = '/Users/lassolass/Developer/Image Based Recognition/Pics/ADAFACES/';
pw = 1;
ph = 1;
[images, w, h] = LoadData( dirName, pw, ph );
[ mu, W, D ] = ComputePCABasis( images );
showEigenfaces( W,w,h );
W=-W;
figure;
plotEigValCumSum( D );