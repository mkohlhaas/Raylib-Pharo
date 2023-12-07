"
x: Vector x component
y: Vector y component
"
Class {
	#name : #RLVector2,
	#superclass : #RLStructures,
	#classVars : [
		'OFFSET_X',
		'OFFSET_Y'
	],
	#category : #Raylib
}

{ #category : #'field definition' }
RLVector2 class >> fieldsDesc [

   ^ #(
        float x;
        float y;
      )
]

{ #category : #'accessing - structure variables' }
RLVector2 >> x [
	"This method was automatically generated"
	^handle floatAt: OFFSET_X
]

{ #category : #'accessing - structure variables' }
RLVector2 >> x: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_X put: anObject
]

{ #category : #'accessing - structure variables' }
RLVector2 >> y [
	"This method was automatically generated"
	^handle floatAt: OFFSET_Y
]

{ #category : #'accessing - structure variables' }
RLVector2 >> y: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_Y put: anObject
]
