


/*lowest = 999
for (i = 0;i < array_height_2d(gold);i++){
	
	distance = point_distance(gold[i,0],gold[i,1],obj_drill.x+lengthdir_x(40,obj_drill.image_angle),obj_drill.y+lengthdir_y(40,obj_drill.image_angle))//distance_to_object(obj_drill)
	if distance < lowest{lowest = distance}
	
}

draw_text(10,40,"Distance: " + string(lowest))