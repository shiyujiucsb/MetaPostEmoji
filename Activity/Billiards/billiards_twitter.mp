prologues := 1;
outputtemplate := "%j.svg";
outputformat := "svg";
beginfig(0);

% ball
ball_radius = 100;
path ball;
ball = fullcircle scaled (2*ball_radius);
fill ball withcolor black;
draw ball;

% white disk
white_radius = .5*ball_radius;
path white_disk;
white_disk = fullcircle scaled (2*white_radius);
fill white_disk withcolor white;
draw white_disk;

% Symbol '8'
pair center;
picture label;
center = (0,0);
defaultfont:="ptmr8a";
label = thelabel("8", center) scaled 10;
draw label withcolor black;

endfig;
bye
