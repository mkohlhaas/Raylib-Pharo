"
Texture parameters: filter mode.
Filtering considers mipmaps if available in the texture.
Filter is accordingly set for minification and magnification.

"
Class {
	#name : #'Raylib_TextureFilter',
	#superclass : #'Raylib_Enums',
	#classVars : [
		'TEXTURE_FILTER_ANISOTROPIC_16X',
		'TEXTURE_FILTER_ANISOTROPIC_4X',
		'TEXTURE_FILTER_ANISOTROPIC_8X',
		'TEXTURE_FILTER_BILINEAR',
		'TEXTURE_FILTER_POINT',
		'TEXTURE_FILTER_TRILINEAR'
	],
	#category : #Raylib
}

{ #category : #'enum declaration' }
Raylib_TextureFilter class >> enumDecl [
	"
    TEXTURE_FILTER_POINT = 0,               // No filter, just pixel aproximation
    TEXTURE_FILTER_BILINEAR,                // Linear filtering
    TEXTURE_FILTER_TRILINEAR,               // Trilinear filtering (linear with mipmaps)
    TEXTURE_FILTER_ANISOTROPIC_4X,          // Anisotropic filtering 4x
    TEXTURE_FILTER_ANISOTROPIC_8X,          // Anisotropic filtering 8x
    TEXTURE_FILTER_ANISOTROPIC_16X,         // Anisotropic filtering 16x
   "

	^ #(
        TEXTURE_FILTER_POINT            0
        TEXTURE_FILTER_BILINEAR         1
        TEXTURE_FILTER_TRILINEAR        2
        TEXTURE_FILTER_ANISOTROPIC_4X   3
        TEXTURE_FILTER_ANISOTROPIC_8X   4
        TEXTURE_FILTER_ANISOTROPIC_16X  5
	   )
]
