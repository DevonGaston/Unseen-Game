/// @description Door lights after hit and fades over time
if(image_alpha > 0.5){
	image_alpha-= .05
}

if(image_alpha == 0.5){
	fade_count--;
}

if(fade_count == 0 and image_alpha > min_fade){
	image_alpha -= .01;
}

