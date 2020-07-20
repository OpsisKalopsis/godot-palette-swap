shader_type canvas_item;

uniform sampler2D replace;

void fragment(){
	COLOR = texture(TEXTURE, UV);
	vec4 replace_color = texture(replace, vec2(COLOR.r,0));
	if(replace_color.a > 0.0) {
		COLOR.rgba = replace_color.rgba;
	}
}
