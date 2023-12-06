"
int boneCount;          // Number of bones
int frameCount;         // Number of animation frames
BoneInfo *bones;        // Bones information (skeleton)
Transform **framePoses; // Poses array by frame

"
Class {
	#name : #'Raylib_ModelAnimation',
	#superclass : #RaylibStructures,
	#classVars : [
		'OFFSET_BONECOUNT',
		'OFFSET_BONES',
		'OFFSET_FRAMECOUNT',
		'OFFSET_FRAMEPOSES'
	],
	#category : #Raylib
}

{ #category : #'field definition' }
Raylib_ModelAnimation class >> fieldsDesc [

	^ #(
        int boneCount;
        int frameCount;
        Raylib_BoneInfo *bones;
        Raylib_Transform **framePoses;
	   )
]

{ #category : #'accessing - structure variables' }
Raylib_ModelAnimation >> boneCount [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_BONECOUNT
]

{ #category : #'accessing - structure variables' }
Raylib_ModelAnimation >> boneCount: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_BONECOUNT put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_ModelAnimation >> bones [
	"This method was automatically generated"
	^Raylib_BoneInfo fromHandle: (handle pointerAt: OFFSET_BONES)
]

{ #category : #'accessing - structure variables' }
Raylib_ModelAnimation >> bones: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_BONES put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
Raylib_ModelAnimation >> frameCount [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_FRAMECOUNT
]

{ #category : #'accessing - structure variables' }
Raylib_ModelAnimation >> frameCount: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_FRAMECOUNT put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_ModelAnimation >> framePoses [
	"This method was automatically generated"
	^Raylib_Transform fromHandle: (handle pointerAt: OFFSET_FRAMEPOSES)
]

{ #category : #'accessing - structure variables' }
Raylib_ModelAnimation >> framePoses: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_FRAMEPOSES put: anObject getHandle.
]
