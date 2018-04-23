randomize()
if random(100)<25{
	if random(100)<33{
		gold[i,0] = obj_player.x + random(ran_distance)
	}else{
		gold[i,0] = obj_player.x - random(ran_distance)
	}
	if random(100)<50{
		gold[i,1] = obj_player.y + random(ran_distance)+min_distance
	}else{
		gold[i,1] = obj_player.y - random(ran_distance)-min_distance
	}
}else if random(100)<66{
	if random(100)<50{
		gold[i,0] = obj_player.x + random(ran_distance)+min_distance
	}else{
		gold[i,0] = obj_player.x - random(ran_distance)-min_distance
	}
	if random(100)<50{
		gold[i,1] = obj_player.y + random(ran_distance)
	}else{
		gold[i,1] = obj_player.y - random(ran_distance)
	}
}else{
	if random(100)<50{
		gold[i,0] = obj_player.x + random(ran_distance)+min_distance
	}else{
		gold[i,0] = obj_player.x - random(ran_distance)-min_distance
	}
	if random(100)<50{
		gold[i,1] = obj_player.y + random(ran_distance)+min_distance
	}else{
		gold[i,1] = obj_player.y - random(ran_distance)-min_distance
	}
}
gold[i,2] = irandom(360)