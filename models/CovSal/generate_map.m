% options for saliency estiomation
options.size = 512;                     % size of rescaled image
options.quantile = 1/10;                % parameter specifying the most similar regions in the neighborhood
options.centerBias = 1;                 % 1 for center bias and 0 for no center bias
%options.modeltype = 'CovariancesOnly';  % 'CovariancesOnly' and 'SigmaPoints' 
                                        % to denote whether first-order statistics
                                        % will be incorporated or 
% Visual saliency estimation with covariances and means
options.modeltype = 'SigmaPoints';

%location of the directory where input images are stored.
input_directory = '../../../Saliency4asd/Images/';
%location where output saliency maps will be stored.
output_directory = './map/';

for i = 1 : 300
    filename = [num2str(i, '%d') '.png'];
    salmap = saliencymap([input_directory filename], options);
    out = uint16(salmap * 100);
    imwrite(out, [output_directory filename]);
end