"
transform: Local transform matrix
meshCount: Number of meshes
materialCount: Number of materials
meshes: Meshes array
materials: Materials array
meshMaterial: Mesh material number
// Animation data
boneCount: Number of bones
bones: Bones information (skeleton)
bindPose: Bones base transformation (pose)
"
Class {
	#name : #RLModel,
	#superclass : #RLStructures,
	#classVars : [
		'OFFSET_BINDPOSE',
		'OFFSET_BONECOUNT',
		'OFFSET_BONES',
		'OFFSET_MATERIALCOUNT',
		'OFFSET_MATERIALS',
		'OFFSET_MESHCOUNT',
		'OFFSET_MESHES',
		'OFFSET_MESHMATERIAL',
		'OFFSET_TRANSFORM'
	],
	#category : #Raylib
}

{ #category : #'field definition' }
RLModel class >> fieldsDesc [

	^ #(
        RLMatrix transform;
        int meshCount;
        int materialCount;
        RLMesh *meshes;
        RLMaterial *materials;
        int *meshMaterial;
        int boneCount;
        RLBoneInfo *bones;
        RLTransform *bindPose;
	   )
]

{ #category : #'accessing - structure variables' }
RLModel >> bindPose [
	"This method was automatically generated"
	^RLTransform fromHandle: (handle pointerAt: OFFSET_BINDPOSE)
]

{ #category : #'accessing - structure variables' }
RLModel >> bindPose: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_BINDPOSE put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
RLModel >> boneCount [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_BONECOUNT
]

{ #category : #'accessing - structure variables' }
RLModel >> boneCount: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_BONECOUNT put: anObject
]

{ #category : #'accessing - structure variables' }
RLModel >> bones [
	"This method was automatically generated"
	^RLBoneInfo fromHandle: (handle pointerAt: OFFSET_BONES)
]

{ #category : #'accessing - structure variables' }
RLModel >> bones: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_BONES put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
RLModel >> materialCount [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_MATERIALCOUNT
]

{ #category : #'accessing - structure variables' }
RLModel >> materialCount: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_MATERIALCOUNT put: anObject
]

{ #category : #'accessing - structure variables' }
RLModel >> materials [
	"This method was automatically generated"
	^RLMaterial fromHandle: (handle pointerAt: OFFSET_MATERIALS)
]

{ #category : #'accessing - structure variables' }
RLModel >> materials: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_MATERIALS put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
RLModel >> meshCount [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_MESHCOUNT
]

{ #category : #'accessing - structure variables' }
RLModel >> meshCount: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_MESHCOUNT put: anObject
]

{ #category : #'accessing - structure variables' }
RLModel >> meshMaterial [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_MESHMATERIAL) type: ExternalType long asPointerType
]

{ #category : #'accessing - structure variables' }
RLModel >> meshMaterial: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_MESHMATERIAL put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
RLModel >> meshes [
	"This method was automatically generated"
	^RLMesh fromHandle: (handle pointerAt: OFFSET_MESHES)
]

{ #category : #'accessing - structure variables' }
RLModel >> meshes: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_MESHES put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
RLModel >> transform [
	"This method was automatically generated"
	^ RLMatrix fromHandle: (handle referenceStructAt: OFFSET_TRANSFORM length: RLMatrix byteSize)
]

{ #category : #'accessing - structure variables' }
RLModel >> transform: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_TRANSFORM put: anObject getHandle length: RLMatrix byteSize
]
