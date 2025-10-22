// --- INPUT ---
var move_x = keyboard_check(vk_right) - keyboard_check(vk_left);
var move_y = keyboard_check(vk_down) - keyboard_check(vk_up);

// --- MOVEMENT SPEED ---
var move_speed = 4;

// --- APPLY MOVEMENT ---
x += move_x * move_speed;
y += move_y * move_speed;

// --- KEEP PLAYER INSIDE ROOM ---
x = clamp(x, sprite_width / 2, room_width - sprite_width / 2);
y = clamp(y, sprite_height / 2, room_height - sprite_height / 2);

// --- SPRITE SWITCHING ---
if (move_x != 0 || move_y != 0) {
    sprite_index = spr_player_movement;
    image_speed = 0.3;
} else {
    sprite_index = spr_player;
    image_speed = 0;
}

// --- DETERMINE FACING DIRECTION ---
if (move_x != 0 || move_y != 0) {
    if (abs(move_x) >= abs(move_y)) {
        // Horizontal dominates
        if (move_x > 0) facing = 1; // Right
        else facing = 3; // Left
    } else {
        // Vertical dominates
        if (move_y > 0) facing = 2; // Down
        else facing = 0; // Up
    }
}

// --- SET IMAGE ANGLE BASED ON FACING ---
// (If your tank sprite faces UP by default)
switch (facing) {
    case 0: image_angle = 0;   break; // Up
    case 1: image_angle = -90;  break; // Right
    case 2: image_angle = 180; break; // Down
    case 3: image_angle = 90; break; // Left
}

// --- SHOOTING ---
if (canShoot) {
    if (keyboard_check(vk_space)) {
        canShoot = false;
        alarm[0] = game_get_speed(gamespeed_fps) / 2;

        // Declare variables for bullet spawning
        var bullet_offset = sprite_height * 0.45;
        var spawn_x = x;
        var spawn_y = y;
        var bullet_direction = 0; // ✅ Declare before using it

        // Adjust bullet spawn and direction based on facing
        switch (facing) {
            case 0: // Up
                spawn_y -= bullet_offset;
                bullet_direction = 90;
                break;
            case 1: // Right
                spawn_x += bullet_offset;
                bullet_direction = 0;
                break;
            case 2: // Down
                spawn_y += bullet_offset;
                bullet_direction = 270;
                break;
            case 3: // Left
                spawn_x -= bullet_offset;
                bullet_direction = 180;
                break;
        }

        // Create bullet and apply movement
        var bullet = instance_create_layer(spawn_x, spawn_y, "Instances", obj_player_bullet);
        bullet.direction = bullet_direction;
		bullet.image_angle = bullet_direction + -90;
        bullet.speed = 10;
		
		audio_play_sound(shot_sfx, 1, false)
    }
}

if (flash_timer > 0) {
    flash_timer--;
}


