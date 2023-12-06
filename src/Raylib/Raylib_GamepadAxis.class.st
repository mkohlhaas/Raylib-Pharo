"
Gamepad axis
"
Class {
	#name : #'Raylib_GamepadAxis',
	#superclass : #'Raylib_Enums',
	#classVars : [
		'GAMEPAD_AXIS_LEFT_TRIGGER',
		'GAMEPAD_AXIS_LEFT_X',
		'GAMEPAD_AXIS_LEFT_Y',
		'GAMEPAD_AXIS_RIGHT_TRIGGER',
		'GAMEPAD_AXIS_RIGHT_X',
		'GAMEPAD_AXIS_RIGHT_Y'
	],
	#category : #Raylib
}

{ #category : #'enum declaration' }
Raylib_GamepadAxis class >> enumDecl [
	"
    GAMEPAD_AXIS_LEFT_X        = 0,     // Gamepad left stick X axis
    GAMEPAD_AXIS_LEFT_Y        = 1,     // Gamepad left stick Y axis
    GAMEPAD_AXIS_RIGHT_X       = 2,     // Gamepad right stick X axis
    GAMEPAD_AXIS_RIGHT_Y       = 3,     // Gamepad right stick Y axis
    GAMEPAD_AXIS_LEFT_TRIGGER  = 4,     // Gamepad back trigger left, pressure level: [1..-1]
    GAMEPAD_AXIS_RIGHT_TRIGGER = 5      // Gamepad back trigger right, pressure level: [1..-1]
   "

	^ #(
        GAMEPAD_AXIS_LEFT_X         0
        GAMEPAD_AXIS_LEFT_Y         1
        GAMEPAD_AXIS_RIGHT_X        2
        GAMEPAD_AXIS_RIGHT_Y        3
        GAMEPAD_AXIS_LEFT_TRIGGER   4
        GAMEPAD_AXIS_RIGHT_TRIGGER  5
	   )
]
