function [inputMap] = getInputMap(initialPic)
  
  inputMap = initialPic ./ 127.5 - 1;
