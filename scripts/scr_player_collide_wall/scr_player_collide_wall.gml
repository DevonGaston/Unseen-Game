//Horizontal collison
if (place_meeting(x+hsp, y, obj_wall)){
	while(!place_meeting(x+sign(hsp), y, obj_wall)){
		x += sign(hsp);
	}
	hsp = 0;
}
x += hsp;

//Vertical collison
if (place_meeting(x, y+vsp, obj_floor)){
	while(!place_meeting(x, y+sign(vsp), obj_floor)){
		y += sign(vsp);
	}
	vsp = 0;
}
y += vsp;
