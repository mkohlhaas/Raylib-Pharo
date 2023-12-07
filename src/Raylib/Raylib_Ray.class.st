"
position: Ray position (origin)
direction: Ray direction
"
Class {
	#name : #'Raylib_Ray',
	#superclass : #'Raylib_Structures',
	#classVars : [
		'OFFSET_DIRECTION',
		'OFFSET_POSITION'
	],
	#category : #Raylib
}

{ #category : #'field definition' }
Raylib_Ray class >> fieldsDesc [

	^ #(
        Raylib_Vector3 position;
        Raylib_Vector3 direction;
	   )
]

{ #category : #'accessing - structure variables' }
Raylib_Ray >> direction [
	"This method was automatically generated"
	^ Raylib_Vector3 fromHandle: (handle referenceStructAt: OFFSET_DIRECTION length: Raylib_Vector3 byteSize)
]

{ #category : #'accessing - structure variables' }
Raylib_Ray >> direction: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_DIRECTION put: anObject getHandle length: Raylib_Vector3 byteSize
]

{ #category : #'accessing - structure variables' }
Raylib_Ray >> position [
	"This method was automatically generated"
	^ Raylib_Vector3 fromHandle: (handle referenceStructAt: OFFSET_POSITION length: Raylib_Vector3 byteSize)
]

{ #category : #'accessing - structure variables' }
Raylib_Ray >> position: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_POSITION put: anObject getHandle length: Raylib_Vector3 byteSize
]
