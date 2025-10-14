// --- Movement ---
var move_x = keyboard_check(vk_right) - keyboard_check(vk_left);
var move_y = keyboard_check(vk_down) - keyboard_check(vk_up);

var move_speed = 4;

x += move_x * move_speed;
y += move_y * move_speed;

// Clamp position so the tank stays in the room
x = clamp(x, sprite_width / 2, room_width - sprite_width / 2);
y = clamp(y, sprite_height / 2, room_height - sprite_height / 2);

// --- Sprite switching ---
if (move_x != 0 || move_y != 0) {
    sprite_index = spr_player_movement;
    image_speed = 0.3;
} else {
    sprite_index = spr_player;
    image_speed = 0;
}

// --- Always face up ---
image_angle = 0;

// --- Shooting ---
if (canShoot) {
    if (keyboard_check(vk_space)) {
        canShoot = false;
        alarm[0] = game_get_speed(gamespeed_fps) / 2;

        // Spawn bullet slightly above tank
        var bullet_offset = sprite_height * 0.45; 
        var spawn_x = x;
        var spawn_y = y - bullet_offset;

        var bullet = instance_create_layer(spawn_x, spawn_y, "Instances", obj_player_bullet);
        bullet.direction = 90; // upward
        bullet.speed = 10;
    }
}


