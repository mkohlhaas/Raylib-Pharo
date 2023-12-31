"
System/Window config flags.
Every bit registers one state (use it with bit masks).
By default all flags are set to 0.
"
Class {
	#name : #RLConfigFlags,
	#superclass : #RLEnums,
	#classVars : [
		'FLAG_FULLSCREEN_MODE',
		'FLAG_INTERLACED_HINT',
		'FLAG_MSAA_4X_HINT',
		'FLAG_VSYNC_HINT',
		'FLAG_WINDOW_ALWAYS_RUN',
		'FLAG_WINDOW_HIDDEN',
		'FLAG_WINDOW_HIGHDPI',
		'FLAG_WINDOW_MAXIMIZED',
		'FLAG_WINDOW_MINIMIZED',
		'FLAG_WINDOW_RESIZABLE',
		'FLAG_WINDOW_TOPMOST',
		'FLAG_WINDOW_TRANSPARENT',
		'FLAG_WINDOW_UNDECORATED',
		'FLAG_WINDOW_UNFOCUSED'
	],
	#category : #Raylib
}

{ #category : #'enum declaration' }
RLConfigFlags class >> enumDecl [
	"
    FLAG_VSYNC_HINT         = 0x00000040,   // Set to try enabling V-Sync on GPU
    FLAG_FULLSCREEN_MODE    = 0x00000002,   // Set to run program in fullscreen
    FLAG_WINDOW_RESIZABLE   = 0x00000004,   // Set to allow resizable window
    FLAG_WINDOW_UNDECORATED = 0x00000008,   // Set to disable window decoration (frame and buttons)
    FLAG_WINDOW_HIDDEN      = 0x00000080,   // Set to hide window
    FLAG_WINDOW_MINIMIZED   = 0x00000200,   // Set to minimize window (iconify)
    FLAG_WINDOW_MAXIMIZED   = 0x00000400,   // Set to maximize window (expanded to monitor)
    FLAG_WINDOW_UNFOCUSED   = 0x00000800,   // Set to window non focused
    FLAG_WINDOW_TOPMOST     = 0x00001000,   // Set to window always on top
    FLAG_WINDOW_ALWAYS_RUN  = 0x00000100,   // Set to allow windows running while minimized
    FLAG_WINDOW_TRANSPARENT = 0x00000010,   // Set to allow transparent framebuffer
    FLAG_WINDOW_HIGHDPI     = 0x00002000,   // Set to support HighDPI
    FLAG_MSAA_4X_HINT       = 0x00000020,   // Set to try enabling MSAA 4X
    FLAG_INTERLACED_HINT    = 0x00010000    // Set to try enabling interlaced video format (for V3D)
   "

	^ #(
        FLAG_VSYNC_HINT          16r00000040
        FLAG_FULLSCREEN_MODE     16r00000002
        FLAG_WINDOW_RESIZABLE    16r00000004
        FLAG_WINDOW_UNDECORATED  16r00000008
        FLAG_WINDOW_HIDDEN       16r00000080
        FLAG_WINDOW_MINIMIZED    16r00000200
        FLAG_WINDOW_MAXIMIZED    16r00000400
        FLAG_WINDOW_UNFOCUSED    16r00000800
        FLAG_WINDOW_TOPMOST      16r00001000
        FLAG_WINDOW_ALWAYS_RUN   16r00000100
        FLAG_WINDOW_TRANSPARENT  16r00000010
        FLAG_WINDOW_HIGHDPI      16r00002000
        FLAG_MSAA_4X_HINT        16r00000020
        FLAG_INTERLACED_HINT     16r00010000

	   )
]
