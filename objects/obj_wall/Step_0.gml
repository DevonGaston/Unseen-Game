/// @description Insert description here
if(image_alpha > 0.5){
	image_alpha-= .05
}

if(image_alpha == 0.5){
	fade_count--;
}

if(fade_count == 0){
	image_alpha -= .01;
}

if(image_alpha == 0){
	fade_count = room_speed * 5;
}