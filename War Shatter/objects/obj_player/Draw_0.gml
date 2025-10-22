if (flash_timer > 0) {
    shader_set(shd_flash_red);
    var uni_flash = shader_get_uniform(shd_flash_red, "flash_amount");
    shader_set_uniform_f(uni_flash, flash_timer / flash_duration);
    draw_self();
    shader_reset();
} else {
    draw_self();
}