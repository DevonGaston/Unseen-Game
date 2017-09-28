/// @description Insert description here
switch(state){
	case c_state.idle: scr_crawler_normal(); break;		
	case c_state.chase: scr_crawler_chase(); break;
}

//Horizontal collison
if (place_meeting(x+hsp, y, obj_wall)){
	while(!place_meeting(x+sign(hsp), y, obj_wall)){
		x += sign(hsp);
	}
	hsp = 0;
	if(state = c_state.chase){
		with(instance_nearest(x, y, obj_floor)){
			image_alpha = 1;
		}
	}
}
x += hsp;

//Vertical collison
if (place_meeting(x, y+vsp, obj_floor)){
	while(!place_meeting(x, y+sign(vsp), obj_floor)){
		y += sign(vsp);
	}
	vsp = 0;
	if(state = c_state.chase){
		with(instance_nearest(x, y, obj_floor)){
			image_alpha = 1;
		}
	}
	
}
y += vsp;

//Collision End
