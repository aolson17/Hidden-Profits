gpu_set_blendmode(bm_subtract)
surface_set_target(obj_lighting.light)
draw_ellipse_color(x-size/2-obj_lighting.x_offset,y-size/2-obj_lighting.y_offset,x+size/2-obj_lighting.x_offset,y+size/2-obj_lighting.y_offset,c_white,c_black,false)

draw_sprite_ext(spr_headlights_small,0,x+lengthdir_x(25,-image_angle+50)-obj_lighting.x_offset,y+lengthdir_y(-25,-image_angle+50)-obj_lighting.y_offset,1.6,1.2,5+image_angle,c_white,.3)
draw_sprite_ext(spr_headlights_small,0,x+lengthdir_x(25,-image_angle-50)-obj_lighting.x_offset,y+lengthdir_y(-25,-image_angle-50)-obj_lighting.y_offset,1.6,1.2,-5+image_angle,c_white,.3)

if image_index = 1{
	draw_sprite_ext(spr_thruster_light,0,x-obj_lighting.x_offset,y-obj_lighting.y_offset,1,1,image_angle,c_yellow,1)
}else if image_index = 2{
	//draw_sprite_ext(spr_thruster_light,1,x-35,y,1,1,-image_angle-180,c_red,.7)
	draw_sprite_ext(spr_thruster_light,0,x-obj_lighting.x_offset,y-obj_lighting.y_offset,1,1,image_angle,c_yellow,1)
}

if radar_1 != 0{
	for (i = 0; i < radar_1_width; i++){
		draw_set_color(c_white)
		draw_circle(x-obj_lighting.x_offset,y-obj_lighting.y_offset,radar_1+i*.5,true)
	}
}
if radar_2 != 0{
	for (i = 0; i < radar_2_width; i++){
		draw_set_color(c_white)
		draw_circle(x-obj_lighting.x_offset,y-obj_lighting.y_offset,radar_2+i*.5,true)
	}
}
if radar_3 != 0{
	for (i = 0; i < radar_3_width; i++){
		draw_set_color(c_white)
		draw_circle(x-obj_lighting.x_offset,y-obj_lighting.y_offset,radar_3+i*.5,true)
	}
}

surface_reset_target()
gpu_set_blendmode(bm_normal)
