
if global.dead{
	if death_offset<8{
		adj_death_offset = 1.9*death_offset - 0.2166383*power(death_offset,2) + 0.008375923*power(death_offset,3)
	}
	draw_surface(obj_player.death1,obj_player.x-100+lengthdir_x(adj_death_offset,death_angle),obj_player.y-100+lengthdir_y(adj_death_offset,death_angle))
	draw_surface(obj_player.death2,obj_player.x-100+lengthdir_x(adj_death_offset,death_angle-180),obj_player.y-100+lengthdir_y(adj_death_offset,death_angle-180))
}else{
	draw_self()
}



