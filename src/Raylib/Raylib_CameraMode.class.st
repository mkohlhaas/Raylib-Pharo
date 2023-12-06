"
Camera system modes
"
Class {
	#name : #'Raylib_CameraMode',
	#superclass : #'Raylib_Enums',
	#classVars : [
		'CAMERA_CUSTOM',
		'CAMERA_FIRST_PERSON',
		'CAMERA_FREE',
		'CAMERA_ORBITAL',
		'CAMERA_THIRD_PERSON'
	],
	#category : #Raylib
}

{ #category : #'enum declaration' }
Raylib_CameraMode class >> enumDecl [
	"
    CAMERA_CUSTOM = 0,              // Custom camera
    CAMERA_FREE,                    // Free camera
    CAMERA_ORBITAL,                 // Orbital camera
    CAMERA_FIRST_PERSON,            // First person camera
    CAMERA_THIRD_PERSON             // Third person camera
   "

	^ #(
        CAMERA_CUSTOM          0
        CAMERA_FREE            1
        CAMERA_ORBITAL         2
        CAMERA_FIRST_PERSON    3
        CAMERA_THIRD_PERSON    4
      )
]
