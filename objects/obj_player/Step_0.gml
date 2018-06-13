/// @description Player controls and physics
switch(state){
	case 0: scr_player_normal(); break;
	case 1: scr_player_ledge_grab(); break;
}

scr_player_normal();

if keyboard_check_pressed(ord("R")){
	room_restart();
}

if(hp == 0){
	room_restart();
}

