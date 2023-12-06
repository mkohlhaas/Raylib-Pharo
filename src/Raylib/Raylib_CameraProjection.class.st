"
Camera projection
"
Class {
	#name : #'Raylib_CameraProjection',
	#superclass : #'Raylib_Enums',
	#classVars : [
		'CAMERA_ORTHOGRAPHIC',
		'CAMERA_PERSPECTIVE'
	],
	#category : #Raylib
}

{ #category : #'enum declaration' }
Raylib_CameraProjection class >> enumDecl [
	"
    CAMERA_PERSPECTIVE = 0,         // Perspective projection
    CAMERA_ORTHOGRAPHIC             // Orthographic projection
   "

	^ #(
        CAMERA_PERSPECTIVE     0
        CAMERA_ORTHOGRAPHIC    1
	   )
]
