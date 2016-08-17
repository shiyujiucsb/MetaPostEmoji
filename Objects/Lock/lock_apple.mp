prologues := 1;
outputtemplate := "%j.svg";
outputformat := "svg";
beginfig(0);

% body
height = 60;
width = 100;
radius = 4;
path body;
pair top_left_a, top_left_b, top_right_a, top_right_b, bot_left_a, bot_left_b, bot_right_a, bot_right_b;
top_left_a = (-width/2-radius, -radius);
top_left_b = (-width/2, 0);
top_right_a = (width/2, 0);
top_right_b = (width/2+radius, -radius);
bot_right_a = (width/2+radius, -height+radius);
bot_right_b = (width/2, -height);
bot_left_a = (-width/2, -height);
bot_left_b = (-width/2-radius, -height+radius);
body = top_left_a{up} .. top_left_b -- top_right_a{right} .. top_right_b -- bot_right_a{down} .. bot_right_b -- bot_left_a{left} .. bot_left_b -- cycle;
fill body withcolor (240/155, 210/255, 150/255);
draw body;

% bolt
out_radius_ratio = 0.9;
inner_radius_ratio = 0.5;
straight_height = 10;
out_radius = width/2*out_radius_ratio;
inner_radius = width/2*inner_radius_ratio;
path bolt;
pair a, b, c, d, e, f, g, h, i, j;
a = (-out_radius, 0);
b = (-inner_radius, 0);
c = (-inner_radius, straight_height);
d = (0, straight_height+inner_radius);
e = (inner_radius, straight_height);
f = (inner_radius, 0);
g = (out_radius, 0);
h = (out_radius, straight_height);
i = (0, straight_height+out_radius);
j = (-out_radius, straight_height);
bolt = a -- b -- c{up} .. d{right} .. e -- f -- g -- h{up} .. i{left} .. j -- cycle;
fill bolt withcolor .9white;
draw bolt;

endfig;
bye
