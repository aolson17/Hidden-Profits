gpu_set_blendmode(bm_subtract)
surface_set_target(obj_lighting.light)

//draw_sprite(spr_headlights,0,x+36,y+3)


draw_sprite_ext(spr_headlights_targeted,0,x+lengthdir_x(8,light_angle+70+image_angle)-obj_lighting.x_offset,y+lengthdir_y(7,light_angle+70+image_angle)-obj_lighting.y_offset,obj_player.light_distance,1,light_angle+3+image_angle,c_white,1)
draw_sprite_ext(spr_headlights_targeted,0,x+lengthdir_x(8,light_angle-70+image_angle)-obj_lighting.x_offset,y+lengthdir_y(7,light_angle-70+image_angle)-obj_lighting.y_offset,obj_player.light_distance,1,light_angle-3+image_angle,c_white,1)





surface_reset_target()
gpu_set_blendmode(bm_normal)
x = obj_player.x
y = obj_player.y