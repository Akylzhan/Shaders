shader_type canvas_item;

void fragment() {
	// normalize pixel position
	vec2 st = FRAGCOORD.xy * SCREEN_PIXEL_SIZE;
	// distance from pixel to the center of screen
	float pct = distance(st, vec2(0.5));
	pct = smoothstep(0.1, 1.0, pct);
	// interpolation
	vec3 color = mix(texture(TEXTURE, UV).rgb, vec3(.0), pct);

	COLOR = vec4(color, 1.0);
}