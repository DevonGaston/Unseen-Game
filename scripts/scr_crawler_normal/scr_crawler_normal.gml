hsp = 0;
vsp = min(7, vsp+0.05);
if (vsp < 15){
	vsp += grav;
}
if(abs(obj_player.x-x) < 95){
	chase = true;
	state = c_state.chase;
}

if(image_alpha > 0.5){
	image_alpha-= .05
}

if(image_alpha == 0.5){
	fade_count--;
}

if(fade_count == 0){
	image_alpha -= .01;
}
