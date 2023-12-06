"
I represent type aliases for FFI.
"
Class {
	#name : #'Raylib_TypeAliases',
	#superclass : #RaylibTypes,
	#classVars : [
		'Raylib_Quaternion',
		'Raylib_RenderTexture2D',
		'Raylib_Texture2D',
		'Raylib_TextureCubemap'
	],
	#category : #Raylib
}

{ #category : #'class initialization' }
Raylib_TypeAliases class >> initialize [

	Raylib_Texture2D := Raylib_Texture.
	Raylib_TextureCubemap := Raylib_Texture.
	Raylib_RenderTexture2D := Raylib_RenderTexture.
	Raylib_Quaternion := Raylib_Vector4
]
