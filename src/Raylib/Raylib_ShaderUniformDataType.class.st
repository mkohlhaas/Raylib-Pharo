"
Shader uniform data type
"
Class {
	#name : #'Raylib_ShaderUniformDataType',
	#superclass : #'Raylib_Enums',
	#classVars : [
		'SHADER_UNIFORM_FLOAT',
		'SHADER_UNIFORM_INT',
		'SHADER_UNIFORM_IVEC2',
		'SHADER_UNIFORM_IVEC3',
		'SHADER_UNIFORM_IVEC4',
		'SHADER_UNIFORM_SAMPLER2D',
		'SHADER_UNIFORM_VEC2',
		'SHADER_UNIFORM_VEC3',
		'SHADER_UNIFORM_VEC4'
	],
	#category : #Raylib
}

{ #category : #'enum declaration' }
Raylib_ShaderUniformDataType class >> enumDecl [
	"
    SHADER_UNIFORM_FLOAT = 0,       // Shader uniform type: float
    SHADER_UNIFORM_VEC2,            // Shader uniform type: vec2 (2 float)
    SHADER_UNIFORM_VEC3,            // Shader uniform type: vec3 (3 float)
    SHADER_UNIFORM_VEC4,            // Shader uniform type: vec4 (4 float)
    SHADER_UNIFORM_INT,             // Shader uniform type: int
    SHADER_UNIFORM_IVEC2,           // Shader uniform type: ivec2 (2 int)
    SHADER_UNIFORM_IVEC3,           // Shader uniform type: ivec3 (3 int)
    SHADER_UNIFORM_IVEC4,           // Shader uniform type: ivec4 (4 int)
    SHADER_UNIFORM_SAMPLER2D        // Shader uniform type: sampler2d
   "

	^ #(
        SHADER_UNIFORM_FLOAT      0
        SHADER_UNIFORM_VEC2       1
        SHADER_UNIFORM_VEC3       2
        SHADER_UNIFORM_VEC4       3
        SHADER_UNIFORM_INT        4
        SHADER_UNIFORM_IVEC2      5
        SHADER_UNIFORM_IVEC3      6
        SHADER_UNIFORM_IVEC4      7
        SHADER_UNIFORM_SAMPLER2D  8
	   )
]
