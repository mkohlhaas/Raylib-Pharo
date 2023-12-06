"
Color blending modes (pre-defined)
"
Class {
	#name : #'Raylib_BlendMode',
	#superclass : #'Raylib_Enums',
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

	^ #(  )
]