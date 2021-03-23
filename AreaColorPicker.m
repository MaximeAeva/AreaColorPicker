clear all;
close all;
#Loading requiered packages
pkg('load', 'geometry');
pkg('load', 'image');
pkg('load', 'matgeom');

#Looking for a file   
[file, path] = uigetfile('*.jpg');
totalPath = strcat(path, file);
im = imread(totalPath);

#Control window
imb=figure;

#Show image
imf = figure('units','normalized','outerposition',[0 0 1 1]);
imshow(im);

#Design control GUI
gp = uibuttongroup (imb, "Position", [ 0 0 1 1]);
b2 = uicontrol (gp, 'style', 'push', ...
                "string", "Calcul","Position",[210 350 100 30], ...
                 "value", 1, "Callback", @(btn,event) quitIt(btn));
t1 = uicontrol (gp, "style", "text", "string", "0",...
                 "Position", [ 10 50 100 30]);
t2 = uicontrol (gp, "style", "text", "string", "0",...
                 "Position", [ 210 50 100 30]);
t3 = uicontrol (gp, "style", "text", "string", "0",...
                 "Position", [ 410 50 100 30]); 
b1 = uicontrol (gp, 'style', 'push', "string",...
               "Start","Position",[210 250 100 30], ...
                "Callback", @(btn,event) roiOnClick(b2, imf, im, t1, t2, t3));
                
               
