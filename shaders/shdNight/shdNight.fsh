///Fragment
//Credits to XOR - gmc.yoyogames.com/index.php?showtopic=684193
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
     gl_FragColor = v_vColour * texture2D(gm_BaseTexture, v_vTexcoord) * vec4(0.6, 0.9, 0.9, 1.0);
}
