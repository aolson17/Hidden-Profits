//mydirt = instance_place(x,y,obj_dirt)
mydirt= obj_dirt
surface_set_target(mydirt.dirt)
gpu_set_blendmode(bm_subtract)
draw_set_color(c_black)

draw_circle(x-mydirt.x,y-mydirt.y,35,false)

gpu_set_blendmode(bm_normal)
surface_reset_target()