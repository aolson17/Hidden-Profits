

min_distance = 200
ran_distance = 300
enemy_min_distance = 300
enemy_ran_distance = 300

ores = 6
ores_other = 12
ores_blue = 8
ores_green = 4
ores_purple = 1
enemies = 10

gold_value = 10
green_value = 8
blue_value = 8
red_value = 2
purple_value = 50


money = 0

distance = 0

for (i = 0;i < ores_blue;i++){
	scr_randomize_blue()
}

for (i = 0;i < ores_purple;i++){
	scr_randomize_purple()
}

for (i = 0;i < ores_green;i++){
	scr_randomize_green()
}


for (i = 0;i < ores;i++){
	scr_randomize_gold()
}

for (i = 0;i < ores_other;i++){
	scr_randomize_red()
}



for (i = 0;i < enemies;i++){
	var temp_enemy_min_distance = enemy_min_distance
	enemy_min_distance = temp_enemy_min_distance*1.4
	scr_randomize_enemy()
	enemy_min_distance = temp_enemy_min_distance
	enemy_ids[i] = instance_create_depth(enemy[i,0],enemy[i,1],depth,obj_enemy)
}

