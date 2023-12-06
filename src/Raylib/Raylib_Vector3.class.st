"
float x;                // Vector x component
float y;                // Vector y component
float z;                // Vector z component

"
Class {
	#name : #'Raylib_Vector3',
	#superclass : #'Raylib_Structures',
	#classVars : [
		'OFFSET_X',
		'OFFSET_Y',
		'OFFSET_Z'
	],
	#category : #Raylib
}

{ #category : #'field definition' }
Raylib_Vector3 class >> fieldsDesc [

	^ #( float x;
        float y;
        float z; )
]

{ #category : #'accessing - structure variables' }
Raylib_Vector3 >> x [
	"This method was automatically generated"
	^handle floatAt: OFFSET_X
]

{ #category : #'accessing - structure variables' }
Raylib_Vector3 >> x: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_X put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_Vector3 >> y [
	"This method was automatically generated"
	^handle floatAt: OFFSET_Y
]

{ #category : #'accessing - structure variables' }
Raylib_Vector3 >> y: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_Y put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_Vector3 >> z [
	"This method was automatically generated"
	^handle floatAt: OFFSET_Z
]

{ #category : #'accessing - structure variables' }
Raylib_Vector3 >> z: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_Z put: anObject
]
