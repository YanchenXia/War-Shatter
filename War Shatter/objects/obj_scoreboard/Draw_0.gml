if(instance_exists(obj_player)){
	draw_healthbar(8,8,256,32,obj_player.hp,c_black,c_red,c_lime,0,true,true)
	draw_set_font(fnt_score)
	draw_text(16,64,"Score: " + string(score))
}
