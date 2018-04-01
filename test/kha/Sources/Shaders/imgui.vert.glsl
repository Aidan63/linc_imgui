#version 450

in vec3 pos;
in vec4 col;
in vec2 tex;
out vec4 fragmentColor;
out vec2 texcoord;

void main() {
	gl_Position = vec4(pos.x, pos.y, 0.5, 1.0);
	fragmentColor = col;
	texcoord = tex;
}
