"
offset: Camera offset (displacement from target)
target: Camera target (rotation and zoom origin)
rotation: Camera rotation in degrees
zoom: Camera zoom (scaling), should be 1.0f by default
"
Class {
	#name : #RLCamera2D,
	#superclass : #RLStructures,
	#classVars : [
		'OFFSET_OFFSET',
		'OFFSET_ROTATION',
		'OFFSET_TARGET',
		'OFFSET_ZOOM'
	],
	#category : #Raylib
}

{ #category : #'field definition' }
RLCamera2D class >> fieldsDesc [

	^ #(
        #RLVector2 offset;
        #RLVector2 target;
        float rotation;
        float zoom;
      )
]

{ #category : #'accessing - structure variables' }
RLCamera2D >> offset [
	"This method was automatically generated"
	^ RLVector2 fromHandle: (handle referenceStructAt: OFFSET_OFFSET length: RLVector2 byteSize)
]

{ #category : #'accessing - structure variables' }
RLCamera2D >> offset: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_OFFSET put: anObject getHandle length: RLVector2 byteSize
]

{ #category : #'accessing - structure variables' }
RLCamera2D >> rotation [
	"This method was automatically generated"
	^handle floatAt: OFFSET_ROTATION
]

{ #category : #'accessing - structure variables' }
RLCamera2D >> rotation: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_ROTATION put: anObject
]

{ #category : #'accessing - structure variables' }
RLCamera2D >> target [
	"This method was automatically generated"
	^ RLVector2 fromHandle: (handle referenceStructAt: OFFSET_TARGET length: RLVector2 byteSize)
]

{ #category : #'accessing - structure variables' }
RLCamera2D >> target: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_TARGET put: anObject getHandle length: RLVector2 byteSize
]

{ #category : #'accessing - structure variables' }
RLCamera2D >> zoom [
	"This method was automatically generated"
	^handle floatAt: OFFSET_ZOOM
]

{ #category : #'accessing - structure variables' }
RLCamera2D >> zoom: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_ZOOM put: anObject
]
