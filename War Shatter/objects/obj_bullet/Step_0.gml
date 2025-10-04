// Move bullet upward
y -= 10;

// Destroy if it leaves the room
if (y < 0) {
    instance_destroy();
}