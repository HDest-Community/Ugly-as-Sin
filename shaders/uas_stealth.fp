void main() {
	vec3 color = texture(InputTexture, TexCoord).rgb;
	FragColor = vec4(color.r, color.g, color.b + 0.25, 1.0);
}
