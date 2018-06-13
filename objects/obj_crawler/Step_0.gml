/// @description Manages states for crawler
switch(state){
	case 0: scr_crawler_normal(); break;		
	case 1: scr_crawler_chase(); break;
}


var w = instance_nearest(x,y,obj_wall);
var f = instance_nearest(x,y,obj_floor);
//Horizontal collison
if (place_meeting(x+hsp, y, obj_solid)){
	while(!place_meeting(x+sign(hsp), y, obj_solid)){
		x += sign(hsp);
	}
	hsp = 0;
	if(image_alpha > 0){
			w.image_alpha = image_alpha;
	}
}
x += hsp;

//Vertical collison
if (place_meeting(x, y+vsp, obj_solid)){
	while(!place_meeting(x, y+sign(vsp), obj_solid)){
		y += sign(vsp);
	}
	vsp = 0;
	if(image_alpha > 0){
			f.image_alpha = image_alpha;
	}
}
y += vsp;

//Collision End
