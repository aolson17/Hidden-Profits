if !global.menu{
	image_speed = .2
}else{
	image_speed = 0
}

surface_set_target(mydirt.dirt)
draw_set_color(c_black)
draw_circle(x-mydirt.x,y-mydirt.y,35,false)
gpu_set_blendmode(bm_normal)
surface_reset_target()


if distance_to_object(obj_player) < 200 && !global.menu{
	
	close = 60
	far = 140
	
	found = false
	
	/*if collision_line(x+lengthdir_x(close,angle+20),y+lengthdir_y(close,angle+20),x+lengthdir_x(far,angle+20),y+lengthdir_y(far,angle+20),par_player,true,true){
		found = true
	}else if collision_line(x+lengthdir_x(close,angle-20),y+lengthdir_y(close,angle-20),x+lengthdir_x(far,angle-20),y+lengthdir_y(far,angle-20),par_player,true,true){
		found = true
	}else if collision_line(x+lengthdir_x(close,angle-20),y+lengthdir_y(close,angle-10),x+lengthdir_x(far,angle-10),y+lengthdir_y(far,angle-20),par_player,true,true){
		found = true
	}else if collision_line(x+lengthdir_x(close,angle-20),y+lengthdir_y(close,angle+10),x+lengthdir_x(far,angle+10),y+lengthdir_y(far,angle-20),par_player,true,true){
		found = true
	}else if collision_line(x+lengthdir_x(close,angle),y+lengthdir_y(close,angle),x+lengthdir_x(far,angle),y+lengthdir_y(far,angle),par_player,true,true){
		found = true
	}else if collision_circle(x+lengthdir_x(far-25,angle),y+lengthdir_y(far-25,angle),30,par_player,true,true){
		found = true
	}*/
	
	if collision_circle(x+lengthdir_x(far-85,angle),y+lengthdir_y(far-85,angle),20,par_player,true,true){
		found = true
	}else if collision_circle(x+lengthdir_x(far-65,angle),y+lengthdir_y(far-65,angle),25,par_player,true,true){
		found = true
	}else if collision_circle(x+lengthdir_x(far-25,angle),y+lengthdir_y(far-25,angle),35,par_player,true,true){
		found = true
	}
	
	if found{
		angle += .1*angle_difference(point_direction(x,y,obj_player.x,obj_player.y), angle)
		
		close = 0
		laser_speed = 10
		if !collision_line(x+lengthdir_x(close,angle),y+lengthdir_y(close,angle),x+lengthdir_x(close+laser_distance,angle),y+lengthdir_y(close+laser_distance,angle),obj_dirt,true,true){
			if pause <= 0{
				laser_distance+=laser_speed
			}else{
				pause--
				laser_distance+=1
			}
		}else{
			surface_set_target(mydirt.dirt)
			draw_set_color(c_black)
			draw_line_width(x-mydirt.x,y-mydirt.y,x+lengthdir_x(laser_distance+laser_speed*1.1,angle)-mydirt.x,y+lengthdir_y(laser_distance+laser_speed*1.1,angle)-mydirt.y,laser_width*5)
			surface_reset_target()
			draw_set_color(c_white)
			pause = 10
		}
		if global.dead = false{
			if collision_line(x+lengthdir_x(close,angle),y+lengthdir_y(close,angle),x+lengthdir_x(close+laser_distance,angle),y+lengthdir_y(close+laser_distance,angle),obj_player,true,true){
				obj_drill.visible = false
				obj_tracks.visible = false
				obj_turret.visible = false
				global.dead = true
				obj_player.death_angle = point_direction(100+x-obj_player.x,100+y-obj_player.y,100+x+lengthdir_x(500,angle)-obj_player.x,100+y+lengthdir_y(500,angle)-obj_player.y)-90
				surface_set_target(obj_player.death1)
				draw_sprite_ext(spr_drill,0,100,100,1,1,obj_player.image_angle,c_white,1)
				draw_sprite_ext(spr_tracks,0,100,100,1,1,obj_player.image_angle,c_white,1)
				draw_sprite_ext(spr_body,0,100,100,1,1,obj_player.image_angle,c_white,1)
				draw_sprite_ext(spr_turret,0,100,100,1,1,obj_turret.image_angle,c_white,1)
				gpu_set_blendmode(bm_subtract)
				draw_set_color(c_black)
				//draw_line_width(100+x-obj_player.x,100+y-obj_player.y,100+x+lengthdir_x(500,angle)-obj_player.x,100+y+lengthdir_y(500,angle)-obj_player.y,0)
				/*dis_offset = 2
				draw_line_width(100+x+lengthdir_x(dis_offset,angle+90)-obj_player.x,100+y+lengthdir_y(dis_offset,angle+90)-obj_player.y,100+x+lengthdir_x(500,angle)+lengthdir_x(dis_offset,angle+90)-obj_player.x,100+y+lengthdir_y(dis_offset,angle+90)+lengthdir_y(500,angle)-obj_player.y,4)
				dis_offset = 7
				draw_line_width(100+x+lengthdir_x(dis_offset,angle+90)-obj_player.x,100+y+lengthdir_y(dis_offset,angle+90)-obj_player.y,100+x+lengthdir_x(500,angle)+lengthdir_x(dis_offset,angle+90)-obj_player.x,100+y+lengthdir_y(dis_offset,angle+90)+lengthdir_y(500,angle)-obj_player.y,10)
				dis_offset = 12
				draw_line_width(100+x+lengthdir_x(dis_offset,angle+90)-obj_player.x,100+y+lengthdir_y(dis_offset,angle+90)-obj_player.y,100+x+lengthdir_x(500,angle)+lengthdir_x(dis_offset,angle+90)-obj_player.x,100+y+lengthdir_y(dis_offset,angle+90)+lengthdir_y(500,angle)-obj_player.y,laser_width*5)
				dis_offset = 22
				draw_line_width(100+x+lengthdir_x(dis_offset,angle+90)-obj_player.x,100+y+lengthdir_y(dis_offset,angle+90)-obj_player.y,100+x+lengthdir_x(500,angle)+lengthdir_x(dis_offset,angle+90)-obj_player.x,100+y+lengthdir_y(dis_offset,angle+90)+lengthdir_y(500,angle)-obj_player.y,laser_width*5)
				dis_offset = 32
				draw_line_width(100+x+lengthdir_x(dis_offset,angle+90)-obj_player.x,100+y+lengthdir_y(dis_offset,angle+90)-obj_player.y,100+x+lengthdir_x(500,angle)+lengthdir_x(dis_offset,angle+90)-obj_player.x,100+y+lengthdir_y(dis_offset,angle+90)+lengthdir_y(500,angle)-obj_player.y,laser_width*5)
				dis_offset = 42
				draw_line_width(100+x+lengthdir_x(dis_offset,angle+90)-obj_player.x,100+y+lengthdir_y(dis_offset,angle+90)-obj_player.y,100+x+lengthdir_x(500,angle)+lengthdir_x(dis_offset,angle+90)-obj_player.x,100+y+lengthdir_y(dis_offset,angle+90)+lengthdir_y(500,angle)-obj_player.y,laser_width*5)*/
				dis_offset = 50
				draw_line_width(100+x+lengthdir_x(dis_offset,angle+90)-obj_player.x,100+y+lengthdir_y(dis_offset,angle+90)-obj_player.y,100+x+lengthdir_x(500,angle)+lengthdir_x(dis_offset,angle+90)-obj_player.x,100+y+lengthdir_y(dis_offset,angle+90)+lengthdir_y(500,angle)-obj_player.y,100)
				draw_set_color(c_white)
				gpu_set_blendmode(bm_normal)
				surface_reset_target()
				surface_set_target(obj_player.death2)
				draw_sprite_ext(spr_drill,0,100,100,1,1,obj_player.image_angle,c_white,1)
				draw_sprite_ext(spr_tracks,0,100,100,1,1,obj_player.image_angle,c_white,1)
				draw_sprite_ext(spr_body,0,100,100,1,1,obj_player.image_angle,c_white,1)
				draw_sprite_ext(spr_turret,0,100,100,1,1,obj_turret.image_angle,c_white,1)
				gpu_set_blendmode(bm_subtract)
				draw_set_color(c_black)
				//draw_line_width(100+x-obj_player.x,100+y-obj_player.y,100+x+lengthdir_x(500,angle)-obj_player.x,100+y+lengthdir_y(500,angle)-obj_player.y,0)
				/*dis_offset = -2
				draw_line_width(100+x+lengthdir_x(dis_offset,angle+90)-obj_player.x,100+y+lengthdir_y(dis_offset,angle+90)-obj_player.y,100+x+lengthdir_x(500,angle)+lengthdir_x(dis_offset,angle+90)-obj_player.x,100+y+lengthdir_y(dis_offset,angle+90)+lengthdir_y(500,angle)-obj_player.y,4)
				dis_offset = -7
				draw_line_width(100+x+lengthdir_x(dis_offset,angle+90)-obj_player.x,100+y+lengthdir_y(dis_offset,angle+90)-obj_player.y,100+x+lengthdir_x(500,angle)+lengthdir_x(dis_offset,angle+90)-obj_player.x,100+y+lengthdir_y(dis_offset,angle+90)+lengthdir_y(500,angle)-obj_player.y,10)
				dis_offset = -12
				draw_line_width(100+x+lengthdir_x(dis_offset,angle+90)-obj_player.x,100+y+lengthdir_y(dis_offset,angle+90)-obj_player.y,100+x+lengthdir_x(500,angle)+lengthdir_x(dis_offset,angle+90)-obj_player.x,100+y+lengthdir_y(dis_offset,angle+90)+lengthdir_y(500,angle)-obj_player.y,laser_width*5)
				dis_offset = -22
				draw_line_width(100+x+lengthdir_x(dis_offset,angle+90)-obj_player.x,100+y+lengthdir_y(dis_offset,angle+90)-obj_player.y,100+x+lengthdir_x(500,angle)+lengthdir_x(dis_offset,angle+90)-obj_player.x,100+y+lengthdir_y(dis_offset,angle+90)+lengthdir_y(500,angle)-obj_player.y,laser_width*5)
				dis_offset = -32
				draw_line_width(100+x+lengthdir_x(dis_offset,angle+90)-obj_player.x,100+y+lengthdir_y(dis_offset,angle+90)-obj_player.y,100+x+lengthdir_x(500,angle)+lengthdir_x(dis_offset,angle+90)-obj_player.x,100+y+lengthdir_y(dis_offset,angle+90)+lengthdir_y(500,angle)-obj_player.y,laser_width*5)
				dis_offset = -42
				draw_line_width(100+x+lengthdir_x(dis_offset,angle+90)-obj_player.x,100+y+lengthdir_y(dis_offset,angle+90)-obj_player.y,100+x+lengthdir_x(500,angle)+lengthdir_x(dis_offset,angle+90)-obj_player.x,100+y+lengthdir_y(dis_offset,angle+90)+lengthdir_y(500,angle)-obj_player.y,laser_width*5)*/
				dis_offset = -50
				draw_line_width(100+x+lengthdir_x(dis_offset,angle+90)-obj_player.x,100+y+lengthdir_y(dis_offset,angle+90)-obj_player.y,100+x+lengthdir_x(500,angle)+lengthdir_x(dis_offset,angle+90)-obj_player.x,100+y+lengthdir_y(dis_offset,angle+90)+lengthdir_y(500,angle)-obj_player.y,100)
				draw_set_color(c_white)
				gpu_set_blendmode(bm_normal)
				surface_reset_target()
			}
		}
		
		if global.dead = true{
			surface_set_target(obj_player.death1)
			gpu_set_blendmode(bm_subtract)
			draw_set_color(c_black)
			adj_offset_x = -lengthdir_x(-obj_player.adj_death_offset,obj_player.death_angle)
			adj_offset_y = -lengthdir_y(-obj_player.adj_death_offset,obj_player.death_angle)
			draw_line_width(100+x-obj_player.x-adj_offset_x,100+y-obj_player.y-adj_offset_y,100+x+lengthdir_x(laser_distance,angle)-obj_player.x-adj_offset_x,100+y+lengthdir_y(laser_distance,angle)-obj_player.y-adj_offset_y,5)
			draw_set_color(c_white)
			gpu_set_blendmode(bm_normal)
			surface_reset_target()
			surface_set_target(obj_player.death2)
			gpu_set_blendmode(bm_subtract)
			draw_set_color(c_black)
			adj_offset_x = -lengthdir_x(obj_player.adj_death_offset,obj_player.death_angle)
			adj_offset_y = -lengthdir_y(obj_player.adj_death_offset,obj_player.death_angle)
			draw_line_width(100+x-obj_player.x-adj_offset_x,100+y-obj_player.y-adj_offset_y,100+x+lengthdir_x(laser_distance,angle)-obj_player.x-adj_offset_x,100+y+lengthdir_y(laser_distance,angle)-obj_player.y-adj_offset_y,5)
			draw_set_color(c_white)
			gpu_set_blendmode(bm_normal)
			surface_reset_target()
		}
	}else{
		laser_distance = 0
		angle += 1*angle_dir
	}
	
	
	
}else{
	if !global.menu{
		angle += 1*angle_dir
	}
}



