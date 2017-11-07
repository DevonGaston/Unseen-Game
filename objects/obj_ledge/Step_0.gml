/// @description Ledge is always seen with nearby wall or floor
event_inherited();
var near_wall = (instance_nearest(x, y, obj_wall)).image_alpha;
var near_floor = (instance_nearest(x, y, obj_floor)).image_alpha;

if(near_wall >= 0){ 
	image_alpha = near_wall;
}

if(near_floor >= 0){
	image_alpha = near_floor;
}
