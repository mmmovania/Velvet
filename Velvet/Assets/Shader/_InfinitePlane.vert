#version 330

layout(location = 0) in vec4 aPos;
layout(location = 1) in vec3 aNormal;

uniform mat4 _View;
uniform mat4 _Projection;

out VS {
    vec3 nearPoint;
    vec3 farPoint;
    vec3 normal;
} vs;

vec3 UnprojectPoint(float x, float y, float z, mat4 _View, mat4 _Projection) {
    mat4 viewInv = inverse(_View);
    mat4 projInv = inverse(_Projection);
    vec4 unprojectedPoint =  viewInv * projInv * vec4(x, y, z, 1.0);
    return unprojectedPoint.xyz / unprojectedPoint.w;
}

void main()
{
    vs.nearPoint = UnprojectPoint(aPos.x, aPos.y, 0.0, _View, _Projection).xyz; // unprojecting on the near plane
    vs.farPoint = UnprojectPoint(aPos.x, aPos.y, 1.0, _View, _Projection).xyz; // unprojecting on the far plane
    vs.normal = aNormal;
	gl_Position = aPos;
}