####################################
#  AddPoints                       #
####################################
#
# Description:
# Add a points to the polygon defined by X, Y
#
# Input:
# X : Matrix of mouse click abscissa
# Y : Matrix of mouse click ordinate
#
# Output:
# X : Matrix of mouse click abscissa
# Y : Matrix of mouse click ordinate
# P : Matrix of 2 columns (X, Y)
#
function [P, X, Y] = AddPoints (X, Y)
  #initial state
  Z = [];
  c = 0;
  n = 1;
  
  #If no points, build a polygon with at least 3 pts
  if isempty(X)
    n = 3;
  elseif 
    c = size(X);
  endif
  [x, y] = ginput(n);
  
  #Push
  X = [X; x];
  Y = [Y; y];
  
  #Sort points to create a plain area
  if c>2
    massCenter = [sum(X)/c, sum(Y)/c];
    for k = 1:c
      d = [X(k)-massCenter(1) Y(k)-massCenter(2)];
      Z = [Z; atan2(d(2), d(1))];
    endfor
    [~, I] = sort(Z);
    X = X(I);
    Y = Y(I);
  endif
  
  #Shape it
  P = cat(2, X, Y);
endfunction
