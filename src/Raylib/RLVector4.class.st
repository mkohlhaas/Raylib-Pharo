"
x: Vector x component
y: Vector y component
z: Vector z component
w: Vector w component
"
Class {
	#name : #RLVector4,
	#superclass : #RLStructures,
	#classVars : [
		'OFFSET_W',
		'OFFSET_X',
		'OFFSET_Y',
		'OFFSET_Z'
	],
	#category : #Raylib
}

{ #category : #'field definition' }
RLVector4 class >> fieldsDesc [

	^ #(
	     float x;
        float y;
        float z;
        float w;
      )
]

{ #category : #'accessing - structure variables' }
RLVector4 >> w [
	"This method was automatically generated"
	^handle floatAt: OFFSET_W
]

{ #category : #'accessing - structure variables' }
RLVector4 >> w: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_W put: anObject
]

{ #category : #'accessing - structure variables' }
RLVector4 >> x [
	"This method was automatically generated"
	^handle floatAt: OFFSET_X
]

{ #category : #'accessing - structure variables' }
RLVector4 >> x: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_X put: anObject
]

{ #category : #'accessing - structure variables' }
RLVector4 >> y [
	"This method was automatically generated"
	^handle floatAt: OFFSET_Y
]

{ #category : #'accessing - structure variables' }
RLVector4 >> y: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_Y put: anObject
]

{ #category : #'accessing - structure variables' }
RLVector4 >> z [
	"This method was automatically generated"
	^handle floatAt: OFFSET_Z
]

{ #category : #'accessing - structure variables' }
RLVector4 >> z: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_Z put: anObject
]
