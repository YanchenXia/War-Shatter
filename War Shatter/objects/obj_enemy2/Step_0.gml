if(instance_exists(obj_player)){
	if(distance_to_object(obj_player)< 300){
		direction = point_direction(x,y,obj_player.x,obj_player.y)
		image_angle = direction + 90
		speed = 4
	}
}