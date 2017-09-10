///Player controls and physics

//Player input
right = keyboard_check(ord("D"));
left = -keyboard_check(ord("A"));
jump = keyboard_check_pressed(vk_space);

//Reaction to input
move = left + right;
hsp = move * movespeed
if (vsp < 15){
	vsp += grav;
}

if(place_meeting(x, y+1, obj_wall)){
	vsp = jump * -jumpspeed;
}

//Horizontal collison
if (place_meeting(x+hsp, y, obj_wall)){
	while(!place_meeting(x+sign(hsp), y, obj_wall)){
		x += sign(hsp);
	}
	hsp = 0;
}
x += hsp;

//Vertical collison
if (place_meeting(x, y+vsp, obj_wall)){
	while(!place_meeting(x, y+sign(vsp), obj_wall)){
		y += sign(vsp);
	}
	vsp = 0;
}
y += vsp;

//Player's sonar ability
if (mouse_check_button_pressed(mb_left) && cooldown < 1){
	instance_create_layer(x, y, layer, obj_sonar);
	cooldown = 60;
}
cooldown--;

if keyboard_check_pressed(ord("R")){
	game_restart();
}