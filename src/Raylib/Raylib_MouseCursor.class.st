"
Mouse cursor
"
Class {
	#name : #'Raylib_MouseCursor',
	#superclass : #'Raylib_Enums',
	#classVars : [
		'MOUSE_CURSOR_ARROW',
		'MOUSE_CURSOR_CROSSHAIR',
		'MOUSE_CURSOR_DEFAULT',
		'MOUSE_CURSOR_IBEAM',
		'MOUSE_CURSOR_NOT_ALLOWED',
		'MOUSE_CURSOR_POINTING_HAND',
		'MOUSE_CURSOR_RESIZE_ALL',
		'MOUSE_CURSOR_RESIZE_EW',
		'MOUSE_CURSOR_RESIZE_NESW',
		'MOUSE_CURSOR_RESIZE_NS',
		'MOUSE_CURSOR_RESIZE_NWSE'
	],
	#category : #Raylib
}

{ #category : #'enum declaration' }
Raylib_MouseCursor class >> enumDecl [
	"
    MOUSE_CURSOR_DEFAULT       = 0,     // Default pointer shape
    MOUSE_CURSOR_ARROW         = 1,     // Arrow shape
    MOUSE_CURSOR_IBEAM         = 2,     // Text writing cursor shape
    MOUSE_CURSOR_CROSSHAIR     = 3,     // Cross shape
    MOUSE_CURSOR_POINTING_HAND = 4,     // Pointing hand cursor
    MOUSE_CURSOR_RESIZE_EW     = 5,     // Horizontal resize/move arrow shape
    MOUSE_CURSOR_RESIZE_NS     = 6,     // Vertical resize/move arrow shape
    MOUSE_CURSOR_RESIZE_NWSE   = 7,     // Top-left to bottom-right diagonal resize/move arrow shape
    MOUSE_CURSOR_RESIZE_NESW   = 8,     // The top-right to bottom-left diagonal resize/move arrow shape
    MOUSE_CURSOR_RESIZE_ALL    = 9,     // The omni-directional resize/move cursor shape
    MOUSE_CURSOR_NOT_ALLOWED   = 10     // The operation-not-allowed shape
   "

	^ #(
        MOUSE_CURSOR_DEFAULT        0
        MOUSE_CURSOR_ARROW          1
        MOUSE_CURSOR_IBEAM          2
        MOUSE_CURSOR_CROSSHAIR      3
        MOUSE_CURSOR_POINTING_HAND  4
        MOUSE_CURSOR_RESIZE_EW      5
        MOUSE_CURSOR_RESIZE_NS      6
        MOUSE_CURSOR_RESIZE_NWSE    7
        MOUSE_CURSOR_RESIZE_NESW    8
        MOUSE_CURSOR_RESIZE_ALL     9
        MOUSE_CURSOR_NOT_ALLOWED    10
	   )
]
