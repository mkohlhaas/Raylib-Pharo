"
void *data;             // Image raw data
int width;              // Image base width
int height;             // Image base height
int mipmaps;            // Mipmap levels, 1 by default
int format;             // Data format (PixelFormat type)
"
Class {
	#name : #'Raylib_Image',
	#superclass : #'Raylib_Structures',
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
Raylib_Image class >> fieldsDesc [

	^ #(
        void *data;
        int width;
        int height;
        int mipmaps;
        int format;
      )
]

{ #category : #'accessing - structure variables' }
Raylib_Image >> data [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_DATA) type: ExternalType void asPointerType
]

{ #category : #'accessing - structure variables' }
Raylib_Image >> data: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_DATA put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
Raylib_Image >> format [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_FORMAT
]

{ #category : #'accessing - structure variables' }
Raylib_Image >> format: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_FORMAT put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_Image >> height [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_HEIGHT
]

{ #category : #'accessing - structure variables' }
Raylib_Image >> height: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_HEIGHT put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_Image >> mipmaps [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_MIPMAPS
]

{ #category : #'accessing - structure variables' }
Raylib_Image >> mipmaps: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_MIPMAPS put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_Image >> width [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_WIDTH
]

{ #category : #'accessing - structure variables' }
Raylib_Image >> width: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_WIDTH put: anObject
]
