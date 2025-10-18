// Apply the color tint shader
shader_set(shd_color_tint);

// Get the location of the uniform in the shader
var tint_loc = shader_get_uniform(shd_color_tint, "u_tint_color");

// Send a color to the shader (RGB from 0.0–1.0)
shader_set_uniform_f(tint_loc, 0.5, 1.0, 0.5); // greenish tint example

// Draw the sprite
draw_self();

// Reset shader so other objects aren’t affected
shader_reset();