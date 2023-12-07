"
Gestures.
It could be used as flags to enable only some gestures.
"
Class {
	#name : #'Raylib_Gesture',
	#superclass : #'Raylib_Enums',
	#classVars : [
		'GESTURE_DOUBLETAP',
		'GESTURE_DRAG',
		'GESTURE_HOLD',
		'GESTURE_NONE',
		'GESTURE_PINCH_IN',
		'GESTURE_PINCH_OUT',
		'GESTURE_SWIPE_DOWN',
		'GESTURE_SWIPE_LEFT',
		'GESTURE_SWIPE_RIGHT',
		'GESTURE_SWIPE_UP',
		'GESTURE_TAP'
	],
	#category : #Raylib
}

{ #category : #'enum declaration' }
Raylib_Gesture class >> enumDecl [
	"
    GESTURE_NONE        = 0,        // No gesture
    GESTURE_TAP         = 1,        // Tap gesture
    GESTURE_DOUBLETAP   = 2,        // Double tap gesture
    GESTURE_HOLD        = 4,        // Hold gesture
    GESTURE_DRAG        = 8,        // Drag gesture
    GESTURE_SWIPE_RIGHT = 16,       // Swipe right gesture
    GESTURE_SWIPE_LEFT  = 32,       // Swipe left gesture
    GESTURE_SWIPE_UP    = 64,       // Swipe up gesture
    GESTURE_SWIPE_DOWN  = 128,      // Swipe down gesture
    GESTURE_PINCH_IN    = 256,      // Pinch in gesture
    GESTURE_PINCH_OUT   = 512       // Pinch out gesture
   "

	^ #(
        GESTURE_NONE        0
        GESTURE_TAP         1
        GESTURE_DOUBLETAP   2
        GESTURE_HOLD        4
        GESTURE_DRAG        8
        GESTURE_SWIPE_RIGHT 16
        GESTURE_SWIPE_LEFT  32
        GESTURE_SWIPE_UP    64
        GESTURE_SWIPE_DOWN  128
        GESTURE_PINCH_IN    256
        GESTURE_PINCH_OUT   512
	   )
]
