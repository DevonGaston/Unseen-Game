/// @description When object revealed, fades away over time
if(image_alpha > 0.5){
	image_alpha-= .05
}

if(image_alpha == 0.5){
	fade_count--;
}

if(fade_count == 0){
	image_alpha -= .01;
}
