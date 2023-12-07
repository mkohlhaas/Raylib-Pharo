"
data: Image raw data
width: Image base width
height: Image base height
mipmaps: Mipmap levels, 1 by default
format: Data format (PixelFormat type)
"
Class {
	#name : #RLImage,
	#superclass : #RLStructures,
	#classVars : [
		'OFFSET_DATA',
		'OFFSET_FORMAT',
		'OFFSET_HEIGHT',
		'OFFSET_MIPMAPS',
		'OFFSET_WIDTH'
	],
	#category : #Raylib
}

{ #category : #'field definition' }
RLImage class >> fieldsDesc [

	^ #(
        void *data;
        int width;
        int height;
        int mipmaps;
        int format;
      )
]

{ #category : #'accessing - structure variables' }
RLImage >> data [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_DATA) type: ExternalType void asPointerType
]

{ #category : #'accessing - structure variables' }
RLImage >> data: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_DATA put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
RLImage >> format [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_FORMAT
]

{ #category : #'accessing - structure variables' }
RLImage >> format: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_FORMAT put: anObject
]

{ #category : #'accessing - structure variables' }
RLImage >> height [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_HEIGHT
]

{ #category : #'accessing - structure variables' }
RLImage >> height: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_HEIGHT put: anObject
]

{ #category : #'accessing - structure variables' }
RLImage >> mipmaps [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_MIPMAPS
]

{ #category : #'accessing - structure variables' }
RLImage >> mipmaps: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_MIPMAPS put: anObject
]

{ #category : #'accessing - structure variables' }
RLImage >> width [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_WIDTH
]

{ #category : #'accessing - structure variables' }
RLImage >> width: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_WIDTH put: anObject
]
