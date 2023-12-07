"
Camera projection
"
Class {
	#name : #RLCameraProjection,
	#superclass : #RLEnums,
	#classVars : [
		'CAMERA_ORTHOGRAPHIC',
		'CAMERA_PERSPECTIVE'
	],
	#category : #Raylib
}

{ #category : #'enum declaration' }
RLCameraProjection class >> enumDecl [
	"
    CAMERA_PERSPECTIVE = 0,         // Perspective projection
    CAMERA_ORTHOGRAPHIC             // Orthographic projection
   "

	^ #(
        CAMERA_PERSPECTIVE     0
        CAMERA_ORTHOGRAPHIC    1
	   )
]
