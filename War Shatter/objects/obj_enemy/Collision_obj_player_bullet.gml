var part_sys = part_system_create();
var part_type = part_type_create();

part_type_shape(part_type, pt_shape_explosion);
part_type_size(part_type, 0.5, 1, 0, 0);
part_type_color2(part_type, c_orange, c_red);
part_type_alpha2(part_type, 1, 0);
part_type_speed(part_type, 2, 5, 0, 0);
part_type_direction(part_type, 0, 360, 0, 0);
part_type_gravity(part_type, 0, 270);

part_particles_create(part_sys, x, y, part_type, 20);


instance_create_layer(x, y, "Instances", obj_shatter);
instance_create_layer(x, y, "Instances", obj_dogtag);

instance_destroy(other);
instance_destroy();

with (obj_scoreboard) {
    score += 10
}

