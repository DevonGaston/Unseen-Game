image_alpha = 1;
dir = sign(obj_player.x-x);
hsp = dir*2;
vsp = min(7, vsp+0.05);
if(distance_to_object(obj_player) > 128){
	state = c_state.idle;
}