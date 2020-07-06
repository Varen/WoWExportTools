﻿#version 330

uniform mat4 modelview_matrix;
uniform mat4 projection_matrix;
uniform mat4 rotation_matrix;

uniform vec3 firstPos;

in vec3 position;
in vec2 texCoord;
in vec4 color;

out vec2 TexCoord;
out vec4 VColor;

void main()
{
	gl_Position = projection_matrix * modelview_matrix * rotation_matrix* vec4(vec3(position.x - firstPos.x, position.y - firstPos.y, position.z), 1);
	TexCoord = texCoord;
	VColor = color;
}