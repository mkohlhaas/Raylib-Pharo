"
Camera system modes
"
Class {
	#name : #'Raylib_CameraMode',
	#superclass : #'Raylib_Enums',
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

	^ #(  )
]
