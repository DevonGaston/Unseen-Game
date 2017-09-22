//Track speed of hsp direction
if(hsp != 0){
	hsp_dir = sign(hsp);
}

//Horizontal collison
if (place_meeting(x+hsp, y, obj_wall)){
	while(!place_meeting(x+sign(hsp), y, obj_wall)){
		x += sign(hsp);
	}
	hsp = 0;
	obj_wall.image_alpha = 1;
}
x += hsp;

//Vertical collison
if (place_meeting(x, y+vsp, obj_floor)){
	while(!place_meeting(x, y+sign(vsp), obj_floor)){
		y += sign(vsp);
	}
	vsp = 0;
	with(obj_floor){
		image_alpha = other.image_alpha;
		image_alpha = 1;
	}
	
}
y += vsp;

//Collision End

//Ledge grab; search for availible wall to grab onto
var was_free = !position_meeting(x+(32*hsp_dir), yprevious-4, obj_wall);
var not_free = position_meeting(x+(32*hsp_dir), y-4, obj_wall);
var down_move = yprevious < y;
if(was_free && not_free && down_move){
	vsp = 0;
	hsp = 0;
	while(!place_meeting(x+hsp_dir, y, obj_wall)){
		x += hsp_dir;
	}
	
	while(position_meeting(x+(32*hsp_dir), y-5, obj_wall)){
		y -= 1;
	}
	state = states.ledge_grab;
}