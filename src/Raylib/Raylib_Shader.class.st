"
id: Shader program id
locs: Shader locations array (MAX_SHADER_LOCATIONS)
"
Class {
	#name : #'Raylib_Shader',
	#superclass : #'Raylib_Structures',
	#classVars : [
		'OFFSET_ID',
		'OFFSET_LOCS'
	],
	#category : #Raylib
}

{ #category : #'field definition' }
Raylib_Shader class >> fieldsDesc [

	^ #(
        uint id;
        int *locs;
	   )
]

{ #category : #'accessing - structure variables' }
Raylib_Shader >> id [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_ID
]

{ #category : #'accessing - structure variables' }
Raylib_Shader >> id: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_ID put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_Shader >> locs [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_LOCS) type: ExternalType long asPointerType
]

{ #category : #'accessing - structure variables' }
Raylib_Shader >> locs: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_LOCS put: anObject getHandle.
]
