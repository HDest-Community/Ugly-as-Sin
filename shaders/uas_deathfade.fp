void main() {
	vec4 color = texture(InputTexture, TexCoord).rgba;

	color = mix(color, vec4(0,0,0,0), fadeamount);

	// Final output
	FragColor = color;
}
