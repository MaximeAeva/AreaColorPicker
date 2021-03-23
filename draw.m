####################################
#  Draw                            #
####################################
#
# Description:
# Draw a polygon over an image
#
# Input:
# im : image from imread
# P : Matrix of 2 columns (X, Y)
#
# Output:
#
function draw (im, P)
    #Clear
    f = gcf;
    clf(f);
    
    #Show image
    imshow(im)
    
    #Draw polygon
    drawFilledPolygon(P, 'facecolor', [0.2, 0.2, 0.8],...
        'facealpha', 0.8, 'edgecolor', 'b');   
endfunction
