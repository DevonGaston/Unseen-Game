var right_move = sign(hsp);

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

//Collision End
var was_free = !position_meeting(x+(17*right_move), yprevious, obj_wall);
var not_free = position_meeting(x+(17*right_move), y, obj_wall);
var down_move = yprevious < y;
if(was_free && not_free && down_move){
	vsp = 0;
	hsp = 0;
	state = states.ledge_grab;
}