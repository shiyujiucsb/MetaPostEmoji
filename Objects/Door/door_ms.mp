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

% frame
frame_ratio = 0.7;
frame_height = height*frame_ratio/2;
frame_width = width*frame_ratio;
perturb = 2; % to show the black border
path upper_a, upper_b, upper;
upper_a = door yscaled .5;
upper_b = upper_a scaled frame_ratio;
upper = upper_b shifted ((width-frame_width)/2, height/2-height*frame_ratio/4 - (height/2-frame_height)/2); 
fill upper withcolor (0, 100/255, 160/255);
draw upper withpen pencircle scaled 2bp;
shade_ratio = .8;
path inner_upper_a, inner_upper;
inner_upper_a = upper_b scaled shade_ratio;
inner_top_left_dx = (width-frame_width)/2 + frame_width*(1-shade_ratio) - perturb;
inner_top_left_dy = height/2-height/2*frame_ratio*shade_ratio/2 - (height/2-frame_height)/2 - frame_height*(1-shade_ratio) + perturb;
inner_upper = inner_upper_a shifted (inner_top_left_dx, inner_top_left_dy);
fill inner_upper withcolor (60/255, 190/255, 230/255);
draw inner_upper withpen pencircle scaled 2bp withcolor (60/255, 190/255, 230/255);

% door-handle
radius = 12;
distance_edge = 30;
verticle_offset = 20;
path handle_a, handle;
handle_a = fullcircle scaled (2*radius);
handle = handle_a shifted (distance_edge, -verticle_offset);
fill handle withcolor (1, 220/255, 110/255);
draw handle withpen pencircle scaled 1.5bp;

endfig;
bye
