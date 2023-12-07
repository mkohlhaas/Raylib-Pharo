"
r: Color red value
g: Color green value
b: Color blue value
a: Color alpha value
"
Class {
	#name : #RLColor,
	#superclass : #RLStructures,
	#classVars : [
		'OFFSET_A',
		'OFFSET_B',
		'OFFSET_G',
		'OFFSET_R'
	],
	#category : #Raylib
}

{ #category : #'field definition' }
RLColor class >> fieldsDesc [

	^ #( 
	     unsignedChar r;
	     unsignedChar g;
	     unsignedChar b;
	     unsignedChar a;
	   )
]

{ #category : #'accessing - structure variables' }
RLColor >> a [
	"This method was automatically generated"
	^handle unsignedByteAt: OFFSET_A
]

{ #category : #'accessing - structure variables' }
RLColor >> a: anObject [
	"This method was automatically generated"
	handle unsignedByteAt: OFFSET_A put: anObject
]

{ #category : #'accessing - structure variables' }
RLColor >> b [
	"This method was automatically generated"
	^handle unsignedByteAt: OFFSET_B
]

{ #category : #'accessing - structure variables' }
RLColor >> b: anObject [
	"This method was automatically generated"
	handle unsignedByteAt: OFFSET_B put: anObject
]

{ #category : #'accessing - structure variables' }
RLColor >> g [
	"This method was automatically generated"
	^handle unsignedByteAt: OFFSET_G
]

{ #category : #'accessing - structure variables' }
RLColor >> g: anObject [
	"This method was automatically generated"
	handle unsignedByteAt: OFFSET_G put: anObject
]

{ #category : #'accessing - structure variables' }
RLColor >> r [
	"This method was automatically generated"
	^handle unsignedByteAt: OFFSET_R
]

{ #category : #'accessing - structure variables' }
RLColor >> r: anObject [
	"This method was automatically generated"
	handle unsignedByteAt: OFFSET_R put: anObject
]
