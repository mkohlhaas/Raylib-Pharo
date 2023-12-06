"
Mouse buttons
"
Class {
	#name : #'Raylib_MouseButton',
	#superclass : #'Raylib_Enums',
	#classVars : [
		'MOUSE_BUTTON_BACK',
		'MOUSE_BUTTON_EXTRA',
		'MOUSE_BUTTON_FORWARD',
		'MOUSE_BUTTON_LEFT',
		'MOUSE_BUTTON_MIDDLE',
		'MOUSE_BUTTON_RIGHT',
		'MOUSE_BUTTON_SIDE'
	],
	#category : #Raylib
}

{ #category : #'enum declaration' }
Raylib_MouseButton class >> enumDecl [
	"
    MOUSE_BUTTON_LEFT    = 0,       // Mouse button left
    MOUSE_BUTTON_RIGHT   = 1,       // Mouse button right
    MOUSE_BUTTON_MIDDLE  = 2,       // Mouse button middle (pressed wheel)
    MOUSE_BUTTON_SIDE    = 3,       // Mouse button side (advanced mouse device)
    MOUSE_BUTTON_EXTRA   = 4,       // Mouse button extra (advanced mouse device)
    MOUSE_BUTTON_FORWARD = 5,       // Mouse button fordward (advanced mouse device)
    MOUSE_BUTTON_BACK    = 6,       // Mouse button back (advanced mouse device)
   "

	^ #(
        MOUSE_BUTTON_LEFT     0
        MOUSE_BUTTON_RIGHT    1
        MOUSE_BUTTON_MIDDLE   2
        MOUSE_BUTTON_SIDE     3
        MOUSE_BUTTON_EXTRA    4
        MOUSE_BUTTON_FORWARD  5
        MOUSE_BUTTON_BACK     6
	   )
]
