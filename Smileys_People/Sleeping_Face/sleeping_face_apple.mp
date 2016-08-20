prologues := 1;
outputtemplate := "%j.svg";
outputformat := "svg";
beginfig(0);

% face
radius = 100;
eye_width = 60;
path face, eye, left_eye, right_eye;
face = fullcircle scaled (2*radius);
fill face withcolor (1, 210/255, 40/255);
eye = (eye_width/2,eye_width/4){curl 0} .. (0, eye_width/6) .. {curl 0}(-eye_width/2,eye_width/4) .. (0,0) .. cycle;
left_eye = eye shifted(-.4*radius, .1*radius);
fill left_eye withcolor (170/255, 100/255, 20/255);
right_eye = eye shifted(.4*radius, .1*radius);
fill right_eye withcolor (170/255, 100/255, 20/255);
draw face;
draw left_eye;
draw right_eye;

path mouth_shape, mouth;
mouth_radius = 20;
mouth_shape = fullcircle scaled (2*mouth_radius);
mouth = mouth_shape shifted (0, -40);
fill mouth withcolor (170/255, 100/255, 20/255);
draw mouth;

% the ZZZ
pair Za, Zb, Zc;
picture La, Lb, Lc;
Za = (0, .8*radius);
Zb = (.25*radius, .95*radius);
Zc = (.65*radius, .7*radius);
defaultfont := "phvb";
defaultscale := 3;
La = thelabel("Z", Za);
draw La withcolor (0, 0, 1);
defaultscale := 5;
Lb = thelabel("Z", Zb);
draw Lb withcolor (0, 0, 1);
defaultscale := 9;
Lc = thelabel("Z", Zc);
draw Lc withcolor (0, 0, 1);

endfig;
bye
