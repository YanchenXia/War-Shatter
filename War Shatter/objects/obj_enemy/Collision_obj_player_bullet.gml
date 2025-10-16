// Destroy both bullet and tank
instance_destroy(other); // destroy bullet
instance_destroy();      // destroy this enemy

// Create explosion at the tank's position
instance_create_layer(x, y, "Instances", obj_explosion2);

// Create dogtag drop
instance_create_layer(x, y, "Instances", obj_dogtag);