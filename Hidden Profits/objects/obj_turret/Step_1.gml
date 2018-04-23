x = obj_player.x
y = obj_player.y

//image_angle = angle

if !global.menu{
	image_angle += .2*angle_difference(point_direction(x, y, mouse_x, mouse_y), image_angle)
}

/*if angle >= 337.5 || angle < 22.5{
	image_index = 0
	light_angle = 0
}else if angle >= 22.5 && angle < 67.5{
	image_index = 7
	light_angle = 45
}else if angle >= 67.5 && angle < 112.5{
	image_index = 6
	light_angle = 90
}else if angle >= 112.5 && angle < 157.5{
	image_index = 5
	light_angle = 135
}else if angle >= 157.5 && angle < 202.5{
	image_index = 4
	light_angle = 180
}else if angle >= 202.5 && angle < 247.5{
	image_index = 3
	light_angle = 225
}else if angle >= 247.5 && angle < 292.5{
	image_index = 2
	light_angle = 270
}else if angle >= 292.5 && angle < 337.5{
	image_index = 1
	light_angle = 315
}*/

