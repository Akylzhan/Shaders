shader_type canvas_item;

uniform int rectangle_size = 8; // 8

void fragment() {
	vec3 mean_color = vec3(0, 0, 0);
	vec2 rectangle_size_pixels = TEXTURE_PIXEL_SIZE * float(rectangle_size);
	vec2 pixel = rectangle_size_pixels * floor(SCREEN_UV / rectangle_size_pixels);
	COLOR = texture(TEXTURE, pixel);
}