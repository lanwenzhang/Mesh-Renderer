#version 460

#extension GL_ARB_separate_shader_objects:enable

layout(location = 0) in vec3 inPosition;
layout(location = 2) in vec2 inUV;

layout(location = 1) out vec2 outUV;


layout(binding = 0) uniform VPMatrices{
	
	mat4 mViewMatrix;
	mat4 mProjectionMatrix;

}vpUBO;


layout(binding = 1) uniform ObjectUniform{
	
	mat4 mModelMatrix;

}objectUBO;

void main(){

	gl_Position = vpUBO.mProjectionMatrix * vpUBO.mViewMatrix * objectUBO.mModelMatrix * vec4(inPosition, 1.0);

	outUV = inUV;
}