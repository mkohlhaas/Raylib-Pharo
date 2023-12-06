"
unsigned int id;        // OpenGL texture id
int width;              // Texture base width
int height;             // Texture base height
int mipmaps;            // Mipmap levels, 1 by default
int format;             // Data format (PixelFormat type)

"
Class {
	#name : #'Raylib_Texture',
	#superclass : #'Raylib_Structures',
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
Raylib_Texture class >> fieldsDesc [

	^ #(
        uint id;
        int width;
        int height;
        int mipmaps;
        int format;
	   )
]

{ #category : #'accessing - structure variables' }
Raylib_Texture >> format [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_FORMAT
]

{ #category : #'accessing - structure variables' }
Raylib_Texture >> format: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_FORMAT put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_Texture >> height [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_HEIGHT
]

{ #category : #'accessing - structure variables' }
Raylib_Texture >> height: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_HEIGHT put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_Texture >> id [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_ID
]

{ #category : #'accessing - structure variables' }
Raylib_Texture >> id: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_ID put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_Texture >> mipmaps [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_MIPMAPS
]

{ #category : #'accessing - structure variables' }
Raylib_Texture >> mipmaps: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_MIPMAPS put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_Texture >> width [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_WIDTH
]

{ #category : #'accessing - structure variables' }
Raylib_Texture >> width: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_WIDTH put: anObject
]
