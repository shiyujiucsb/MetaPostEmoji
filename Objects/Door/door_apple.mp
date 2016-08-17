prologues := 1;
outputtemplate := "%j.svg";
outputformat := "svg";
beginfig(0);

% door
height = 320;
width = 180;
path door;
door = (0, height/2) -- (width, height/2) -- (width, -height/2) -- (0, -height/2) -- cycle;
fill door withcolor (200/255, 160/255, 90/255);
draw door withpen pencircle scaled 4bp;

% frames
frame_ratio = 0.75;
frame_height = height*frame_ratio/2;
frame_width = width*frame_ratio;
path upper_a, upper_b, upper, lower;
upper_a = door yscaled .5;
upper_b = upper_a scaled frame_ratio;
upper = upper_b shifted ((width-frame_width)/2, height/2-height*frame_ratio/4 - (height/2-frame_height)/2); 
lower = upper shifted (0, -frame_height-(height/2-frame_height));
draw upper withcolor (120/255, 80/255, 40/255) withpen pencircle scaled 2bp;
draw lower withcolor (120/255, 80/255, 40/255) withpen pencircle scaled 2bp;

% door-handle
radius = 10;
distance_edge = 15;
path handle_a, handle;
handle_a = fullcircle scaled (2*radius);
handle = handle_a shifted (distance_edge, 0);
fill handle withcolor (1, 220/255, 110/255);
draw handle withpen pencircle scaled 1.5bp;


endfig;
bye
