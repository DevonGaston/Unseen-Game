/// @description Ledge is always seen with nearby wall or floor
event_inherited();
var near_wall = (instance_nearest(x, y, obj_wall)).image_alpha;
var near_floor = (instance_nearest(x, y, obj_floor)).image_alpha;
if((near_wall == 1) or (near_floor == 1)){
	image_alpha = 1;
}