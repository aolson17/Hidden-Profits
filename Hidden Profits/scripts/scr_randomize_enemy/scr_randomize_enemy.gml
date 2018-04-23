randomize()
if random(100)<25{
	if random(100)<33{
		enemy[i,0] = obj_player.x + random(enemy_ran_distance)
	}else{
		enemy[i,0] = obj_player.x - random(enemy_ran_distance)
	}
	if random(100)<50{
		enemy[i,1] = obj_player.y + random(enemy_ran_distance)+enemy_min_distance
	}else{
		enemy[i,1] = obj_player.y - random(enemy_ran_distance)-enemy_min_distance
	}
}else if random(100)<66{
	if random(100)<50{
		enemy[i,0] = obj_player.x + random(enemy_ran_distance)+enemy_min_distance
	}else{
		enemy[i,0] = obj_player.x - random(enemy_ran_distance)-enemy_min_distance
	}
	if random(100)<50{
		enemy[i,1] = obj_player.y + random(enemy_ran_distance)
	}else{
		enemy[i,1] = obj_player.y - random(enemy_ran_distance)
	}
}else{
	if random(100)<50{
		enemy[i,0] = obj_player.x + random(enemy_ran_distance)+enemy_min_distance
	}else{
		enemy[i,0] = obj_player.x - random(enemy_ran_distance)-enemy_min_distance
	}
	if random(100)<50{
		enemy[i,1] = obj_player.y + random(enemy_ran_distance)+enemy_min_distance
	}else{
		enemy[i,1] = obj_player.y - random(enemy_ran_distance)-enemy_min_distance
	}
}