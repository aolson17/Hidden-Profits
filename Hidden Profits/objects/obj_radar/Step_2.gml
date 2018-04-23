gpu_set_blendmode(bm_subtract)
surface_set_target(obj_lighting.light)
draw_sprite_ext(spr_radar,0,x-obj_lighting.x_offset,y-obj_lighting.y_offset,1*size,1*size,size,c_white,1)



surface_reset_target()
gpu_set_blendmode(bm_normal)
if size > 200{instance_destroy()}
size++
