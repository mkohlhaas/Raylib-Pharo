"
I provide library names for the three main desktop platforms (Linux, MacOS, Windows).
"
Class {
	#name : #'Raylib_Lib',
	#superclass : #FFILibrary,
	#category : #Raylib
}

{ #category : #'accessing - platform' }
Raylib_Lib >> macModuleName [

	^ 'libraylib.dylib'
]

{ #category : #'accessing - platform' }
Raylib_Lib >> unixModuleName [

	^ 'libraylib.so'
]

{ #category : #'accessing - platform' }
Raylib_Lib >> win32ModuleName [

	^ 'raylib.dll'
]
