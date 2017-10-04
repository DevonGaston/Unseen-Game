/// @description Ledge is always seen with nearby wall or floor
//event_inherited();
var near_wall = instance_nearest(x, y, obj_wall);
var near_floor = instance_nearest(x, y, obj_floor);
if(near_wall.image_alpha == 1 or near_floor.image_alpha = 1){
	image_alpha = 1;
}