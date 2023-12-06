"
Vector3 position;       // Camera position
Vector3 target;         // Camera target it looks-at
Vector3 up;             // Camera up vector (rotation over its axis)
float fovy;             // Camera field-of-view apperture in Y (degrees) in perspective, used as near plane width in orthographic
int projection;         // Camera projection: CAMERA_PERSPECTIVE or CAMERA_ORTHOGRAPHIC

"
Class {
	#name : #'Raylib_Camera3D',
	#superclass : #RaylibStructures,
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
Raylib_Camera3D class >> fieldsDesc [

	^ #( 
        Raylib_Vector3 position;
        Raylib_Vector3 target;
        Raylib_Vector3 up;
        float fovy;
        int projection;
	   )
]

{ #category : #'accessing - structure variables' }
Raylib_Camera3D >> fovy [
	"This method was automatically generated"
	^handle floatAt: OFFSET_FOVY
]

{ #category : #'accessing - structure variables' }
Raylib_Camera3D >> fovy: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_FOVY put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_Camera3D >> position [
	"This method was automatically generated"
	^ Raylib_Vector3 fromHandle: (handle referenceStructAt: OFFSET_POSITION length: Raylib_Vector3 byteSize)
]

{ #category : #'accessing - structure variables' }
Raylib_Camera3D >> position: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_POSITION put: anObject getHandle length: Raylib_Vector3 byteSize
]

{ #category : #'accessing - structure variables' }
Raylib_Camera3D >> projection [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_PROJECTION
]

{ #category : #'accessing - structure variables' }
Raylib_Camera3D >> projection: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_PROJECTION put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_Camera3D >> target [
	"This method was automatically generated"
	^ Raylib_Vector3 fromHandle: (handle referenceStructAt: OFFSET_TARGET length: Raylib_Vector3 byteSize)
]

{ #category : #'accessing - structure variables' }
Raylib_Camera3D >> target: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_TARGET put: anObject getHandle length: Raylib_Vector3 byteSize
]

{ #category : #'accessing - structure variables' }
Raylib_Camera3D >> up [
	"This method was automatically generated"
	^ Raylib_Vector3 fromHandle: (handle referenceStructAt: OFFSET_UP length: Raylib_Vector3 byteSize)
]

{ #category : #'accessing - structure variables' }
Raylib_Camera3D >> up: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_UP put: anObject getHandle length: Raylib_Vector3 byteSize
]
