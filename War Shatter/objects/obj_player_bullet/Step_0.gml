// Move based on direction and speed
motion_add(direction, 0);

// Destroy if it leaves the room
if (y < 0) instance_destroy();