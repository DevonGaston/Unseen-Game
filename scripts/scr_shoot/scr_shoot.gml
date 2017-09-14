//Player's sonar ability
if (mouse_check_button_pressed(mb_left) && cooldown < 1){
	instance_create_layer(x, y, layer, obj_sonar);
	cooldown = 60;
}
cooldown--;