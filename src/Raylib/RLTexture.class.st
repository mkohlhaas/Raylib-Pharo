"
id: OpenGL texture id
width: Texture base width
height: Texture base height
mipmaps: Mipmap levels, 1 by default
format: Data format (PixelFormat type)
"
Class {
	#name : #RLTexture,
	#superclass : #RLStructures,
	#classVars : [
		'OFFSET_FORMAT',
		'OFFSET_HEIGHT',
		'OFFSET_ID',
		'OFFSET_MIPMAPS',
		'OFFSET_WIDTH'
	],
	#category : #Raylib
}

{ #category : #'field definition' }
RLTexture class >> fieldsDesc [

	^ #(
        uint id;
        int width;
        int height;
        int mipmaps;
        int format;
	   )
]

{ #category : #'accessing - structure variables' }
RLTexture >> format [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_FORMAT
]

{ #category : #'accessing - structure variables' }
RLTexture >> format: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_FORMAT put: anObject
]

{ #category : #'accessing - structure variables' }
RLTexture >> height [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_HEIGHT
]

{ #category : #'accessing - structure variables' }
RLTexture >> height: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_HEIGHT put: anObject
]

{ #category : #'accessing - structure variables' }
RLTexture >> id [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_ID
]

{ #category : #'accessing - structure variables' }
RLTexture >> id: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_ID put: anObject
]

{ #category : #'accessing - structure variables' }
RLTexture >> mipmaps [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_MIPMAPS
]

{ #category : #'accessing - structure variables' }
RLTexture >> mipmaps: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_MIPMAPS put: anObject
]

{ #category : #'accessing - structure variables' }
RLTexture >> width [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_WIDTH
]

{ #category : #'accessing - structure variables' }
RLTexture >> width: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_WIDTH put: anObject
]
