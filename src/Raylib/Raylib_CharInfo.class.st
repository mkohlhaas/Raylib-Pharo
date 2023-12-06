"
int value;              // Character value (Unicode)
int offsetX;            // Character offset X when drawing
int offsetY;            // Character offset Y when drawing
int advanceX;           // Character advance position X
Image image;            // Character image data

"
Class {
	#name : #'Raylib_CharInfo',
	#superclass : #RaylibStructures,
	#classVars : [
		'OFFSET_ADVANCEX',
		'OFFSET_IMAGE',
		'OFFSET_OFFSETX',
		'OFFSET_OFFSETY',
		'OFFSET_VALUE'
	],
	#category : #Raylib
}

{ #category : #'field definition' }
Raylib_CharInfo class >> fieldsDesc [

	^ #( 
        int value;
        int offsetX;
        int offsetY;
        int advanceX;
        Raylib_Image image;
	   )
]

{ #category : #'accessing - structure variables' }
Raylib_CharInfo >> advanceX [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_ADVANCEX
]

{ #category : #'accessing - structure variables' }
Raylib_CharInfo >> advanceX: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_ADVANCEX put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_CharInfo >> image [
	"This method was automatically generated"
	^ Raylib_Image fromHandle: (handle referenceStructAt: OFFSET_IMAGE length: Raylib_Image byteSize)
]

{ #category : #'accessing - structure variables' }
Raylib_CharInfo >> image: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_IMAGE put: anObject getHandle length: Raylib_Image byteSize
]

{ #category : #'accessing - structure variables' }
Raylib_CharInfo >> offsetX [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_OFFSETX
]

{ #category : #'accessing - structure variables' }
Raylib_CharInfo >> offsetX: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_OFFSETX put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_CharInfo >> offsetY [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_OFFSETY
]

{ #category : #'accessing - structure variables' }
Raylib_CharInfo >> offsetY: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_OFFSETY put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_CharInfo >> value [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_VALUE
]

{ #category : #'accessing - structure variables' }
Raylib_CharInfo >> value: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_VALUE put: anObject
]
