


terrain = surface_create(200,200)
draw_set_color(c_white)
draw_set_alpha(1)
gpu_set_blendmode(bm_normal)
surface_set_target(terrain)
draw_sprite_tiled(spr_dirt,0,0,0)
surface_reset_target()
