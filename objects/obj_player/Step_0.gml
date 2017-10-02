/// @description Player controls and physics
switch(state){
	case states.normal: scr_player_normal(); break;
	case states.ledge_grab: scr_player_ledge_grab(); break;
}

scr_player_normal();

if keyboard_check_pressed(ord("R")){
	room_restart();
}