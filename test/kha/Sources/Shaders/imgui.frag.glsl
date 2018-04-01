#version 450

in vec4 fragmentColor;
in vec2 texcoord;
out vec4 FragColor;
uniform sampler2D texsampler;

void main() {
	vec4 color = texture(texsampler, texcoord);
	FragColor = vec4(fragmentColor.r, fragmentColor.g, fragmentColor.b, fragmentColor.a * color.a);
}
