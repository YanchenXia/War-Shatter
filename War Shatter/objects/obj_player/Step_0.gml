if keyboard_check(vk_left) {
	x -= 2
	sprite_index = spr_player_movement;
}
if keyboard_check(vk_right){
	x += 2
	sprite_index = spr_player_movement
}
if keyboard_check(vk_up) {
	vspeed -= 0.01
	sprite_index = spr_player_movement
}
if keyboard_check(vk_down) {
	vspeed += 0.02
	sprite_index = spr_player_movement
}

x = clamp(x, sprite_width/2, room_width-sprite_width/2)
y = clamp(y, sprite_height/2, room_height-sprite_height/2)

if (canShoot) {
    if (keyboard_check(vk_space)) {
        canShoot = false;
        alarm[0] = game_get_speed(gamespeed_fps) / 2; // 2 bullets per second
        instance_create_layer(x, y - sprite_height / 2, "Instances", obj_player_bullet);
    }
}
