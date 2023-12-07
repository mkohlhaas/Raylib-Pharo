"
I represent opaque types for FFI.
"
Class {
	#name : #RLOpaqueTypes,
	#superclass : #RLTypes,
	#classVars : [
		'AudioBuffer'
	],
	#category : #Raylib
}

{ #category : #'class initialization' }
RLOpaqueTypes class >> initialize [

	AudioBuffer := #FFIOpaqueObject
]
