

for (i = 0;i < ores;i++){
	distance = point_distance(gold[i,0],gold[i,1],obj_drill.x+lengthdir_x(40,obj_drill.image_angle),obj_drill.y+lengthdir_y(40,obj_drill.image_angle))//distance_to_object(obj_drill)
	if floor(distance)<30{
		money+=gold_value
		obj_player.scr+=gold_value
		scr_randomize_gold()
	}else if distance>ran_distance+min_distance+10{
		scr_randomize_gold()
	}
}

for (i = 0;i < ores_blue;i++){
	distance = point_distance(blue[i,0],blue[i,1],obj_drill.x+lengthdir_x(40,obj_drill.image_angle),obj_drill.y+lengthdir_y(40,obj_drill.image_angle))//distance_to_object(obj_drill)
	if floor(distance)<20{
		money+=blue_value
		obj_player.scr+=blue_value
		scr_randomize_blue()
	}else if distance>ran_distance+min_distance+10{
		scr_randomize_blue()
	}	
}

for (i = 0;i < ores_purple;i++){
	distance = point_distance(purple[i,0],purple[i,1],obj_drill.x+lengthdir_x(40,obj_drill.image_angle),obj_drill.y+lengthdir_y(40,obj_drill.image_angle))//distance_to_object(obj_drill)
	if floor(distance)<20{
		money+=purple_value
		obj_player.scr*=1.2
		scr_randomize_purple()
	}else if distance>ran_distance+min_distance+10{
		scr_randomize_purple()
	}
}

for (i = 0;i < ores_green;i++){
	distance = point_distance(green[i,0],green[i,1],obj_drill.x+lengthdir_x(40,obj_drill.image_angle),obj_drill.y+lengthdir_y(40,obj_drill.image_angle))//distance_to_object(obj_drill)
	if floor(distance)<20{
		money+=green_value
		obj_player.scr+=green_value
		scr_randomize_green()
	}else if distance>ran_distance+min_distance+10{
		scr_randomize_green()
	}
}

for (i = 0;i < ores_other;i++){
	distance = point_distance(ore[i,0],ore[i,1],obj_drill.x+lengthdir_x(40,obj_drill.image_angle),obj_drill.y+lengthdir_y(40,obj_drill.image_angle))//distance_to_object(obj_drill)
	if floor(distance)<30{
		money+=red_value
		obj_player.scr+=red_value
		scr_randomize_red()
	}else if distance>ran_distance+min_distance+10{
		scr_randomize_red()
	}
}


for (i = 0;i < enemies;i++){
	distance = point_distance(enemy[i,0],enemy[i,1],obj_drill.x+lengthdir_x(40,obj_drill.image_angle),obj_drill.y+lengthdir_y(40,obj_drill.image_angle))//distance_to_object(obj_drill)
	
	if floor(distance)<35{
		money+=20
		obj_player.scr+=20
		scr_randomize_enemy()
	}else if distance>enemy_ran_distance+enemy_min_distance+10{
		scr_randomize_enemy()
	}
	while(true){
		too_close = false
		for (j = 0;j < enemies;j++){
			if point_distance(enemy[i,0],enemy[i,1],enemy[j,1],enemy[j,1])<80{
				too_close = true
			}
		}
		if too_close = false{
			break
		}else{
			scr_randomize_enemy()
			enemy_ids[i].x = enemy[i,0]
			enemy_ids[i].y = enemy[i,1]
		}
	}
	enemy_ids[i].x = enemy[i,0]
	enemy_ids[i].y = enemy[i,1]
}





