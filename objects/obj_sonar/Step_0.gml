/// @description Causes sonar to slowly fade away
if(fade_out == true){
	image_alpha-=.04;
	if(image_alpha == 0){
		instance_destroy();
	}
}
