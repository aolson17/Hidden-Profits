



for (i = 0;i < ores_other;i++){
	reddish = make_color_rgb(200,0,0)
	draw_sprite_ext(spr_gold,1,ore[i,0],ore[i,1],1,1,ore[i,2],reddish,1)
}

for (i = 0;i < ores;i++){
	draw_sprite_ext(spr_gold,1,gold[i,0],gold[i,1],.6,.6,gold[i,2],c_white,1)
}

for (i = 0;i < ores_blue;i++){
	blueish = make_color_rgb(0,50,100)
	draw_sprite_ext(spr_ore,1,blue[i,0],blue[i,1],.5,.5,blue[i,2],blueish,1)
}

for (i = 0;i < ores_green;i++){
	greenish = make_color_rgb(0,200,0)
	draw_sprite_ext(spr_gold,1,green[i,0],green[i,1],.2,.2,green[i,2],greenish,1)
}

for (i = 0;i < ores_purple;i++){
	purpleish = make_color_rgb(148,0,211)
	draw_sprite_ext(spr_ore,1,purple[i,0],purple[i,1],.15,.15,purple[i,2],purpleish,1)
}