/// @description Sonar looks for object to bounce off of and does so, then fades away
if(fade_out == true){
	image_alpha-=.04;
	if(image_alpha == 0){
		instance_destroy();
	}
}