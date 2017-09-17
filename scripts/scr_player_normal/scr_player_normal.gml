scr_getinputs();
//Reaction to input
move = left + right;
hsp = move * movespeed
if (vsp < 15){
	vsp += grav;
}

scr_shoot();
scr_player_collide_wall();
scr_player_collide_floor();