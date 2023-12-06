"
Material map index
"
Class {
	#name : #'Raylib_MaterialMapIndex',
	#superclass : #'Raylib_Enums',
	#classVars : [
		'MATERIAL_MAP_ALBEDO',
		'MATERIAL_MAP_BRDG',
		'MATERIAL_MAP_CUBEMAP',
		'MATERIAL_MAP_EMISSION',
		'MATERIAL_MAP_HEIGHT',
		'MATERIAL_MAP_IRRADIANCE',
		'MATERIAL_MAP_METALNESS',
		'MATERIAL_MAP_NORMAL',
		'MATERIAL_MAP_OCCLUSION',
		'MATERIAL_MAP_PREFILTER',
		'MATERIAL_MAP_ROUGHNESS'
	],
	#category : #Raylib
}

{ #category : #'enum declaration' }
Raylib_MaterialMapIndex class >> enumDecl [
	"
    MATERIAL_MAP_ALBEDO    = 0,     // Albedo material (same as: MATERIAL_MAP_DIFFUSE)
    MATERIAL_MAP_METALNESS,         // Metalness material (same as: MATERIAL_MAP_SPECULAR)
    MATERIAL_MAP_NORMAL,            // Normal material
    MATERIAL_MAP_ROUGHNESS,         // Roughness material
    MATERIAL_MAP_OCCLUSION,         // Ambient occlusion material
    MATERIAL_MAP_EMISSION,          // Emission material
    MATERIAL_MAP_HEIGHT,            // Heightmap material
    MATERIAL_MAP_CUBEMAP,           // Cubemap material (NOTE: Uses GL_TEXTURE_CUBE_MAP)
    MATERIAL_MAP_IRRADIANCE,        // Irradiance material (NOTE: Uses GL_TEXTURE_CUBE_MAP)
    MATERIAL_MAP_PREFILTER,         // Prefilter material (NOTE: Uses GL_TEXTURE_CUBE_MAP)
    MATERIAL_MAP_BRDG               // Brdg material
   "

	^ #(
        MATERIAL_MAP_ALBEDO      0
        MATERIAL_MAP_METALNESS   1
        MATERIAL_MAP_NORMAL      2
        MATERIAL_MAP_ROUGHNESS   3
        MATERIAL_MAP_OCCLUSION   4
        MATERIAL_MAP_EMISSION    5
        MATERIAL_MAP_HEIGHT      6
        MATERIAL_MAP_CUBEMAP     7
        MATERIAL_MAP_IRRADIANCE  8
        MATERIAL_MAP_PREFILTER   9
        MATERIAL_MAP_BRDG        10
	   )
]
