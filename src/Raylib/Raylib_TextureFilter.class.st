"
Texture parameters: filter mode.
Filtering considers mipmaps if available in the texture.
Filter is accordingly set for minification and magnification.

"
Class {
	#name : #'Raylib_TextureFilter',
	#superclass : #'Raylib_Enums',
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

	^ #(  )
]
