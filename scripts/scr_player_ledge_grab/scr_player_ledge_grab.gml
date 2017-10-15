var climb = keyboard_check_pressed(vk_space);
var fall = keyboard_check_pressed(vk_down);

with(instance_nearest(x,y,obj_ledge)){
	image_alpha = 1;
}

with(instance_nearest(x,y,obj_wall)){
	image_alpha = 1;
}

if(climb){
	movespeed = 1;
	if(face_right = false){
		x -= 32;
		y-=32;
	}
	else{
		x += 32;
		y-=32;
	}
	state = states.normal;
}

if(fall){
	movespeed = 1;
	state = states.normal;
}