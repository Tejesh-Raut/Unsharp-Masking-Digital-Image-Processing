%% MyMainScript

%% Demo of Shrink Image By Factor 2
tic;
myUnsharpMasking('data\lionCrop.mat');
toc;
%% Tuned parameters are Window size 21 and ScaleFactor = 0.1
%% Demo of Shrink Image By Factor 2
tic;
myUnsharpMasking('data\superMoonCrop.mat');
toc;
%% Tuned parameters are Window size 21 and ScaleFactor = 0.1