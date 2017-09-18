function [] = convolutionalNN(picture)

  image = double(imread(picture));
  
  image = getInputMap(image);
  
  filter = initializeFilter(5, 5);
  
  slider = 5;
  convolution = computeFilter(image, filter, slider);
  
  convolution = reLu(convolution);
  
  poolSize = 2;
  pool = avgPool(convolution, poolSize);
  
end
