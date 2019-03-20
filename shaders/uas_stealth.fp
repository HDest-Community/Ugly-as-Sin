void main() {
	//Predefined Vignette
	//adapted from Nash Muhandes port of Ippokratis' ShaderToy vignette.
	vec2 texSize = textureSize(InputTexture, 0);
	vec2 uv = TexCoord;
	uv *=  1.0 - uv.yx;
	float vig = uv.x * uv.y * 20;
	vig = pow(vig, 1);
	vig = clamp(vig, 0.0, 1.0);
	vig = 1.0 - vig; //invert

	vec3 color = texture(InputTexture, TexCoord).rgb;
	color = color + (color * vig * stealth / 4); // brighten edges slightly
	color.b = color.b + (color.b * vig * stealth); //brighten edge blues a little more

	// Final output
	FragColor = vec4(color.r, color.g, color.b, 1.0);
}
