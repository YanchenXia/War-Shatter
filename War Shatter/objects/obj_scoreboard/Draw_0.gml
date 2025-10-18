if(instance_exists(obj_player)){
	for (var i =0; i < obj_player.hp;i++){
	draw_sprite(spr_life, 0, (50 + 24 * i),15)
}

    draw_set_halign(fa_left)
	draw_set_font(fnt_score)
	draw_text(16,64,"Score: " + string(score))
}
