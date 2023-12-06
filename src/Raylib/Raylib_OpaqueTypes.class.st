"
I represent opaque types for FFI.
"
Class {
	#name : #'Raylib_OpaqueTypes',
	#superclass : #'Raylib_Types',
	#classVars : [
		'AudioBuffer'
	],
	#category : #Raylib
}

{ #category : #'class initialization' }
Raylib_OpaqueTypes class >> initialize [

	AudioBuffer := #FFIOpaqueObject
]
