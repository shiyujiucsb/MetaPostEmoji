prologues := 1;
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
pair left_mouth_point, right_mouth_point;
left_mouth_point = (-.5*radius, -.25*radius);
right_mouth_point = (.5*radius, -.25*radius);
mouth = left_mouth_point -- right_mouth_point;
draw mouth withpen pencircle scaled 4bp;

endfig;
bye
