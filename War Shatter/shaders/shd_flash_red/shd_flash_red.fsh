varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float flash_amount; 

void main()
{
    vec4 base_colour = v_vColour * texture2D(gm_BaseTexture, v_vTexcoord);
    vec4 red_colour = vec4(1.0, 0.0, 0.0, base_colour.a);
    
    gl_FragColor = mix(base_colour, red_colour, flash_amount);
}
