"
Font type, defines generation method
"
Class {
	#name : #'Raylib_FontType',
	#superclass : #'Raylib_Enums',
	#classVars : [
		'FONT_BITMAP',
		'FONT_DEFAULT',
		'FONT_SDF'
	],
	#category : #Raylib
}

{ #category : #'enum declaration' }
Raylib_FontType class >> enumDecl [
	"
    FONT_DEFAULT = 0,               // Default font generation, anti-aliased
    FONT_BITMAP,                    // Bitmap font generation, no anti-aliasing
    FONT_SDF                        // SDF font generation, requires external shader
   "

	^ #(
        FONT_DEFAULT  0
        FONT_BITMAP   1
        FONT_SDF      2
	   )
]
