"
Shader attribute data types
"
Class {
	#name : #'Raylib_ShaderAttributeDataType',
	#superclass : #'Raylib_Enums',
	#category : #Raylib
}

{ #category : #'enum declaration' }
Raylib_ShaderAttributeDataType class >> enumDecl [
	"
    SHADER_ATTRIB_FLOAT = 0,        // Shader attribute type: float
    SHADER_ATTRIB_VEC2,             // Shader attribute type: vec2 (2 float)
    SHADER_ATTRIB_VEC3,             // Shader attribute type: vec3 (3 float)
    SHADER_ATTRIB_VEC4              // Shader attribute type: vec4 (4 float)
   "

	^ #(  )
]
