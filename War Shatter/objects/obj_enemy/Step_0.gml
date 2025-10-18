// --- obj_enemy: Step Event ---

// Try to move
x += lengthdir_x(move_speed, direction);
y += lengthdir_y(move_speed, direction);

// --- COLLISION WITH WALLS ---
if (place_meeting(x, y, obj_wall)) {
    // Move back
    x -= lengthdir_x(move_speed, direction);
    y -= lengthdir_y(move_speed, direction);
    
    // Pick a new random direction
    direction = irandom_range(0, 3) * 90;
    image_angle = direction - 90;
}