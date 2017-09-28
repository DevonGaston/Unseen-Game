image_alpha = 0;
hsp = 0;
vsp = min(7, vsp+0.05);
if (vsp < 15){
	vsp += grav;
}
if(distance_to_object(obj_player) < 95){
	state = c_state.chase;
}
