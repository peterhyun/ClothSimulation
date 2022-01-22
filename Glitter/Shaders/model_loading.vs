#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec2 uv_Coord;
layout (location = 2) in vec3 aNormal;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

out vec3 worldNormal;

void main()
{
    gl_Position = projection * view * model * vec4(aPos, 1.0);
    worldNormal = mat3(transpose(inverse(model))) * aNormal;
}
