"
vertexCount: Number of vertices stored in arrays
triangleCount: Number of triangles stored (indexed or not)
// Default vertex data
vertices: Vertex position (XYZ - 3 components per vertex) (shader-location = 0)
texcoords: Vertex texture coordinates (UV - 2 components per vertex) (shader-location = 1)
texcoords2: Vertex second texture coordinates (useful for lightmaps) (shader-location = 5)
normals: Vertex normals (XYZ - 3 components per vertex) (shader-location = 2)
tangents: Vertex tangents (XYZW - 4 components per vertex) (shader-location = 4)
colors: Vertex colors (RGBA - 4 components per vertex) (shader-location = 3)
indices: Vertex indices (in case vertex data comes indexed)
// Animation vertex data
animVertices: Animated vertex positions (after bones transformations)
animNormals: Animated normals (after bones transformations)
boneIds: Vertex bone ids, up to 4 bones influence by vertex (skinning)
boneWeights: Vertex bone weight, up to 4 bones influence by vertex (skinning)
// OpenGL identifiers
vaoId: OpenGL Vertex Array Object id
vboId: OpenGL Vertex Buffer Objects id (default vertex data)
"
Class {
	#name : #RLMesh,
	#superclass : #RLStructures,
	#classVars : [
		'OFFSET_ANIMNORMALS',
		'OFFSET_ANIMVERTICES',
		'OFFSET_BONEIDS',
		'OFFSET_BONEWEIGHTS',
		'OFFSET_COLORS',
		'OFFSET_INDICES',
		'OFFSET_NORMALS',
		'OFFSET_TANGENTS',
		'OFFSET_TEXCOORDS',
		'OFFSET_TEXCOORDS2',
		'OFFSET_TRIANGLECOUNT',
		'OFFSET_VAOID',
		'OFFSET_VBOID',
		'OFFSET_VERTEXCOUNT',
		'OFFSET_VERTICES'
	],
	#category : #Raylib
}

{ #category : #'field definition' }
RLMesh class >> fieldsDesc [

	^ #(
        int vertexCount;
        int triangleCount;
        float *vertices;
        float *texcoords;
        float *texcoords2;
        float *normals;
        float *tangents;
        unsignedChar *colors;
        unsignedShort *indices;
        float *animVertices;
        float *animNormals;
        int *boneIds;
        float *boneWeights;
        uint vaoId;
        uint *vboId;
	   )
]

{ #category : #'accessing - structure variables' }
RLMesh >> animNormals [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_ANIMNORMALS) type: ExternalType float asPointerType
]

{ #category : #'accessing - structure variables' }
RLMesh >> animNormals: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_ANIMNORMALS put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
RLMesh >> animVertices [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_ANIMVERTICES) type: ExternalType float asPointerType
]

{ #category : #'accessing - structure variables' }
RLMesh >> animVertices: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_ANIMVERTICES put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
RLMesh >> boneIds [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_BONEIDS) type: ExternalType long asPointerType
]

{ #category : #'accessing - structure variables' }
RLMesh >> boneIds: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_BONEIDS put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
RLMesh >> boneWeights [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_BONEWEIGHTS) type: ExternalType float asPointerType
]

{ #category : #'accessing - structure variables' }
RLMesh >> boneWeights: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_BONEWEIGHTS put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
RLMesh >> colors [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_COLORS) type: ExternalType byte asPointerType
]

{ #category : #'accessing - structure variables' }
RLMesh >> colors: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_COLORS put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
RLMesh >> indices [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_INDICES) type: ExternalType ushort asPointerType
]

{ #category : #'accessing - structure variables' }
RLMesh >> indices: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_INDICES put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
RLMesh >> normals [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_NORMALS) type: ExternalType float asPointerType
]

{ #category : #'accessing - structure variables' }
RLMesh >> normals: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_NORMALS put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
RLMesh >> tangents [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_TANGENTS) type: ExternalType float asPointerType
]

{ #category : #'accessing - structure variables' }
RLMesh >> tangents: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_TANGENTS put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
RLMesh >> texcoords [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_TEXCOORDS) type: ExternalType float asPointerType
]

{ #category : #'accessing - structure variables' }
RLMesh >> texcoords2 [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_TEXCOORDS2) type: ExternalType float asPointerType
]

{ #category : #'accessing - structure variables' }
RLMesh >> texcoords2: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_TEXCOORDS2 put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
RLMesh >> texcoords: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_TEXCOORDS put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
RLMesh >> triangleCount [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_TRIANGLECOUNT
]

{ #category : #'accessing - structure variables' }
RLMesh >> triangleCount: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_TRIANGLECOUNT put: anObject
]

{ #category : #'accessing - structure variables' }
RLMesh >> vaoId [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_VAOID
]

{ #category : #'accessing - structure variables' }
RLMesh >> vaoId: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_VAOID put: anObject
]

{ #category : #'accessing - structure variables' }
RLMesh >> vboId [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_VBOID) type: ExternalType ulong asPointerType
]

{ #category : #'accessing - structure variables' }
RLMesh >> vboId: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_VBOID put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
RLMesh >> vertexCount [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_VERTEXCOUNT
]

{ #category : #'accessing - structure variables' }
RLMesh >> vertexCount: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_VERTEXCOUNT put: anObject
]

{ #category : #'accessing - structure variables' }
RLMesh >> vertices [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_VERTICES) type: ExternalType float asPointerType
]

{ #category : #'accessing - structure variables' }
RLMesh >> vertices: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_VERTICES put: anObject getHandle.
]
