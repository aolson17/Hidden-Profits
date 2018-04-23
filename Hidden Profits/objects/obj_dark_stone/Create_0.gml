scroll_speed = 0
width = 1800
height = 300
darkstone = surface_create(width,height)


surface_set_target(darkstone)
//draw_sprite(spr_dirt_test,0,0,0)
draw_sprite_tiled(spr_dark_stone,0,0,0)
surface_reset_target()

//spr = sprite_create_from_surface(dirt,0,0,width,room_height,0,1,0,0)
spr = sprite_create_from_surface(darkstone,0,0,width,height,0,1,0,0)
sprite_index = spr
