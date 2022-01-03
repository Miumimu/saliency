clear all;
addpath(genpath('external/gbvs'));
run('external/vlfeat-0.9.16/toolbox/vl_setup');


load('codebook.mat');
load('corrMat.mat');

%location of the directory where input images are stored.
input_dir = '../../../Saliency4asd/Images/';
%location where output saliency maps will be stored.
output_dir = './map/';
for i = 1:300
    filename = [int2str(i) '.png'];
    img = imread([input_dir filename]);
    salMap=genSalMap(img,corr,codebook);
    imwrite(salMap, [output_dir filename]);
end
