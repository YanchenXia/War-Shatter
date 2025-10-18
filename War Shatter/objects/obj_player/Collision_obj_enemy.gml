instance_destroy(other)

inflict_damage(1)

instance_create_layer(x, y, "Instances", obj_explosion2);
instance_create_layer(x, y, "Instances", obj_dogtag);

with (obj_scoreboard) {
    score += 10
}
