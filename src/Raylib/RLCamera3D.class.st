"
position: Camera position
target: Camera target it looks-at
up: Camera up vector (rotation over its axis)
fovy: Camera field-of-view apperture in Y (degrees) in perspective, used as near plane width in orthographic
projection: Camera projection: CAMERA_PERSPECTIVE or CAMERA_ORTHOGRAPHIC
"
Class {
	#name : #RLCamera3D,
	#superclass : #RLStructures,
	#classVars : [
		'OFFSET_FOVY',
		'OFFSET_POSITION',
		'OFFSET_PROJECTION',
		'OFFSET_TARGET',
		'OFFSET_UP'
	],
	#category : #Raylib
}

{ #category : #'field definition' }
RLCamera3D class >> fieldsDesc [

	^ #(
        RLVector3 position;
        RLVector3 target;
        RLVector3 up;
        float fovy;
        int projection;
	   )
]

{ #category : #'accessing - structure variables' }
RLCamera3D >> fovy [
	"This method was automatically generated"
	^handle floatAt: OFFSET_FOVY
]

{ #category : #'accessing - structure variables' }
RLCamera3D >> fovy: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_FOVY put: anObject
]

{ #category : #'accessing - structure variables' }
RLCamera3D >> position [
	"This method was automatically generated"
	^ RLVector3 fromHandle: (handle referenceStructAt: OFFSET_POSITION length: RLVector3 byteSize)
]

{ #category : #'accessing - structure variables' }
RLCamera3D >> position: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_POSITION put: anObject getHandle length: RLVector3 byteSize
]

{ #category : #'accessing - structure variables' }
RLCamera3D >> projection [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_PROJECTION
]

{ #category : #'accessing - structure variables' }
RLCamera3D >> projection: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_PROJECTION put: anObject
]

{ #category : #'accessing - structure variables' }
RLCamera3D >> target [
	"This method was automatically generated"
	^ RLVector3 fromHandle: (handle referenceStructAt: OFFSET_TARGET length: RLVector3 byteSize)
]

{ #category : #'accessing - structure variables' }
RLCamera3D >> target: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_TARGET put: anObject getHandle length: RLVector3 byteSize
]

{ #category : #'accessing - structure variables' }
RLCamera3D >> up [
	"This method was automatically generated"
	^ RLVector3 fromHandle: (handle referenceStructAt: OFFSET_UP length: RLVector3 byteSize)
]

{ #category : #'accessing - structure variables' }
RLCamera3D >> up: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_UP put: anObject getHandle length: RLVector3 byteSize
]
