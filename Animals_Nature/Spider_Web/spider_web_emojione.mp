prologues := 1;
outputtemplate := "%j.svg";
outputformat := "svg";
beginfig(0);

% one section

initial_angle = 0;
num_sections = 6;
section_angle = 360/num_sections;
inner_radius = 0;
out_radius = 100;
first_knot_pos = 30;
second_knot_pos = 60;
third_knot_pos = 90;
control_point_reduction_ratio = .8;

pickup pencircle scaled 5bp;
drawoptions(withcolor .6*white);

path spline, first_knot, second_knot, third_knot;
spline = (inner_radius,0) -- (out_radius,0);
if inner_radius > 0:
	path inner_knot;
	inner_control_pos = inner_radius*control_point_reduction_ratio;
	inner_knot = (inner_radius,0) .. (inner_control_pos*cosd(section_angle/2), inner_control_pos*sind(section_angle/2)) .. (inner_radius*cosd(section_angle),inner_radius*sind(section_angle));
	draw inner_knot rotated initial_angle;
fi;
first_control_pos = first_knot_pos*control_point_reduction_ratio;
first_knot = (first_knot_pos,0) .. (first_control_pos*cosd(section_angle/2),first_control_pos*sind(section_angle/2)) .. (first_knot_pos*cosd(section_angle), first_knot_pos*sind(section_angle));
second_control_pos = second_knot_pos*control_point_reduction_ratio;
second_knot = (second_knot_pos,0) .. (second_control_pos*cosd(section_angle/2),second_control_pos*sind(section_angle/2)) .. (second_knot_pos*cosd(section_angle), second_knot_pos*sind(section_angle));
third_control_pos = third_knot_pos*control_point_reduction_ratio;
third_knot = (third_knot_pos,0) .. (third_control_pos*cosd(section_angle/2),third_control_pos*sind(section_angle/2)) .. (third_knot_pos*cosd(section_angle), third_knot_pos*sind(section_angle));
draw spline rotated initial_angle;
draw first_knot rotated initial_angle;
draw second_knot rotated initial_angle;
draw third_knot rotated initial_angle;

% plot all sections
for i = 1 upto num_sections-1:
	if inner_radius > 0:
		draw inner_knot rotated (i*360/num_sections+initial_angle);
	fi;
	draw spline rotated (i*360/num_sections+initial_angle);
	draw first_knot rotated (i*360/num_sections+initial_angle);
	draw second_knot rotated (i*360/num_sections+initial_angle);
	draw third_knot rotated (i*360/num_sections+initial_angle);
endfor;

endfig;
bye