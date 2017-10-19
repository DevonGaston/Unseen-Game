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
	if(image_alpha >= 0){
		with(instance_nearest(x, y, obj_wall)){
			image_alpha = obj_crawler.image_alpha;
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
	if(image_alpha >= 0){
		with(instance_nearest(x, y, obj_floor)){
			image_alpha = obj_crawler.image_alpha;
		}
	}
	
}
y += vsp;

//Collision End
