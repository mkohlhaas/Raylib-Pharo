"
boneCount: Number of bones
frameCount: Number of animation frames
bones: Bones information (skeleton)
framePoses: Poses array by frame
"
Class {
	#name : #RLModelAnimation,
	#superclass : #RLStructures,
	#classVars : [
		'OFFSET_BONECOUNT',
		'OFFSET_BONES',
		'OFFSET_FRAMECOUNT',
		'OFFSET_FRAMEPOSES'
	],
	#category : #Raylib
}

{ #category : #'field definition' }
RLModelAnimation class >> fieldsDesc [

	^ #(
        int boneCount;
        int frameCount;
        RLBoneInfo *bones;
        RLTransform **framePoses;
	   )
]

{ #category : #'accessing - structure variables' }
RLModelAnimation >> boneCount [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_BONECOUNT
]

{ #category : #'accessing - structure variables' }
RLModelAnimation >> boneCount: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_BONECOUNT put: anObject
]

{ #category : #'accessing - structure variables' }
RLModelAnimation >> bones [
	"This method was automatically generated"
	^RLBoneInfo fromHandle: (handle pointerAt: OFFSET_BONES)
]

{ #category : #'accessing - structure variables' }
RLModelAnimation >> bones: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_BONES put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
RLModelAnimation >> frameCount [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_FRAMECOUNT
]

{ #category : #'accessing - structure variables' }
RLModelAnimation >> frameCount: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_FRAMECOUNT put: anObject
]

{ #category : #'accessing - structure variables' }
RLModelAnimation >> framePoses [
	"This method was automatically generated"
	^RLTransform fromHandle: (handle pointerAt: OFFSET_FRAMEPOSES)
]

{ #category : #'accessing - structure variables' }
RLModelAnimation >> framePoses: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_FRAMEPOSES put: anObject getHandle.
]
