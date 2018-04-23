
close = 5
draw_set_color(c_red)
draw_line_width(x+lengthdir_x(close,angle),y+lengthdir_y(close,angle),x+lengthdir_x(close+laser_distance,angle),y+lengthdir_y(close+laser_distance,angle),laser_width)
draw_set_color(c_white)

//draw_circle(x+lengthdir_x(laser_distance,angle),y+lengthdir_y(laser_distance,angle),10,false)
//draw_circle(x+lengthdir_x(far-40,angle),y+lengthdir_y(far-40,angle),50,false)
