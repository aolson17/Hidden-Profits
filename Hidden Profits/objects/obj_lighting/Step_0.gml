surface_set_target(light)
draw_set_color(c_white)
//draw_set_color(c_gray)
//draw_rectangle(0,0,view_wview,view_hview,false)
draw_rectangle(0,0,view_wview*3,view_hview*3,false)
surface_reset_target()
x_offset = -500+obj_player.x
y_offset = -500+obj_player.y