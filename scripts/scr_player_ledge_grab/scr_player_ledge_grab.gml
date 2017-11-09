var climb = keyboard_check_pressed(vk_space);
var fall = keyboard_check(ord("S"));

with(instance_nearest(x,y,obj_wall)){
	image_alpha = 1;
}

if(climb){
	movespeed = 1;
	with(instance_nearest(x,y,obj_wall)){
		if(object_index == obj_wall_ledge){
			obj_player.face_right = true
			obj_player.x += 32;
			obj_player.y-=26;
		}
		else{
			obj_player.face_right = false;
			obj_player.x -= 32;
			obj_player.y-=26;
		}
	}
	state = states.normal;
}

if(fall){
	movespeed = 1;
	y += 10;
	state = states.normal;
}