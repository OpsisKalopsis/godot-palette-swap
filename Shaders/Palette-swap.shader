shader_type canvas_item;

uniform sampler2D replace;

void fragment(){
	vec4 current_color = texture(TEXTURE, UV);
	if(current_color.a > 0.0) {
		vec4 replace_color = texture(replace, vec2(current_color.r,0));
		if(replace_color.a > 0.0) {
			current_color.rgb = replace_color.rgb;
		}
	}
	
	COLOR.rgba = current_color.rgba;
}
