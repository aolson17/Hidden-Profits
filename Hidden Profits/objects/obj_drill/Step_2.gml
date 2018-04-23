x = obj_player.x
y = obj_player.y
image_angle = obj_player.image_angle

if !global.menu{
	if keyboard_check(vk_space){
		image_speed = 1.5
	}else{
		image_speed = 0
	}
}