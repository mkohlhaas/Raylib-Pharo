"
I provide library names for the three main desktop platforms (Linux, MacOS, Windows).
"
Class {
	#name : #RLLib,
	#superclass : #FFILibrary,
	#category : #Raylib
}

{ #category : #'accessing - platform' }
RLLib >> macModuleName [

	^ 'libraylib.dylib'
]

{ #category : #accessing }
RLLib >> runner [

	^ TFMainThreadRunner uniqueInstance
]

{ #category : #'accessing - platform' }
RLLib >> unixModuleName [

	^ 'libraylib.so'
]

{ #category : #'accessing - platform' }
RLLib >> win32ModuleName [

	^ 'raylib.dll'
]
