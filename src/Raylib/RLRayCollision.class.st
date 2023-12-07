"
hit: Did the ray hit something?
distance: Distance to nearest hit
point: Point of nearest hit
normal: Surface normal of hit
"
Class {
	#name : #RLRayCollision,
	#superclass : #RLStructures,
	#classVars : [
		'OFFSET_DISTANCE',
		'OFFSET_HIT',
		'OFFSET_NORMAL',
		'OFFSET_POINT'
	],
	#category : #Raylib
}

{ #category : #'field definition' }
RLRayCollision class >> fieldsDesc [

	^ #(
        bool hit;
        float distance;
        #RLVector3 point;
        #RLVector3 normal;
	   )
]

{ #category : #'accessing - structure variables' }
RLRayCollision >> distance [
	"This method was automatically generated"
	^handle floatAt: OFFSET_DISTANCE
]

{ #category : #'accessing - structure variables' }
RLRayCollision >> distance: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_DISTANCE put: anObject
]

{ #category : #'accessing - structure variables' }
RLRayCollision >> hit [
	"This method was automatically generated"
	^handle booleanAt: OFFSET_HIT
]

{ #category : #'accessing - structure variables' }
RLRayCollision >> hit: anObject [
	"This method was automatically generated"
	handle booleanAt: OFFSET_HIT put: anObject
]

{ #category : #'accessing - structure variables' }
RLRayCollision >> normal [
	"This method was automatically generated"
	^ RLVector3 fromHandle: (handle referenceStructAt: OFFSET_NORMAL length: RLVector3 byteSize)
]

{ #category : #'accessing - structure variables' }
RLRayCollision >> normal: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_NORMAL put: anObject getHandle length: RLVector3 byteSize
]

{ #category : #'accessing - structure variables' }
RLRayCollision >> point [
	"This method was automatically generated"
	^ RLVector3 fromHandle: (handle referenceStructAt: OFFSET_POINT length: RLVector3 byteSize)
]

{ #category : #'accessing - structure variables' }
RLRayCollision >> point: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_POINT put: anObject getHandle length: RLVector3 byteSize
]
