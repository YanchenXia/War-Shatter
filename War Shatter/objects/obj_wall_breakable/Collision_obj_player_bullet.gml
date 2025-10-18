instance_destroy(other)

audio_play_sound(explosion_sfx, 1, false)

instance_destroy()
instance_create_layer(x,y,"Instances",obj_shatter)