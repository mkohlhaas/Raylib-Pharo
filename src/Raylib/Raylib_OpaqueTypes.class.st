"
I represent opaque types for FFI.
"
Class {
	#name : #'Raylib_OpaqueTypes',
	#superclass : #RaylibTypes,
	#classVars : [
		'AudioBuffer'
	],
	#category : #Raylib
}

{ #category : #'class initialization' }
Raylib_OpaqueTypes class >> initialize [

	AudioBuffer := #FFIOpaqueObject
]
