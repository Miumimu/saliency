gbvs_install;
%location of the directory where input images are stored.
input_directory = '../../../Saliency4asd/Images/';
%location where output saliency maps will be stored.
output_directory = './map/';
for i = 1 : 300
    filename = [num2str(i, '%d') '.png'];
    img = imread([input_directory filename]);
    out_gbvs = gbvs(img);
    imwrite(out_gbvs.master_map_resized, [output_directory filename]);
end
