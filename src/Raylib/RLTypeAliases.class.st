"
I represent type aliases for FFI.
"
Class {
	#name : #RLTypeAliases,
	#superclass : #RLTypes,
	#classVars : [
		'RLQuaternion',
		'RLRenderTexture2D',
		'RLTexture2D',
		'RLTextureCubemap'
	],
	#category : #Raylib
}

{ #category : #'class initialization' }
RLTypeAliases class >> initialize [

	RLTexture2D := RLTexture.
	RLTextureCubemap := RLTexture.
	RLRenderTexture2D := RLRenderTexture.
	RLQuaternion := RLVector4
]
