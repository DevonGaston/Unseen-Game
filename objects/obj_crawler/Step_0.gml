/// @description Insert description here
switch(state){
	case c_state.idle: {
		image_alpha = 0;
		hsp = 0;
		vsp = min(7, vsp+0.05);
		if(distance_to_object(obj_player) < 95){
			state = c_state.chase;
			}
			break;
		}
	case c_state.chase: {
		image_alpha = 1;
		dir = sign(obj_player.x-x);
		hsp = dir*2;
		vsp = min(7, vsp+0.05);
		if(distance_to_object(obj_player) > 128){
			state = c_state.idle;
			}
		break;
	}
}

if (vsp < 15){
	vsp += grav;
}
	
//Horizontal collison
if (place_meeting(x+hsp, y, obj_wall)){
	while(!place_meeting(x+sign(hsp), y, obj_wall)){
		x += sign(hsp);
	}
	hsp = 0;
	with(instance_nearest(x, y, obj_wall)){
		image_alpha = 1;
	}
}
x += hsp;

//Vertical collison
if (place_meeting(x, y+vsp, obj_floor)){
	while(!place_meeting(x, y+sign(vsp), obj_floor)){
		y += sign(vsp);
	}
	vsp = 0;
	with(instance_nearest(x, y, obj_floor)){
		image_alpha = 1;
	}
	
}
y += vsp;

//Collision End

