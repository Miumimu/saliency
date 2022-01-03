score = zeros(1, 300);
%saliency map directory
saliency_map_dir = '../../gbvs_map/';
%fixation map directory
fixation_map_dir = '../../Saliency4asd/TD_FixMaps/';
for i = 1:300 
    saliency_map = imread([saliency_map_dir int2str(i) '.png']);  
    fixation_map = imread([fixation_map_dir int2str(i) '_s.png']);
    %you can change the metrics using AUC_Borji to your desired metric
    %function
    score(1, i) = NSS(saliency_map, fixation_map);
    fprintf('%d: %f\n', i, score(1, i));
end

result = mean(score);
fprintf('final result: %f\n', result);
