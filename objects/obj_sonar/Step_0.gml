//Collision
if(place_meeting(x+speed, y, obj_wall)){
	while(!place_meeting(x+sign(speed), y, obj_wall)){
		x += sign(speed);
	}
	instance_destroy();
}
