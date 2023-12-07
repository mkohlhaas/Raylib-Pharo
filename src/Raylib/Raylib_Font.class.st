"
baseSize: Base size (default chars height)
charsCount: Number of characters
charsPadding: Padding around the chars
texture: Characters texture atlas
recs: Characters rectangles in texture
chars: Characters info data
"
Class {
	#name : #'Raylib_Font',
	#superclass : #'Raylib_Structures',
	#classVars : [
		'OFFSET_BASESIZE',
		'OFFSET_CHARS',
		'OFFSET_CHARSCOUNT',
		'OFFSET_CHARSPADDING',
		'OFFSET_RECS',
		'OFFSET_TEXTURE'
	],
	#category : #Raylib
}

{ #category : #'field definition' }
Raylib_Font class >> fieldsDesc [

	^ #(
        int baseSize;
        int charsCount;
        int charsPadding;
        Raylib_Texture2D texture;
        Raylib_Rectangle *recs;
        Raylib_CharInfo *chars;
	   )
]

{ #category : #'accessing - structure variables' }
Raylib_Font >> baseSize [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_BASESIZE
]

{ #category : #'accessing - structure variables' }
Raylib_Font >> baseSize: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_BASESIZE put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_Font >> chars [
	"This method was automatically generated"
	^Raylib_CharInfo fromHandle: (handle pointerAt: OFFSET_CHARS)
]

{ #category : #'accessing - structure variables' }
Raylib_Font >> chars: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_CHARS put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
Raylib_Font >> charsCount [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_CHARSCOUNT
]

{ #category : #'accessing - structure variables' }
Raylib_Font >> charsCount: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_CHARSCOUNT put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_Font >> charsPadding [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_CHARSPADDING
]

{ #category : #'accessing - structure variables' }
Raylib_Font >> charsPadding: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_CHARSPADDING put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_Font >> recs [
	"This method was automatically generated"
	^Raylib_Rectangle fromHandle: (handle pointerAt: OFFSET_RECS)
]

{ #category : #'accessing - structure variables' }
Raylib_Font >> recs: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_RECS put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
Raylib_Font >> texture [
	"This method was automatically generated"
	^ Raylib_Texture2D fromHandle: (handle referenceStructAt: OFFSET_TEXTURE length: Raylib_Texture2D byteSize)
]

{ #category : #'accessing - structure variables' }
Raylib_Font >> texture: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_TEXTURE put: anObject getHandle length: Raylib_Texture2D byteSize
]
