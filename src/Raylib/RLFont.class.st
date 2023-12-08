"
baseSize: Base size (default chars height)
charsCount: Number of characters
charsPadding: Padding around the chars
texture: Characters texture atlas
recs: Characters rectangles in texture
chars: Characters info data
"
Class {
	#name : #RLFont,
	#superclass : #RLStructures,
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
RLFont class >> fieldsDesc [

	^ #(
        int baseSize;
        int charsCount;
        int charsPadding;
        RLTexture2D texture;
        RLRectangle *recs;
        RLCharInfo *chars;
	   )
]

{ #category : #'accessing - structure variables' }
RLFont >> baseSize [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_BASESIZE
]

{ #category : #'accessing - structure variables' }
RLFont >> baseSize: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_BASESIZE put: anObject
]

{ #category : #'accessing - structure variables' }
RLFont >> chars [
	"This method was automatically generated"
	^RLCharInfo fromHandle: (handle pointerAt: OFFSET_CHARS)
]

{ #category : #'accessing - structure variables' }
RLFont >> chars: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_CHARS put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
RLFont >> charsCount [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_CHARSCOUNT
]

{ #category : #'accessing - structure variables' }
RLFont >> charsCount: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_CHARSCOUNT put: anObject
]

{ #category : #'accessing - structure variables' }
RLFont >> charsPadding [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_CHARSPADDING
]

{ #category : #'accessing - structure variables' }
RLFont >> charsPadding: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_CHARSPADDING put: anObject
]

{ #category : #'accessing - structure variables' }
RLFont >> recs [
	"This method was automatically generated"
	^RLRectangle fromHandle: (handle pointerAt: OFFSET_RECS)
]

{ #category : #'accessing - structure variables' }
RLFont >> recs: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_RECS put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
RLFont >> texture [
	"This method was automatically generated"
	^ RLTexture fromHandle: (handle referenceStructAt: OFFSET_TEXTURE length: RLTexture byteSize)
]

{ #category : #'accessing - structure variables' }
RLFont >> texture: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_TEXTURE put: anObject getHandle length: RLTexture byteSize
]
