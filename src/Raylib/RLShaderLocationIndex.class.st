"
Shader location index
"
Class {
	#name : #RLShaderLocationIndex,
	#superclass : #RLEnums,
	#classVars : [
		'SHADER_LOC_COLOR_AMBIENT',
		'SHADER_LOC_COLOR_DIFFUSE',
		'SHADER_LOC_COLOR_SPECULAR',
		'SHADER_LOC_MAP_ALBEDO',
		'SHADER_LOC_MAP_BRDF',
		'SHADER_LOC_MAP_CUBEMAP',
		'SHADER_LOC_MAP_EMISSION',
		'SHADER_LOC_MAP_HEIGHT',
		'SHADER_LOC_MAP_IRRADIANCE',
		'SHADER_LOC_MAP_METALNESS',
		'SHADER_LOC_MAP_NORMAL',
		'SHADER_LOC_MAP_OCCLUSION',
		'SHADER_LOC_MAP_PREFILTER',
		'SHADER_LOC_MAP_ROUGHNESS',
		'SHADER_LOC_MATRIX_MODEL',
		'SHADER_LOC_MATRIX_MVP',
		'SHADER_LOC_MATRIX_NORMAL',
		'SHADER_LOC_MATRIX_PROJECTION',
		'SHADER_LOC_MATRIX_VIEW',
		'SHADER_LOC_VECTOR_VIEW',
		'SHADER_LOC_VERTEX_COLOR',
		'SHADER_LOC_VERTEX_NORMAL',
		'SHADER_LOC_VERTEX_POSITION',
		'SHADER_LOC_VERTEX_TANGENT',
		'SHADER_LOC_VERTEX_TEXCOORD01',
		'SHADER_LOC_VERTEX_TEXCOORD02'
	],
	#category : #Raylib
}

{ #category : #'enum declaration' }
RLShaderLocationIndex class >> enumDecl [
	"
    SHADER_LOC_VERTEX_POSITION = 0, // Shader location: vertex attribute: position
    SHADER_LOC_VERTEX_TEXCOORD01,   // Shader location: vertex attribute: texcoord01
    SHADER_LOC_VERTEX_TEXCOORD02,   // Shader location: vertex attribute: texcoord02
    SHADER_LOC_VERTEX_NORMAL,       // Shader location: vertex attribute: normal
    SHADER_LOC_VERTEX_TANGENT,      // Shader location: vertex attribute: tangent
    SHADER_LOC_VERTEX_COLOR,        // Shader location: vertex attribute: color
    SHADER_LOC_MATRIX_MVP,          // Shader location: matrix uniform: model-view-projection
    SHADER_LOC_MATRIX_VIEW,         // Shader location: matrix uniform: view (camera transform)
    SHADER_LOC_MATRIX_PROJECTION,   // Shader location: matrix uniform: projection
    SHADER_LOC_MATRIX_MODEL,        // Shader location: matrix uniform: model (transform)
    SHADER_LOC_MATRIX_NORMAL,       // Shader location: matrix uniform: normal
    SHADER_LOC_VECTOR_VIEW,         // Shader location: vector uniform: view
    SHADER_LOC_COLOR_DIFFUSE,       // Shader location: vector uniform: diffuse color
    SHADER_LOC_COLOR_SPECULAR,      // Shader location: vector uniform: specular color
    SHADER_LOC_COLOR_AMBIENT,       // Shader location: vector uniform: ambient color
    SHADER_LOC_MAP_ALBEDO,          // Shader location: sampler2d texture: albedo (same as: SHADER_LOC_MAP_DIFFUSE)
    SHADER_LOC_MAP_METALNESS,       // Shader location: sampler2d texture: metalness (same as: SHADER_LOC_MAP_SPECULAR)
    SHADER_LOC_MAP_NORMAL,          // Shader location: sampler2d texture: normal
    SHADER_LOC_MAP_ROUGHNESS,       // Shader location: sampler2d texture: roughness
    SHADER_LOC_MAP_OCCLUSION,       // Shader location: sampler2d texture: occlusion
    SHADER_LOC_MAP_EMISSION,        // Shader location: sampler2d texture: emission
    SHADER_LOC_MAP_HEIGHT,          // Shader location: sampler2d texture: height
    SHADER_LOC_MAP_CUBEMAP,         // Shader location: samplerCube texture: cubemap
    SHADER_LOC_MAP_IRRADIANCE,      // Shader location: samplerCube texture: irradiance
    SHADER_LOC_MAP_PREFILTER,       // Shader location: samplerCube texture: prefilter
    SHADER_LOC_MAP_BRDF             // Shader location: sampler2d texture: brdf
   "

	^ #(
        SHADER_LOC_VERTEX_POSITION    0
        SHADER_LOC_VERTEX_TEXCOORD01  1
        SHADER_LOC_VERTEX_TEXCOORD02  2
        SHADER_LOC_VERTEX_NORMAL      3
        SHADER_LOC_VERTEX_TANGENT     4
        SHADER_LOC_VERTEX_COLOR       5
        SHADER_LOC_MATRIX_MVP         6
        SHADER_LOC_MATRIX_VIEW        7
        SHADER_LOC_MATRIX_PROJECTION  8
        SHADER_LOC_MATRIX_MODEL       9
        SHADER_LOC_MATRIX_NORMAL      10
        SHADER_LOC_VECTOR_VIEW        11
        SHADER_LOC_COLOR_DIFFUSE      12
        SHADER_LOC_COLOR_SPECULAR     13
        SHADER_LOC_COLOR_AMBIENT      14
        SHADER_LOC_MAP_ALBEDO         15
        SHADER_LOC_MAP_METALNESS      16
        SHADER_LOC_MAP_NORMAL         17
        SHADER_LOC_MAP_ROUGHNESS      18
        SHADER_LOC_MAP_OCCLUSION      19
        SHADER_LOC_MAP_EMISSION       20
        SHADER_LOC_MAP_HEIGHT         21
        SHADER_LOC_MAP_CUBEMAP        22
        SHADER_LOC_MAP_IRRADIANCE     23
        SHADER_LOC_MAP_PREFILTER      24
        SHADER_LOC_MAP_BRDF           25
	   )
]
