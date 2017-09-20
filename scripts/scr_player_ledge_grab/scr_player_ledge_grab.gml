var climb = keyboard_check_pressed(vk_space);
var fall = keyboard_check_pressed(vk_down);

if(climb){
	vspd = -climb;
	state = states.normal;
}

if(fall){
	state = states.normal;
}