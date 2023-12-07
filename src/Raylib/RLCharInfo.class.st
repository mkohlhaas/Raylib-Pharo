"
value: Character value (Unicode)
offsetX: Character offset X when drawing
offsetY: Character offset Y when drawing
advanceX: Character advance position X
image: Character image data
"
Class {
	#name : #RLCharInfo,
	#superclass : #RLStructures,
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
RLCharInfo class >> fieldsDesc [

	^ #(
        int value;
        int offsetX;
        int offsetY;
        int advanceX;
        #RLImage image;
	   )
]

{ #category : #'accessing - structure variables' }
RLCharInfo >> advanceX [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_ADVANCEX
]

{ #category : #'accessing - structure variables' }
RLCharInfo >> advanceX: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_ADVANCEX put: anObject
]

{ #category : #'accessing - structure variables' }
RLCharInfo >> image [
	"This method was automatically generated"
	^ RLImage fromHandle: (handle referenceStructAt: OFFSET_IMAGE length: RLImage byteSize)
]

{ #category : #'accessing - structure variables' }
RLCharInfo >> image: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_IMAGE put: anObject getHandle length: RLImage byteSize
]

{ #category : #'accessing - structure variables' }
RLCharInfo >> offsetX [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_OFFSETX
]

{ #category : #'accessing - structure variables' }
RLCharInfo >> offsetX: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_OFFSETX put: anObject
]

{ #category : #'accessing - structure variables' }
RLCharInfo >> offsetY [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_OFFSETY
]

{ #category : #'accessing - structure variables' }
RLCharInfo >> offsetY: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_OFFSETY put: anObject
]

{ #category : #'accessing - structure variables' }
RLCharInfo >> value [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_VALUE
]

{ #category : #'accessing - structure variables' }
RLCharInfo >> value: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_VALUE put: anObject
]
