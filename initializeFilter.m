function [feature] = initializeFilter(length, width)

  feature = randi([-1, 1]*10^5, length, width, 3) ./ 10^5;
