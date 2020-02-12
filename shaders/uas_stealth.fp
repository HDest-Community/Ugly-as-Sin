void main() {
	vec3 color = texture(InputTexture, TexCoord).rgb;
	color += color * (1.1 * pow(1 - TexCoord.y, 8) * stealth);
	color.b += (0.2 * pow(1 - TexCoord.y, 8) * stealth);

	// Final output
	FragColor = vec4(color.r, color.g, color.b, 1.0);
}
