/// @description Bounce off floor and let Step event know to make echo fade away
move_bounce_solid(true);
speed = 2;
fade_out = true;
instance_create_depth(x,y,layer,obj_soundwave)