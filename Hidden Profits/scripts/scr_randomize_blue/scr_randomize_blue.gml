randomize()
if random(100)<25{
	if random(100)<33{
		blue[i,0] = obj_player.x + random(ran_distance)
	}else{
		blue[i,0] = obj_player.x - random(ran_distance)
	}
	if random(100)<50{
		blue[i,1] = obj_player.y + random(ran_distance)+min_distance
	}else{
		blue[i,1] = obj_player.y - random(ran_distance)-min_distance
	}
}else if random(100)<66{
	if random(100)<50{
		blue[i,0] = obj_player.x + random(ran_distance)+min_distance
	}else{
		blue[i,0] = obj_player.x - random(ran_distance)-min_distance
	}
	if random(100)<50{
		blue[i,1] = obj_player.y + random(ran_distance)
	}else{
		blue[i,1] = obj_player.y - random(ran_distance)
	}
}else{
	if random(100)<50{
		blue[i,0] = obj_player.x + random(ran_distance)+min_distance
	}else{
		blue[i,0] = obj_player.x - random(ran_distance)-min_distance
	}
	if random(100)<50{
		blue[i,1] = obj_player.y + random(ran_distance)+min_distance
	}else{
		blue[i,1] = obj_player.y - random(ran_distance)-min_distance
	}
}
blue[i,2] = irandom(360)