"
min: Minimum vertex box-corner
max: Maximum vertex box-corner
"
Class {
	#name : #RLBoundingBox,
	#superclass : #RLStructures,
	#classVars : [
		'OFFSET_MAX',
		'OFFSET_MIN'
	],
	#category : #Raylib
}

{ #category : #'field definition' }
RLBoundingBox class >> fieldsDesc [

	^ #(
        #RLVector3 min;
        #RLVector3 max;
	   )
]

{ #category : #'accessing - structure variables' }
RLBoundingBox >> max [
	"This method was automatically generated"
	^ RLVector3 fromHandle: (handle referenceStructAt: OFFSET_MAX length: RLVector3 byteSize)
]

{ #category : #'accessing - structure variables' }
RLBoundingBox >> max: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_MAX put: anObject getHandle length: RLVector3 byteSize
]

{ #category : #'accessing - structure variables' }
RLBoundingBox >> min [
	"This method was automatically generated"
	^ RLVector3 fromHandle: (handle referenceStructAt: OFFSET_MIN length: RLVector3 byteSize)
]

{ #category : #'accessing - structure variables' }
RLBoundingBox >> min: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_MIN put: anObject getHandle length: RLVector3 byteSize
]
