#version 450
#extension GL_NV_geometry_shader_passthrough : require

layout(triangles) in;
// No output primitive layout qualifiers required.

// Redeclare gl_PerVertex to pass through "gl_Position".
layout(passthrough) in gl_PerVertex {
    vec4 gl_Position;
};

// Declare "Inputs" with "passthrough" to automatically copy members.
layout(passthrough) in Inputs {
vec2 texcoord;
vec4 baseColor;
};

// No output block declaration required.

void main()
{
    // The shader simply passthrough the inputs to output
}