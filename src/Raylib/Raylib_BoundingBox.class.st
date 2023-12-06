"
Vector3 min;            // Minimum vertex box-corner
Vector3 max;            // Maximum vertex box-corner

"
Class {
	#name : #'Raylib_BoundingBox',
	#superclass : #RaylibStructures,
	#classVars : [
		'OFFSET_MAX',
		'OFFSET_MIN'
	],
	#category : #Raylib
}

{ #category : #'field definition' }
Raylib_BoundingBox class >> fieldsDesc [

	^ #(
        Raylib_Vector3 min;
        Raylib_Vector3 max;
	   )
]

{ #category : #'accessing - structure variables' }
Raylib_BoundingBox >> max [
	"This method was automatically generated"
	^ Raylib_Vector3 fromHandle: (handle referenceStructAt: OFFSET_MAX length: Raylib_Vector3 byteSize)
]

{ #category : #'accessing - structure variables' }
Raylib_BoundingBox >> max: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_MAX put: anObject getHandle length: Raylib_Vector3 byteSize
]

{ #category : #'accessing - structure variables' }
Raylib_BoundingBox >> min [
	"This method was automatically generated"
	^ Raylib_Vector3 fromHandle: (handle referenceStructAt: OFFSET_MIN length: Raylib_Vector3 byteSize)
]

{ #category : #'accessing - structure variables' }
Raylib_BoundingBox >> min: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_MIN put: anObject getHandle length: Raylib_Vector3 byteSize
]