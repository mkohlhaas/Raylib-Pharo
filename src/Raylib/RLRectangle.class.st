"
x: Rectangle top-left corner position x
y: Rectangle top-left corner position y
width: Rectangle width
height: Rectangle height
"
Class {
	#name : #RLRectangle,
	#superclass : #RLStructures,
	#classVars : [
		'OFFSET_HEIGHT',
		'OFFSET_WIDTH',
		'OFFSET_X',
		'OFFSET_Y'
	],
	#category : #Raylib
}

{ #category : #'field definition' }
RLRectangle class >> fieldsDesc [

	^ #( 
	     float x;
        float y;
        float width;
        float height;
		)
]

{ #category : #'accessing - structure variables' }
RLRectangle >> height [
	"This method was automatically generated"
	^handle floatAt: OFFSET_HEIGHT
]

{ #category : #'accessing - structure variables' }
RLRectangle >> height: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_HEIGHT put: anObject
]

{ #category : #'accessing - structure variables' }
RLRectangle >> width [
	"This method was automatically generated"
	^handle floatAt: OFFSET_WIDTH
]

{ #category : #'accessing - structure variables' }
RLRectangle >> width: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_WIDTH put: anObject
]

{ #category : #'accessing - structure variables' }
RLRectangle >> x [
	"This method was automatically generated"
	^handle floatAt: OFFSET_X
]

{ #category : #'accessing - structure variables' }
RLRectangle >> x: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_X put: anObject
]

{ #category : #'accessing - structure variables' }
RLRectangle >> y [
	"This method was automatically generated"
	^handle floatAt: OFFSET_Y
]

{ #category : #'accessing - structure variables' }
RLRectangle >> y: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_Y put: anObject
]
