/// @description Player controls and physics

/*switch(state){
	case states.normal: scr_player_normal(); break;
	case states.shooting: scr_player_shooting(); break;
}*/

scr_player_normal();

if keyboard_check_pressed(ord("R")){
	game_restart();
}