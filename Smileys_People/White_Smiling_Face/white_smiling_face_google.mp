prologues := 1;
outputtemplate := "%j.svg";
outputformat := "svg";
beginfig(0);

% face
radius = 100;
path face;
face = fullcircle scaled (2*radius);
fill face withcolor (1, 210/255, 40/255);
draw face;

% eyes
eye_radius = 15;
eyes_distance = 70;
eyes_height_offset = .2*radius;
path eye, left_eye, right_eye;
eye = fullcircle scaled (2*eye_radius);
left_eye = eye shifted (-eyes_distance/2,eyes_height_offset);
fill left_eye withcolor black;
right_eye = eye shifted (eyes_distance/2,eyes_height_offset);
fill right_eye withcolor black;
draw left_eye;
draw right_eye;

% mouth
mouth_width = eye_radius*3 + eyes_distance;
mouth_height = mouth_width/3;
path mouth_shape, mouth;
mouth_shape = (-mouth_width/2,0) .. (0,-mouth_height) .. (mouth_width/2,0);
mouth = mouth_shape shifted (0,-.2*radius);
draw mouth withpen pencircle scaled 16bp;

endfig;
bye
