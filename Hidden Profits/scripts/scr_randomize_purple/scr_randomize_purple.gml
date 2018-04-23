randomize()
if random(100)<25{
	if random(100)<33{
		purple[i,0] = obj_player.x + random(ran_distance)
	}else{
		purple[i,0] = obj_player.x - random(ran_distance)
	}
	if random(100)<50{
		purple[i,1] = obj_player.y + random(ran_distance)+min_distance
	}else{
		purple[i,1] = obj_player.y - random(ran_distance)-min_distance
	}
}else if random(100)<66{
	if random(100)<50{
		purple[i,0] = obj_player.x + random(ran_distance)+min_distance
	}else{
		purple[i,0] = obj_player.x - random(ran_distance)-min_distance
	}
	if random(100)<50{
		purple[i,1] = obj_player.y + random(ran_distance)
	}else{
		purple[i,1] = obj_player.y - random(ran_distance)
	}
}else{
	if random(100)<50{
		purple[i,0] = obj_player.x + random(ran_distance)+min_distance
	}else{
		purple[i,0] = obj_player.x - random(ran_distance)-min_distance
	}
	if random(100)<50{
		purple[i,1] = obj_player.y + random(ran_distance)+min_distance
	}else{
		purple[i,1] = obj_player.y - random(ran_distance)-min_distance
	}
}
purple[i,2] = irandom(360)