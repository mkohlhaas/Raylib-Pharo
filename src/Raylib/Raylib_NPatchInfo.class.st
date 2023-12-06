"
Rectangle source;       // Texture source rectangle
int left;               // Left border offset
int top;                // Top border offset
int right;              // Right border offset
int bottom;             // Bottom border offset
int layout;             // Layout of the n-patch: 3x3, 1x3 or 3x1

"
Class {
	#name : #'Raylib_NPatchInfo',
	#superclass : #RaylibStructures,
	#classVars : [
		'OFFSET_BOTTOM',
		'OFFSET_LAYOUT',
		'OFFSET_LEFT',
		'OFFSET_RIGHT',
		'OFFSET_SOURCE',
		'OFFSET_TOP'
	],
	#category : #Raylib
}

{ #category : #'field definition' }
Raylib_NPatchInfo class >> fieldsDesc [

	^ #(
        Raylib_Rectangle source;
        int left;
        int top;
        int right;
        int bottom;
        int layout;
	   )
]

{ #category : #'accessing - structure variables' }
Raylib_NPatchInfo >> bottom [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_BOTTOM
]

{ #category : #'accessing - structure variables' }
Raylib_NPatchInfo >> bottom: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_BOTTOM put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_NPatchInfo >> layout [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_LAYOUT
]

{ #category : #'accessing - structure variables' }
Raylib_NPatchInfo >> layout: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_LAYOUT put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_NPatchInfo >> left [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_LEFT
]

{ #category : #'accessing - structure variables' }
Raylib_NPatchInfo >> left: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_LEFT put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_NPatchInfo >> right [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_RIGHT
]

{ #category : #'accessing - structure variables' }
Raylib_NPatchInfo >> right: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_RIGHT put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_NPatchInfo >> source [
	"This method was automatically generated"
	^ Raylib_Rectangle fromHandle: (handle referenceStructAt: OFFSET_SOURCE length: Raylib_Rectangle byteSize)
]

{ #category : #'accessing - structure variables' }
Raylib_NPatchInfo >> source: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_SOURCE put: anObject getHandle length: Raylib_Rectangle byteSize
]

{ #category : #'accessing - structure variables' }
Raylib_NPatchInfo >> top [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_TOP
]

{ #category : #'accessing - structure variables' }
Raylib_NPatchInfo >> top: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_TOP put: anObject
]
