% Saliency estimation demo
% [HISTORY]
% Mar 19, 2013 : created by Aykut Erdem

% close all;
clear all;
clc;

% options for saliency estiomation
options.size = 512;                     % size of rescaled image
options.quantile = 1/10;                % parameter specifying the most similar regions in the neighborhood
options.centerBias = 1;                 % 1 for center bias and 0 for no center bias
options.modeltype = 'CovariancesOnly';  % 'CovariancesOnly' and 'SigmaPoints' 
                                        % to denote whether first-order statistics
                                        % will be incorporated or not

filename = '../Saliency4asd/Images/1.png';
% Visual saliency estimation with covariances only                                    
salmap1 = saliencymap(filename, options);

% Visual saliency estimation with covariances and means
options.modeltype = 'SigmaPoints';
salmap2 = saliencymap(filename, options);

% Display results
im = imread(filename);
subplot(131);
imagesc(im); colormap(gray); axis image off;
title('Input image');

subplot(132);
imagesc(salmap1); colormap(gray); axis image off;
title('Covariances only');

subplot(133);
imagesc(salmap2); colormap(gray); axis image off;
title('Covariances and means');
                       