if(instance_exists(obj_player)){
	if(distance_to_object(obj_player)< 200){
		path_end()
		direction = point_direction(x,y,obj_player.x,obj_player.y)
		image_angle = direction + 45
		speed = 3
	}
}