"
bool hit;               // Did the ray hit something?
float distance;         // Distance to nearest hit
Vector3 point;          // Point of nearest hit
Vector3 normal;         // Surface normal of hit
"
Class {
	#name : #'Raylib_RayCollision',
	#superclass : #'Raylib_Structures',
	#classVars : [
		'OFFSET_DISTANCE',
		'OFFSET_HIT',
		'OFFSET_NORMAL',
		'OFFSET_POINT'
	],
	#category : #Raylib
}

{ #category : #'field definition' }
Raylib_RayCollision class >> fieldsDesc [

	^ #(
        bool hit;
        float distance;
        Raylib_Vector3 point;
        Raylib_Vector3 normal;
	   )
]

{ #category : #'accessing - structure variables' }
Raylib_RayCollision >> distance [
	"This method was automatically generated"
	^handle floatAt: OFFSET_DISTANCE
]

{ #category : #'accessing - structure variables' }
Raylib_RayCollision >> distance: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_DISTANCE put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_RayCollision >> hit [
	"This method was automatically generated"
	^handle booleanAt: OFFSET_HIT
]

{ #category : #'accessing - structure variables' }
Raylib_RayCollision >> hit: anObject [
	"This method was automatically generated"
	handle booleanAt: OFFSET_HIT put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_RayCollision >> normal [
	"This method was automatically generated"
	^ Raylib_Vector3 fromHandle: (handle referenceStructAt: OFFSET_NORMAL length: Raylib_Vector3 byteSize)
]

{ #category : #'accessing - structure variables' }
Raylib_RayCollision >> normal: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_NORMAL put: anObject getHandle length: Raylib_Vector3 byteSize
]

{ #category : #'accessing - structure variables' }
Raylib_RayCollision >> point [
	"This method was automatically generated"
	^ Raylib_Vector3 fromHandle: (handle referenceStructAt: OFFSET_POINT length: Raylib_Vector3 byteSize)
]

{ #category : #'accessing - structure variables' }
Raylib_RayCollision >> point: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_POINT put: anObject getHandle length: Raylib_Vector3 byteSize
]
