/// @description Collision rules for echo object
if(place_meeting(x+speed, y, obj_wall)){
	while(!place_meeting(x+sign(speed), y, obj_wall)){
		x += sign(speed);
	}
	move_bounce_solid(true);
}