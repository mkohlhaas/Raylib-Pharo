"
Shader attribute data types
"
Class {
	#name : #RLShaderAttributeDataType,
	#superclass : #RLEnums,
	#classVars : [
		'SHADER_ATTRIB_FLOAT',
		'SHADER_ATTRIB_VEC2',
		'SHADER_ATTRIB_VEC3',
		'SHADER_ATTRIB_VEC4'
	],
	#category : #Raylib
}

{ #category : #'enum declaration' }
RLShaderAttributeDataType class >> enumDecl [
	"
    SHADER_ATTRIB_FLOAT = 0,        // Shader attribute type: float
    SHADER_ATTRIB_VEC2,             // Shader attribute type: vec2 (2 float)
    SHADER_ATTRIB_VEC3,             // Shader attribute type: vec3 (3 float)
    SHADER_ATTRIB_VEC4              // Shader attribute type: vec4 (4 float)
   "

	^ #(
        SHADER_ATTRIB_FLOAT  0
        SHADER_ATTRIB_VEC2   1
        SHADER_ATTRIB_VEC3   2
        SHADER_ATTRIB_VEC4   3
	   )
]
