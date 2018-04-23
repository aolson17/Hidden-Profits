scroll_speed = 0
//width = 300
//height = 300
width = 570
height = 570
dirt = surface_create(width,height)
temp_surface = surface_create(width,height)

surface_set_target(dirt)
//draw_sprite(spr_dirt_test,0,0,0)
draw_sprite_tiled(spr_dirt,0,x,y)
surface_reset_target()

//spr = sprite_create_from_surface(dirt,0,0,width,room_height,0,1,0,0)
spr = sprite_create_from_surface(dirt,0,0,width,height,0,1,0,0)
sprite_index = spr

x = obj_player.x-width/2
y = obj_player.y-height/2
x_prev = obj_player.x
y_prev = obj_player.y
difx = obj_player.x-x_prev
dify = obj_player.y-y_prev

error_x = 0
error_y = 0
whole_error_x = 0
whole_error_y = 0

alarm[0] = 10

surface_set_target(dirt)
draw_set_color(c_black)
draw_circle(width/2,height/2,150,false)
gpu_set_blendmode(bm_normal)
surface_reset_target()