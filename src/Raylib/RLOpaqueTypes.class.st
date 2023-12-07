"
I represent opaque types for FFI.
"
Class {
	#name : #RLOpaqueTypes,
	#superclass : #RLTypes,
	#classVars : [
		'RLAudioBuffer'
	],
	#category : #Raylib
}

{ #category : #'class initialization' }
RLOpaqueTypes class >> initialize [

	RLAudioBuffer := #FFIOpaqueObject
]
