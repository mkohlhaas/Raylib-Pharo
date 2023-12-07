"
Vector2 offset;         // Camera offset (displacement from target)
Vector2 target;         // Camera target (rotation and zoom origin)
float rotation;         // Camera rotation in degrees
float zoom;             // Camera zoom (scaling), should be 1.0f by default
"
Class {
	#name : #'Raylib_Camera2D',
	#superclass : #'Raylib_Structures',
	#classVars : [
		'OFFSET_OFFSET',
		'OFFSET_ROTATION',
		'OFFSET_TARGET',
		'OFFSET_ZOOM'
	],
	#category : #Raylib
}

{ #category : #'field definition' }
Raylib_Camera2D class >> fieldsDesc [

	^ #(
        Raylib_Vector2 offset;
        Raylib_Vector2 target;
        float rotation;
        float zoom;
      )
]

{ #category : #'accessing - structure variables' }
Raylib_Camera2D >> offset [
	"This method was automatically generated"
	^ Raylib_Vector2 fromHandle: (handle referenceStructAt: OFFSET_OFFSET length: Raylib_Vector2 byteSize)
]

{ #category : #'accessing - structure variables' }
Raylib_Camera2D >> offset: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_OFFSET put: anObject getHandle length: Raylib_Vector2 byteSize
]

{ #category : #'accessing - structure variables' }
Raylib_Camera2D >> rotation [
	"This method was automatically generated"
	^handle floatAt: OFFSET_ROTATION
]

{ #category : #'accessing - structure variables' }
Raylib_Camera2D >> rotation: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_ROTATION put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_Camera2D >> target [
	"This method was automatically generated"
	^ Raylib_Vector2 fromHandle: (handle referenceStructAt: OFFSET_TARGET length: Raylib_Vector2 byteSize)
]

{ #category : #'accessing - structure variables' }
Raylib_Camera2D >> target: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_TARGET put: anObject getHandle length: Raylib_Vector2 byteSize
]

{ #category : #'accessing - structure variables' }
Raylib_Camera2D >> zoom [
	"This method was automatically generated"
	^handle floatAt: OFFSET_ZOOM
]

{ #category : #'accessing - structure variables' }
Raylib_Camera2D >> zoom: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_ZOOM put: anObject
]
