difx = obj_player.x-x_prev
dify = obj_player.y-y_prev

x = obj_player.x-width/2
y = obj_player.y-height/2

surface_set_target(dirt)
if obj_drill.image_speed != 0{
	if distance_to_object(obj_player) < 30{
	
		//gpu_set_blendmode(bm_subtract)
		draw_set_color(c_black)
		draw_sprite_ext(spr_drill,0,obj_drill.x-x,obj_drill.y-y,obj_player.drill_length,obj_player.drill_width,obj_drill.image_angle,c_black,1)
		//draw_circle(obj_drill.x-x,obj_drill.y-y,80,false)
		gpu_set_blendmode(bm_normal)
	}
}

surface_copy(temp_surface,0,0,dirt)

surface_reset_target()
surface_set_target(dirt)
gpu_set_blendmode(bm_subtract)
draw_set_color(c_black)
draw_rectangle(0,0,width,width,false)
draw_set_color(c_white)
gpu_set_blendmode(bm_normal)
draw_sprite_tiled(spr_dirt,0,x,y)

surface_copy(dirt,-difx,-dify,temp_surface)

surface_reset_target()
surface_set_target(dirt)

draw_rectangle_color(0,height-1,1,height,c_black,c_black,c_black,c_black,false)

sprite_delete(spr)
spr = sprite_create_from_surface(dirt,0,0,width,height,1,0,0,0)

var temp_color = make_color_rgb(163,98,10)
draw_rectangle_color(0,height-1,1,height,temp_color,temp_color,temp_color,temp_color,false)

//sprite_collision_mask(spr,false,0,0,0,0,0,0,0)
sprite_index = spr
draw_set_color(c_white)

surface_reset_target()


x_prev = obj_player.x
y_prev = obj_player.y

