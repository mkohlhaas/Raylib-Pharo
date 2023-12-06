"
float x;                // Vector x component
float y;                // Vector y component

"
Class {
	#name : #'Raylib_Vector2',
	#superclass : #'Raylib_Structures',
	#classVars : [
		'OFFSET_X',
		'OFFSET_Y'
	],
	#category : #Raylib
}

{ #category : #'field definition' }
Raylib_Vector2 class >> fieldsDesc [

^ #(
    float x;
    float y; )
]

{ #category : #'accessing - structure variables' }
Raylib_Vector2 >> x [
	"This method was automatically generated"
	^handle floatAt: OFFSET_X
]

{ #category : #'accessing - structure variables' }
Raylib_Vector2 >> x: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_X put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_Vector2 >> y [
	"This method was automatically generated"
	^handle floatAt: OFFSET_Y
]

{ #category : #'accessing - structure variables' }
Raylib_Vector2 >> y: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_Y put: anObject
]
