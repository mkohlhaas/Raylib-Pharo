"
x: Vector x component
y: Vector y component
z: Vector z component
"
Class {
	#name : #RLVector3,
	#superclass : #RLStructures,
	#classVars : [
		'OFFSET_X',
		'OFFSET_Y',
		'OFFSET_Z'
	],
	#category : #Raylib
}

{ #category : #'field definition' }
RLVector3 class >> fieldsDesc [

	^ #(
	     float x;
        float y;
        float z;
      )
]

{ #category : #'accessing - structure variables' }
RLVector3 >> x [
	"This method was automatically generated"
	^handle floatAt: OFFSET_X
]

{ #category : #'accessing - structure variables' }
RLVector3 >> x: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_X put: anObject
]

{ #category : #'accessing - structure variables' }
RLVector3 >> y [
	"This method was automatically generated"
	^handle floatAt: OFFSET_Y
]

{ #category : #'accessing - structure variables' }
RLVector3 >> y: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_Y put: anObject
]

{ #category : #'accessing - structure variables' }
RLVector3 >> z [
	"This method was automatically generated"
	^handle floatAt: OFFSET_Z
]

{ #category : #'accessing - structure variables' }
RLVector3 >> z: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_Z put: anObject
]
