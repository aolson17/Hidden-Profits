mydirt = instance_nearest(x-150,y-150,obj_dirt)

x = rlx
y = rly


/*if keyboard_check(ord("Q")){
	x+=lengthdir_x(spd,image_angle+90)
	y+=lengthdir_y(spd,image_angle+90)
}
if keyboard_check(ord("E")){
	x+=lengthdir_x(spd,image_angle-90)
	y+=lengthdir_y(spd,image_angle-90)
}*/
movex = 0
movey = 0
if !global.menu && !global.dead{
movex = keyboard_check(ord("A")) - keyboard_check(ord("D"))
movey = keyboard_check(ord("W")) - keyboard_check(ord("S"))
}

if global.menu{
	if keyboard_check_pressed(vk_enter){
		global.menu = false
	}
}else{
	if keyboard_check_pressed(vk_enter){
		obj_camera.angle_speed = .2
		obj_drill.image_speed = 0
		global.menu = true
	}
}

if keyboard_check_pressed(ord("1")){
	if obj_generation.money >= price_1{
		drill_length += drill_length_upgrade
		upgraded_1 ++
		obj_generation.money-=price_1
	}
}
if keyboard_check_pressed(ord("2")){
	if obj_generation.money >= price_2{
		drill_width += drill_width_upgrade
		upgraded_2 ++
		obj_generation.money-=price_2
	}
}
if keyboard_check_pressed(ord("3")){
	if obj_generation.money >= price_3{
		spd += spd_upgrade
		upgraded_3 ++
		obj_generation.money-=price_3
	}
}
if keyboard_check_pressed(ord("4")){
	if obj_generation.money >= price_4 && upgraded_4 <= 1{
		if upgraded_4 = 0{
			radar_1 = 1
			radar_2 = 151
		}else if upgraded_4 = 1{
			radar_1 = 1
			radar_2 = 151
			radar_3 = 301
		}
		spd += spd_upgrade
		upgraded_4 ++
		obj_generation.money-=price_4
		
		
		
	}
}
if keyboard_check_pressed(ord("5")){
	if obj_generation.money >= price_5{
		radar_1_width += radar_width_upgrade
		upgraded_5 ++
		obj_generation.money-=price_5
	}
}
if keyboard_check_pressed(ord("6")){
	if obj_generation.money >= price_6{
		radar_2_width += radar_width_upgrade
		upgraded_6 ++
		obj_generation.money-=price_6
	}
}
if keyboard_check_pressed(ord("7")){
	if obj_generation.money >= price_7{
		radar_3_width += radar_width_upgrade
		upgraded_7 ++
		obj_generation.money-=price_7
	}
}
if keyboard_check_pressed(ord("8")){
	if obj_generation.money >= price_8{
		size += light_size_upgrade
		upgraded_8 ++
		obj_generation.money-=price_8
	}
}
if keyboard_check_pressed(ord("9")){
	if obj_generation.money >= price_9{
		light_distance += light_distance_upgrade
		upgraded_9 ++
		obj_generation.money-=price_9
	}
}

if keyboard_check(vk_ralt){
	//obj_generation.money+=50
}

obj_tracks.image_speed = .6*movey

if keyboard_check(ord("A")) || keyboard_check(ord("D")){
	image_angle+=2.2*movex
	if place_meeting(x,y,obj_dirt){
		image_angle-=2.2*movex
	}
	
	//obj_view.x+=5
}
obj_camera.spd = 0
if keyboard_check(ord("W")) || keyboard_check(ord("S")){
	
	//x+=lengthdir_x(spd,image_angle)*movey
	
	//y+=lengthdir_y(spd,image_angle)*movey
	
	if !place_meeting(x+lengthdir_x(spd*movey,image_angle),y,obj_dirt){
		x+=(lengthdir_x(spd*movey,image_angle))
		nox = false
	}else{nox = true}
	if !place_meeting(x,y+lengthdir_y(spd*movey,image_angle),obj_dirt){
		y+=(lengthdir_y(spd*movey,image_angle))
		noy = false
	}else{noy = true}
	
	if nox{
		if noy{
			obj_tracks.image_speed = 0
		}
	}
	
	obj_camera.spd = 2*movey
}
if keyboard_check_pressed(vk_shift){
	image_index = 1
	alarm_set(0,10)
}

if !global.menu{
	if radar_1 != 0{radar_1 += 3}
	if radar_2 != 0{radar_2 += 3}
	if radar_3 != 0{radar_3 += 3}
}

if radar_1 >= 450{radar_1 = 1}
if radar_2 >= 450{radar_2 = 1}
if radar_3 >= 450{radar_3 = 1}

if mouse_check_button_pressed(mb_right){
	radar_2 = 1
	radar_2_width += 1
}


if keyboard_check(ord("F")){
	x++
	y++
}
if keyboard_check(ord("G")){
	x+=0
	y+=1.99
}


rlx = x
rly = y

x = round(rlx)
y = round(rly)

if global.dead{
	death_offset+=.1
}
