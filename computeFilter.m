function [convolution] = computeFilter(picture, filter, slider)
  
  h = size(filter, 1);
  w = size(filter, 2);
  
  convolution = zeros(((size(picture, 1) - (floor(h / 2) * 2)) / slider), ((size(picture, 2) - (floor(w / 2) * 2)) / slider), 3);
  for x = 1 : size(convolution, 2)
    for y = 1 : size(convolution, 1)
      avg = picture((slider * y) - (w - 1) : (slider * y) , (slider * x) - (h - 1) : (slider * x) , :) .* filter(:, :, :);
      avg = sum(sum(avg)) ./ (h * w);
      convolution(y , x, :) = avg;
    end
  end
