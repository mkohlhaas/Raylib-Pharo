"
char name[32];          // Bone name
int parent;             // Bone parent
"
Class {
	#name : #'Raylib_BoneInfo',
	#superclass : #'Raylib_Structures',
	#classVars : [
		'OFFSET_NAME',
		'OFFSET_PARENT'
	],
	#category : #Raylib
}

{ #category : #'field definition' }
Raylib_BoneInfo class >> fieldsDesc [

	^ #(
        Char32Array name;
        int parent;
	   )
]

{ #category : #'accessing - structure variables' }
Raylib_BoneInfo >> name [
	"This method was automatically generated"
	^(FFITypeArray ofType: #FFICharacterType size: 32) fromHandle: (handle copyFrom: OFFSET_NAME to: OFFSET_NAME + 31)
]

{ #category : #'accessing - structure variables' }
Raylib_BoneInfo >> name: anObject [
	"This method was automatically generated"
	handle replaceFrom: OFFSET_NAME to: OFFSET_NAME + 31 with: anObject getHandle startingAt: 1
]

{ #category : #'accessing - structure variables' }
Raylib_BoneInfo >> parent [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_PARENT
]

{ #category : #'accessing - structure variables' }
Raylib_BoneInfo >> parent: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_PARENT put: anObject
]
