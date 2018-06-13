//Player input
var right = keyboard_check(ord("D"));
var left = -keyboard_check(ord("A"));
var jump = keyboard_check_pressed(vk_space);

//Reaction to input
var move = left + right;
hsp = move * movespeed

if(move > 0){
	face_right = true;
}
else if(move < 0){
	face_right = false;
}

//Jumping
if(place_meeting(x, y+1, obj_floor)){
	vsp = jump * -jumpspeed;
}

//Falling
if (state != 1 && !place_meeting(x, y+1, solid)){
	vsp += grav;
}

scr_shoot();
scr_player_collision_wall_floor();
