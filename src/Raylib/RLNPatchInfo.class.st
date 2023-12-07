"
source: Texture source rectangle
left: Left border offset
top: Top border offset
right: Right border offset
bottom: Bottom border offset
layout: Layout of the n-patch: 3x3, 1x3 or 3x1
"
Class {
	#name : #RLNPatchInfo,
	#superclass : #RLStructures,
	#classVars : [
		'OFFSET_BOTTOM',
		'OFFSET_LAYOUT',
		'OFFSET_LEFT',
		'OFFSET_RIGHT',
		'OFFSET_SOURCE',
		'OFFSET_TOP'
	],
	#category : #Raylib
}

{ #category : #'field definition' }
RLNPatchInfo class >> fieldsDesc [

	^ #(
        #RLRectangle source;
        int left;
        int top;
        int right;
        int bottom;
        int layout;
	   )
]

{ #category : #'accessing - structure variables' }
RLNPatchInfo >> bottom [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_BOTTOM
]

{ #category : #'accessing - structure variables' }
RLNPatchInfo >> bottom: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_BOTTOM put: anObject
]

{ #category : #'accessing - structure variables' }
RLNPatchInfo >> layout [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_LAYOUT
]

{ #category : #'accessing - structure variables' }
RLNPatchInfo >> layout: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_LAYOUT put: anObject
]

{ #category : #'accessing - structure variables' }
RLNPatchInfo >> left [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_LEFT
]

{ #category : #'accessing - structure variables' }
RLNPatchInfo >> left: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_LEFT put: anObject
]

{ #category : #'accessing - structure variables' }
RLNPatchInfo >> right [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_RIGHT
]

{ #category : #'accessing - structure variables' }
RLNPatchInfo >> right: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_RIGHT put: anObject
]

{ #category : #'accessing - structure variables' }
RLNPatchInfo >> source [
	"This method was automatically generated"
	^ RLRectangle fromHandle: (handle referenceStructAt: OFFSET_SOURCE length: RLRectangle byteSize)
]

{ #category : #'accessing - structure variables' }
RLNPatchInfo >> source: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_SOURCE put: anObject getHandle length: RLRectangle byteSize
]

{ #category : #'accessing - structure variables' }
RLNPatchInfo >> top [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_TOP
]

{ #category : #'accessing - structure variables' }
RLNPatchInfo >> top: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_TOP put: anObject
]
