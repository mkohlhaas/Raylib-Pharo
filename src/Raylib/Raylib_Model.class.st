"
Matrix transform;       // Local transform matrix
int meshCount;          // Number of meshes
int materialCount;      // Number of materials
Mesh *meshes;           // Meshes array
Material *materials;    // Materials array
int *meshMaterial;      // Mesh material number
// Animation data
int boneCount;          // Number of bones
BoneInfo *bones;        // Bones information (skeleton)
Transform *bindPose;    // Bones base transformation (pose)
"
Class {
	#name : #'Raylib_Model',
	#superclass : #'Raylib_Structures',
	#classVars : [
		'OFFSET_MATERIALCOUNT',
		'OFFSET_MATERIALS',
		'OFFSET_MESHCOUNT',
		'OFFSET_MESHES',
		'OFFSET_TRANSFORM'
	],
	#category : #Raylib
}

{ #category : #'field definition' }
Raylib_Model class >> fieldsDesc [

	^ #(
        Raylib_Matrix transform;
        int meshCount;
        int materialCount;
        Raylib_Mesh *meshes;
        Raylib_Material *materials;
        int *meshMaterial;
        int boneCount;
        Raylib_BoneInfo *bones;
        Raylib_Transform *bindPose;
	   )
]

{ #category : #'accessing - structure variables' }
Raylib_Model >> materialCount [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_MATERIALCOUNT
]

{ #category : #'accessing - structure variables' }
Raylib_Model >> materialCount: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_MATERIALCOUNT put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_Model >> meshCount [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_MESHCOUNT
]

{ #category : #'accessing - structure variables' }
Raylib_Model >> meshCount: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_MESHCOUNT put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_Model >> meshes [
	"This method was automatically generated"
	^Raylib_Mesh fromHandle: (handle pointerAt: OFFSET_MESHES)
]

{ #category : #'accessing - structure variables' }
Raylib_Model >> meshes: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_MESHES put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
Raylib_Model >> transform [
	"This method was automatically generated"
	^ Raylib_Matrix fromHandle: (handle referenceStructAt: OFFSET_TRANSFORM length: Raylib_Matrix byteSize)
]

{ #category : #'accessing - structure variables' }
Raylib_Model >> transform: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_TRANSFORM put: anObject getHandle length: Raylib_Matrix byteSize
]
