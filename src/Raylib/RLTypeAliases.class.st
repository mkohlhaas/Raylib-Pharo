"
I represent type aliases for FFI.
"
Class {
	#name : #RLTypeAliases,
	#superclass : #RLTypes,
	#classVars : [
		'Raylib_Quaternion',
		'Raylib_RenderTexture2D',
		'Raylib_Texture2D',
		'Raylib_TextureCubemap'
	],
	#category : #Raylib
}

{ #category : #'class initialization' }
RLTypeAliases class >> initialize [

	Raylib_Texture2D := RLTexture.
	Raylib_TextureCubemap := RLTexture.
	Raylib_RenderTexture2D := RLRenderTexture.
	Raylib_Quaternion := RLVector4
]
