"
Color blending modes (pre-defined)
"
Class {
	#name : #'Raylib_BlendMode',
	#superclass : #'Raylib_Enums',
	#classVars : [
		'BLEND_ADDITIVE',
		'BLEND_ADD_COLORS',
		'BLEND_ALPHA',
		'BLEND_CUSTOM',
		'BLEND_MULTIPLIED',
		'BLEND_SUBTRACT_COLORS'
	],
	#category : #Raylib
}

{ #category : #'enum declaration' }
Raylib_BlendMode class >> enumDecl [
	"
    BLEND_ALPHA = 0,                // Blend textures considering alpha (default)
    BLEND_ADDITIVE,                 // Blend textures adding colors
    BLEND_MULTIPLIED,               // Blend textures multiplying colors
    BLEND_ADD_COLORS,               // Blend textures adding colors (alternative)
    BLEND_SUBTRACT_COLORS,          // Blend textures subtracting colors (alternative)
    BLEND_CUSTOM                    // Belnd textures using custom src/dst factors (use rlSetBlendMode())
   "

	^ #(
        BLEND_ALPHA            0
        BLEND_ADDITIVE         1
        BLEND_MULTIPLIED       2
        BLEND_ADD_COLORS       3
        BLEND_SUBTRACT_COLORS  4
        BLEND_CUSTOM           5
      )
]
