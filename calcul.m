####################################
#  Calcul                          #
####################################
#
# Description:
# Calcul R, G, B features in an area
#
# Input:
# X : Matrix of mouse click abscissa
# Y : Matrix of mouse click ordinate
# im : image from imread
#
# Output:
# r : Red feature value
# g : Green feature value
# b : Blue feature value
#
function [r, g, b] = calcul (X, Y, im)
    #Build a mask
    [rows, columns, numberOfColorChannels] = size(im);
    bw = poly2mask(X, Y, rows, columns);
    
    #Count mask pixel size
    wpixCount = sum(sum(bw));
    
    #Apply mask
    im = im.*bw;
    
    #Calcul
    r = sum(sum(im(:, :, 1)))/wpixCount;
    g = sum(sum(im(:, :, 2)))/wpixCount;
    b = sum(sum(im(:, :, 3)))/wpixCount;
endfunction
