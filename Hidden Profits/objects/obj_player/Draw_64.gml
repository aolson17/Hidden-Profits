//draw_text(20,20,radar_1)
//draw_text(20,20,adj_death_offset)




if global.menu{
	//draw_text(300,150,"Main Menu")
	
	draw_sprite(spr_menu,0,105,50)
	draw_set_font(font_small)
	draw_set_color(make_color_rgb(255,215,0))
	draw_text(122,140,"Enter To Toggle Menu")
	draw_text(155,160,"R To Restart")
	draw_text(148,180,"Space For Drill")
	draw_text(125,200,"WASD For Movement")
	draw_text(155,220,"ESC To Exit")
	
	draw_text(70,600,"Number Keys To Purchase Upgrades:")
	draw_text(80,630,"1 - "+string(price_1)+" - Drill Length")
	draw_text(80,650,"2 - "+string(price_2)+" - Drill Width")
	draw_text(80,670,"3 - "+string(price_3)+" - Speed")
	draw_text(80,690,"4 - "+string(price_4)+" - Add Radar Ping(Max "+string(2-upgraded_4)+" More)")
	draw_text(80,710,"5 - "+string(price_5)+" - Radar Ping 1 Width")
	draw_text(80,730,"6 - "+string(price_6)+" - Radar Ping 2 Width")
	draw_text(80,750,"7 - "+string(price_7)+" - Radar Ping 3 Width")
	draw_text(80,770,"8 - "+string(price_8)+" - Stationary Light Distance")
	draw_text(80,790,"9 - "+string(price_9)+" - Turreted Light Distance")
	
	
	
	draw_text(380,630,"You Have "+string(upgraded_1))
	draw_text(380,650,"You Have "+string(upgraded_2))
	draw_text(380,670,"You Have "+string(upgraded_3))
	draw_text(380,690,"You Have "+string(upgraded_4))
	draw_text(380,710,"You Have "+string(upgraded_5))
	draw_text(380,730,"You Have "+string(upgraded_6))
	draw_text(380,750,"You Have "+string(upgraded_7))
	draw_text(380,770,"You Have "+string(upgraded_8))
	draw_text(380,790,"You Have "+string(upgraded_9))
	
	
	/*draw_text(680,750,"You Have "+string(radar_1))
	draw_text(680,770,"You Have "+string(radar_2))
	draw_text(680,790,"You Have "+string(radar_3))*/
	//draw_text(165,250,camera_get_view_width(obj_camera.camera))
	//draw_text(165,250,view_wview)
	//draw_text(165,270,view_wport)
	draw_set_font(font_big)
	draw_set_color(c_white)
	draw_text(48,398,string(obj_generation.money) + " Monies")
	draw_text(52,398,string(obj_generation.money) + " Monies")
	draw_set_color(make_color_rgb(155,115,0))
	draw_text(52,402,string(obj_generation.money) + " Monies")
	draw_text(48,402,string(obj_generation.money) + " Monies")
	draw_set_color(make_color_rgb(255,215,0))
	draw_text(50,400,string(obj_generation.money) + " Monies")
	draw_set_color(c_white)
	
	draw_set_font(font_medium)
	draw_set_color(c_white)
	draw_text(348,58,"Score: " + string(scr))
	draw_text(352,58,"Score: " + string(scr))
	draw_set_color(make_color_rgb(155,115,0))
	draw_text(352,62,"Score: " + string(scr))
	draw_text(348,62,"Score: " + string(scr))
	draw_set_color(make_color_rgb(255,215,0))
	draw_text(350,60,"Score: " + string(scr))
	draw_set_color(c_white)
}else{
	draw_set_color(make_color_rgb(255,215,0))
	draw_set_font(font_medium)
	draw_set_color(c_white)
	draw_text(48,48,string(obj_generation.money) + " Monies")
	draw_text(52,48,string(obj_generation.money) + " Monies")
	draw_set_color(make_color_rgb(155,115,0))
	draw_text(52,52,string(obj_generation.money) + " Monies")
	draw_text(48,52,string(obj_generation.money) + " Monies")
	draw_set_color(make_color_rgb(255,215,0))
	draw_text(50,50,string(obj_generation.money) + " Monies")
	draw_set_color(c_white)
}



