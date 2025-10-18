image_angle = direction - 90;
speed = 8;

// --- Collision with obj_player ---
if (place_meeting(x, y, obj_player)) {
    instance_destroy(); // destroy bullet
    with (other) {
        // optional: trigger explosion, reduce health, etc.
    }
}