function[newMatrix] = reLu(matrix)
  
  
  
  if ndims(matrix) == 3
    h = size(matrix, 1);
    w = size(matrix, 2);
    d = size(matrix, 3);
    
    for y = 1 : h
      for x = 1 : w
        for z = 1 : d
          if matrix(y, x, z) < 0
            matrix(y, x, z) = 0;
          end
        end
      end
    end
    
    newMatrix = matrix
    
  elseif ndims(matrix) == 2
    h = size(matrix, 1);
    w = size(matrix, 2);
    
    for y = 1 : h
      for x = 1 : w
        if matrix(y, x) < 0
          matrix(y, x) = 0;
        end
      end
    end
    
    newMatrix = matrix;
  
  end  

end
