

/*if global.menu{
	//draw_text(300,150,"Main Menu")
	
	draw_sprite_ext(spr_menu,0,50-obj_camera.x,50-obj_camera.y,.5,.5,0,c_white,1)
	draw_set_font(font_small)
	draw_text(65-obj_camera.x,30-obj_camera.y,"Enter To Toggle Menu")
	
	draw_set_font(font_big)
	draw_text(view_wport/2-obj_camera.x,100-obj_camera.y,string(obj_generation.money) + " Monies")
}else{
	draw_set_font(font_small)
	draw_text(10-obj_camera.x,10-obj_camera.y,"Monies: " + string(obj_generation.money))
}*/


draw_sprite(spr_point,0,mouse_x,mouse_y)