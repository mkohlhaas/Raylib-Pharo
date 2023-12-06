"
Font type, defines generation method
"
Class {
	#name : #'Raylib_FontType',
	#superclass : #'Raylib_Enums',
	#category : #Raylib
}

{ #category : #'enum declaration' }
Raylib_FontType class >> enumDecl [
	"
    FONT_DEFAULT = 0,               // Default font generation, anti-aliased
    FONT_BITMAP,                    // Bitmap font generation, no anti-aliasing
    FONT_SDF                        // SDF font generation, requires external shader
   "

	^ #(  )
]
