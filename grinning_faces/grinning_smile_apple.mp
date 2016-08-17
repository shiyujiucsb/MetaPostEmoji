prologues := 3;
outputtemplate := "%j.svg";
outputformat := "svg";
beginfig(0);

% face
radius = 100;
path face, eye, left_eye, right_eye;
face = fullcircle scaled (2*radius);
fill face withcolor (1, 210/255, 40/255);
eye = face scaled 0.1;
left_eye = eye shifted(-.25*radius, .25*radius);
fill left_eye withcolor (170/255, 100/255, 20/255);
right_eye = eye shifted(.25*radius, .25*radius);
fill right_eye withcolor (170/255, 100/255, 20/255);
draw face;
draw left_eye;
draw right_eye;

path mouth;
pair left_mouth_point, upper_mouth_point, right_mouth_point, lower_mouth_point;
left_mouth_point = (-.75*radius, -.08*radius);
upper_mouth_point = (0,-0.12*radius);
right_mouth_point = (.75*radius, -.08*radius);
lower_mouth_point = (0,-.75*radius);
mouth = left_mouth_point{curl 0} .. upper_mouth_point .. {curl 0}right_mouth_point{dir -105} .. lower_mouth_point .. {dir 105}cycle;
fill mouth withcolor (200/255, 140/255, 25/255);
draw mouth;

path teeth;
pair t_top_left, t_top, t_top_right;
pair t_bot_left, t_bot, t_bot_right;
t_top_left = (-.65*radius, -.15*radius);
t_top = (0, -.2*radius);
t_top_right = (.65*radius, -.15*radius);
t_bot_left = (-.6*radius, -.3*radius);
t_bot = (0, -.4*radius);
t_bot_right = (.6*radius, -.3*radius);
teeth = t_top_left{curl 1} .. t_top .. {curl 1}t_top_right .. t_bot_right{curl 1} .. t_bot .. {curl 1}t_bot_left .. cycle;
fill teeth withcolor white;
draw teeth;

endfig;
bye
