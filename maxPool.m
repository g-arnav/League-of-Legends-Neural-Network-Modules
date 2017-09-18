function [pooledConvolution] = maxPool(convolution, poolSize)
  
  ch = size(convolution, 1);
  cw = size(convolution, 2);
  
  pooledConvolution = zeros(ch / poolSize, cw / poolSize, 3);
  
  for x = 1 : size(pooledConvolution, 2)
    for y = 1 : size(pooledConvolution, 1)
      area = convolution((poolSize * y) - (poolSize - 1) : (poolSize * y) , (poolSize * x) - (poolSize - 1) : (poolSize * x) , :);
      pooledConvolution(y, x, :) = max(max(area));
      end
    end
  end
%This does not yet work if the pool area does not exactly align with the edge of the image.
