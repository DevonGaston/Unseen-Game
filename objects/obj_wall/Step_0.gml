/// @description When object revealed, fades away over time
event_inherited();
var nearledge = instance_nearest(x,y,obj_ledge).image_alpha;
if(nearledge == 1){
	image_alpha = 1;	
}
