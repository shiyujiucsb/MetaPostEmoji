prologues := 3;
outputtemplate := "%j.svg";
outputformat := "svg";
beginfig(0);

% face
radius = 100;
path face, eye, left_eye, right_eye;
transform T;
(0, 0) transformed T = (0, 0);
(0, 1) transformed T = (0, .75);
(1, 0) transformed T = (1, 0);
face = fullcircle scaled (2*radius) transformed T;
fill face withcolor (1, 210/255, 40/255);
eye = face scaled 0.1;
left_eye = eye shifted(-.3*radius, .2*radius);
fill left_eye withcolor black;
right_eye = eye shifted(.3*radius, .2*radius);
fill right_eye withcolor black;
draw face;
draw left_eye;
draw right_eye;

path mouth;
pair top_a, top_b, top_c, top_d, top_e, top_f, top_g;
pair bot_b, bot_c, bot_d, bot_e, bot_f;
top_a = (-.75*radius, -.08*radius);
top_b = (-.50*radius, -.10*radius);
top_c = (-.25*radius, -.11*radius);
top_d = (0, -0.12*radius);
top_e = (.25*radius, -.11*radius);
top_f = (.50*radius, -.10*radius);
top_g = (.75*radius, -.08*radius);
bot_b = (-.50*radius, -.44*radius);
bot_c = (-.25*radius, -.56*radius);
bot_d = (0, -.6*radius);
bot_e = (.25*radius, -.56*radius);
bot_f = (.50*radius, -.44*radius);
mouth = top_a{curl 0} .. top_b .. top_c .. top_d .. top_e .. top_f .. {curl 0}top_g{dir -105} .. bot_f .. bot_e .. bot_d .. bot_c .. bot_b .. {dir 105}cycle;
fill mouth withcolor white;
draw mouth withpen pencircle scaled 4bp;

% teeth
draw top_b -- bot_b withpen pencircle scaled 3bp;
draw top_c -- bot_c withpen pencircle scaled 3bp;
draw top_d -- bot_d withpen pencircle scaled 3bp;
draw top_e -- bot_e withpen pencircle scaled 3bp;
draw top_f -- bot_f withpen pencircle scaled 3bp;

endfig;
bye
