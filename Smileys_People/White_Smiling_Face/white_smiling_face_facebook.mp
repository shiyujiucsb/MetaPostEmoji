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
eye_width = 46;
eye_height = .618*eye_width/2;
eyes_distance = .618*eye_width;
eyes_height_offset = .2*radius;
path eye, left_eye, right_eye;
eye = (-eye_width/2,0) .. (0,eye_height) .. (eye_width/2,0);
left_eye = eye shifted (-eyes_distance-eye_width/2, eyes_height_offset);
right_eye = eye shifted (eyes_distance+eye_width/2, eyes_height_offset);
draw left_eye withpen pencircle scaled 8bp;
draw right_eye withpen pencircle scaled 8bp;

% mouth
mouth_width = 1.618*eye_width;
mouth_height = 1.618*eye_height;
path mouth_shape, mouth;
mouth_shape = (-mouth_width/2,0) .. (0,-mouth_height) .. (mouth_width/2,0);
mouth = mouth_shape shifted (0,-.3*radius);
draw mouth withpen pencircle scaled 10bp;

endfig;
bye
