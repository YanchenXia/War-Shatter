var bullet = instance_create_layer(obj_enemy3.x, obj_enemy3.y, "Instances", obj_enemy_bullet);
bullet.direction = point_direction(x, y, obj_player.x, obj_player.y)
bullet.image_angle = direction + -50;


	
alarm[0] = 360