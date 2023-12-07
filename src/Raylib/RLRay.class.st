"
position: Ray position (origin)
direction: Ray direction
"
Class {
	#name : #RLRay,
	#superclass : #RLStructures,
	#classVars : [
		'OFFSET_DIRECTION',
		'OFFSET_POSITION'
	],
	#category : #Raylib
}

{ #category : #'field definition' }
RLRay class >> fieldsDesc [

	^ #(
        #RLVector3 position;
        #RLVector3 direction;
	   )
]

{ #category : #'accessing - structure variables' }
RLRay >> direction [
	"This method was automatically generated"
	^ RLVector3 fromHandle: (handle referenceStructAt: OFFSET_DIRECTION length: RLVector3 byteSize)
]

{ #category : #'accessing - structure variables' }
RLRay >> direction: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_DIRECTION put: anObject getHandle length: RLVector3 byteSize
]

{ #category : #'accessing - structure variables' }
RLRay >> position [
	"This method was automatically generated"
	^ RLVector3 fromHandle: (handle referenceStructAt: OFFSET_POSITION length: RLVector3 byteSize)
]

{ #category : #'accessing - structure variables' }
RLRay >> position: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_POSITION put: anObject getHandle length: RLVector3 byteSize
]
