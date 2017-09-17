if(place_meeting(x, y+1, obj_floor)){
	vsp = jump * -jumpspeed;
}

//Vertical collison
if (place_meeting(x, y+vsp, obj_floor)){
	while(!place_meeting(x, y+sign(vsp), obj_floor)){
		y += sign(vsp);
	}
	vsp = 0;
}
y += vsp;