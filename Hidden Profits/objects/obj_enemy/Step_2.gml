size = 90
size2 = 90
gpu_set_blendmode(bm_subtract)
surface_set_target(obj_lighting.light)
//draw_ellipse_color(x-size/2-obj_lighting.x_offset,y-size/2-obj_lighting.y_offset,x+size/2-obj_lighting.x_offset,y+size/2-obj_lighting.y_offset,c_white,c_black,false)

if ceil(image_index) = 2{
	draw_ellipse_color(x-size2/2-obj_lighting.x_offset,y-size2/2-obj_lighting.y_offset,x+size2/2-obj_lighting.x_offset,y+size2/2-obj_lighting.y_offset,c_red,c_black,false)
}else if ceil(image_index) = 1{
	draw_ellipse_color(x-size2/2-obj_lighting.x_offset,y-size2/2-obj_lighting.y_offset,x+size2/2-obj_lighting.x_offset,y+size2/2-obj_lighting.y_offset,c_yellow,c_black,false)
}

if found{
	draw_sprite_ext(spr_headlights_targeted,0,x-obj_lighting.x_offset,y-obj_lighting.y_offset,1.5,2,angle,c_red,1)
}else{
	draw_sprite_ext(spr_headlights_targeted,0,x-obj_lighting.x_offset,y-obj_lighting.y_offset,1.5,2,angle,c_white,1)
}


draw_set_color(c_red)
draw_line_width(x-obj_lighting.x_offset,y-obj_lighting.y_offset,x+lengthdir_x(laser_distance,angle)-obj_lighting.x_offset,y+lengthdir_y(laser_distance,angle)-obj_lighting.y_offset,laser_width*4)
draw_set_color(make_color_rgb(60,0,0))
draw_line_width(x-obj_lighting.x_offset,y-obj_lighting.y_offset,x+lengthdir_x(laser_distance,angle)-obj_lighting.x_offset,y+lengthdir_y(laser_distance,angle)-obj_lighting.y_offset,laser_width*6)
draw_set_color(make_color_rgb(30,0,0))
draw_line_width(x-obj_lighting.x_offset,y-obj_lighting.y_offset,x+lengthdir_x(laser_distance,angle)-obj_lighting.x_offset,y+lengthdir_y(laser_distance,angle)-obj_lighting.y_offset,laser_width*8)
draw_set_color(make_color_rgb(10,0,0))
draw_line_width(x-obj_lighting.x_offset,y-obj_lighting.y_offset,x+lengthdir_x(laser_distance,angle)-obj_lighting.x_offset,y+lengthdir_y(laser_distance,angle)-obj_lighting.y_offset,laser_width*8)
draw_set_alpha(1)
draw_set_color(c_white)
surface_reset_target()
gpu_set_blendmode(bm_normal)