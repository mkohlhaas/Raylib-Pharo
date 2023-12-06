"
Texture parameters: wrap mode
"
Class {
	#name : #'Raylib_TextureWrap',
	#superclass : #'Raylib_Enums',
	#classVars : [
		'TEXTURE_WRAP_CLAMP',
		'TEXTURE_WRAP_MIRROR_CLAMP',
		'TEXTURE_WRAP_MIRROR_REPEAT',
		'TEXTURE_WRAP_REPEAT'
	],
	#category : #Raylib
}

{ #category : #'enum declaration' }
Raylib_TextureWrap class >> enumDecl [
	"
    TEXTURE_WRAP_REPEAT = 0,                // Repeats texture in tiled mode
    TEXTURE_WRAP_CLAMP,                     // Clamps texture to edge pixel in tiled mode
    TEXTURE_WRAP_MIRROR_REPEAT,             // Mirrors and repeats the texture in tiled mode
    TEXTURE_WRAP_MIRROR_CLAMP               // Mirrors and clamps to border the texture in tiled mode
   "

	^ #(
        TEXTURE_WRAP_REPEAT         0
        TEXTURE_WRAP_CLAMP          1
        TEXTURE_WRAP_MIRROR_REPEAT  2
        TEXTURE_WRAP_MIRROR_CLAMP   3
	   )
]
