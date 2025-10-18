move_speed = 2;
facing = irandom(3); // random direction (0–3 like player)
alarm[0] = room_speed * random_range(1, 3); // movement change timer
alarm[1] = room_speed * random_range(1, 2); // shooting timer