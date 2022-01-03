Three models are used here for generating saliency maps-
1. ```GBVS```
2. ```CovSal```
3. ```CorSal```

These models are stored under the path ```./models/```. The files for generating maps for each models are ```generate_map.m```.
For generating saliency maps, navigate to the folder for desired model and then open the file ```generate_map.m```. Then specify the input directory and output directory to the variables ```input_directory``` and ```output_directory``` respectively. Then simply run ```generate_map```.

And for running evaluating metrics, navigate to the path ```./metrics/``` and open the file ```evaluate_metric.m```. Here specify the directory for saliency map and fixation map to the variables ```saliency_map_dir``` and ```fixation_map_dir``` respectively. And also specify the metric you want to evaluate by changing the method call ```NSS``` to your desired metric method. Here we were only able to evaluate using the metrics- ```AUC_Borji```, ```CC```, ```KLdiv``` and ```NSS```. Then evaluate by running ```evaluate_metric```.
