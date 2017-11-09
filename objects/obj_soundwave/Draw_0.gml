/// @description Draw soundwave
image_alpha = image_alpha * 0.98
if(image_alpha < 0.05){
	instance_destroy()
}else if(node != 0 and deadend = false){
	draw_set_alpha(image_alpha);
	draw_line_width_color(x,y,node.x,node.y,8,c_white,c_white);
	draw_set_alpha(1);
}
