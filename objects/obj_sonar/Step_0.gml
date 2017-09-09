//Collision
if(place_meeting(x+speed, y, obj_wall)){
	while(!place_meeting(x+sign(speed), y, obj_wall)){
		x += sign(speed);
	}
	move_bounce_solid(false);
	draw_primitive_begin(pr_linelist);
	draw_vertex_color(x, y+100, c_blue, .1);
	draw_vertex_color(x, y-100, c_blue, .1);
	draw_primitive_end();
}
