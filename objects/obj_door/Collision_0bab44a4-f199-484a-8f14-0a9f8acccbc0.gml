/// @description Player may interact with door

//Door is revealed while on it
image_alpha = 1;

//Go to next room
if(keyboard_check_pressed(vk_space))
	room_goto(target_r)