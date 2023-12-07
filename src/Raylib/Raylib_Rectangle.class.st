"
float x;                // Rectangle top-left corner position x
float y;                // Rectangle top-left corner position y
float width;            // Rectangle width
float height;           // Rectangle height
"
Class {
	#name : #'Raylib_Rectangle',
	#superclass : #'Raylib_Structures',
	#classVars : [
		'OFFSET_HEIGHT',
		'OFFSET_WIDTH',
		'OFFSET_X',
		'OFFSET_Y'
	],
	#category : #Raylib
}

{ #category : #'field definition' }
Raylib_Rectangle class >> fieldsDesc [

	^ #( 
	     float x;
        float y;
        float width;
        float height;
		)
]

{ #category : #'accessing - structure variables' }
Raylib_Rectangle >> height [
	"This method was automatically generated"
	^handle floatAt: OFFSET_HEIGHT
]

{ #category : #'accessing - structure variables' }
Raylib_Rectangle >> height: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_HEIGHT put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_Rectangle >> width [
	"This method was automatically generated"
	^handle floatAt: OFFSET_WIDTH
]

{ #category : #'accessing - structure variables' }
Raylib_Rectangle >> width: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_WIDTH put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_Rectangle >> x [
	"This method was automatically generated"
	^handle floatAt: OFFSET_X
]

{ #category : #'accessing - structure variables' }
Raylib_Rectangle >> x: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_X put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_Rectangle >> y [
	"This method was automatically generated"
	^handle floatAt: OFFSET_Y
]

{ #category : #'accessing - structure variables' }
Raylib_Rectangle >> y: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_Y put: anObject
]
