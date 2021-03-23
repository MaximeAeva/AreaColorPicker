####################################
#  roiOnClick                      #
####################################
#
# Description:
# Define a Region Of Interest from mouse clicks
#
# Input:
# b : linked uicontrol Calcul (to stop edit while clicking)
# imf : Figure containing image
# im : image
# t1 : red text label
# t2 : Green text label
# t3 : Blue text label
#
# Output:
#
function roiOnClick (b, imf, im, t1, t2, t3)
  #Initial parameters
  set (b, 'value', 1);
  f = gcf;
  clf (f);
  imshow (im);
  X = [];
  Y = [];
  
  #Add points until you choose to stop
  while get (b, "value")
    figure (imf, 'units', 'normalized', 'outerposition', [0, 0, 1, 1]);
    [P, X, Y] = AddPoints (X, Y);
    draw (im, P);
  endwhile
  
  #Calcul and display
  [r, g, b] = calcul (X, Y, im)
  set (t1, 'string', num2str (r));
  set (t2, 'string', num2str (g));
  set (t3, 'string', num2str (b));
endfunction

