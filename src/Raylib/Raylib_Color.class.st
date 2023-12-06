"
unsigned char r;        // Color red value
unsigned char g;        // Color green value
unsigned char b;        // Color blue value
unsigned char a;        // Color alpha value

"
Class {
	#name : #'Raylib_Color',
	#superclass : #RaylibStructures,
	#classVars : [
		'OFFSET_A',
		'OFFSET_B',
		'OFFSET_G',
		'OFFSET_R'
	],
	#category : #Raylib
}

{ #category : #'field definition' }
Raylib_Color class >> fieldsDesc [

	^ #( unsignedChar r;
	     unsignedChar g;
	     unsignedChar b;
	     unsignedChar a;
	)
]

{ #category : #'accessing - structure variables' }
Raylib_Color >> a [
	"This method was automatically generated"
	^handle unsignedByteAt: OFFSET_A
]

{ #category : #'accessing - structure variables' }
Raylib_Color >> a: anObject [
	"This method was automatically generated"
	handle unsignedByteAt: OFFSET_A put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_Color >> b [
	"This method was automatically generated"
	^handle unsignedByteAt: OFFSET_B
]

{ #category : #'accessing - structure variables' }
Raylib_Color >> b: anObject [
	"This method was automatically generated"
	handle unsignedByteAt: OFFSET_B put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_Color >> g [
	"This method was automatically generated"
	^handle unsignedByteAt: OFFSET_G
]

{ #category : #'accessing - structure variables' }
Raylib_Color >> g: anObject [
	"This method was automatically generated"
	handle unsignedByteAt: OFFSET_G put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_Color >> r [
	"This method was automatically generated"
	^handle unsignedByteAt: OFFSET_R
]

{ #category : #'accessing - structure variables' }
Raylib_Color >> r: anObject [
	"This method was automatically generated"
	handle unsignedByteAt: OFFSET_R put: anObject
]
