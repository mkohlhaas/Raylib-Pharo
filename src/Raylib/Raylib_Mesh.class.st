"
int vertexCount;            // Number of vertices stored in arrays
int triangleCount;          // Number of triangles stored (indexed or not)

// Default vertex data
float *vertices;            // Vertex position (XYZ - 3 components per vertex) (shader-location = 0)
float *texcoords;           // Vertex texture coordinates (UV - 2 components per vertex) (shader-location = 1)
float *texcoords2;          // Vertex second texture coordinates (useful for lightmaps) (shader-location = 5)
float *normals;             // Vertex normals (XYZ - 3 components per vertex) (shader-location = 2)
float *tangents;            // Vertex tangents (XYZW - 4 components per vertex) (shader-location = 4)
unsigned char *colors;      // Vertex colors (RGBA - 4 components per vertex) (shader-location = 3)
unsigned short *indices;    // Vertex indices (in case vertex data comes indexed)

// Animation vertex data
float *animVertices;        // Animated vertex positions (after bones transformations)
float *animNormals;         // Animated normals (after bones transformations)
int *boneIds;               // Vertex bone ids, up to 4 bones influence by vertex (skinning)
float *boneWeights;         // Vertex bone weight, up to 4 bones influence by vertex (skinning)

// OpenGL identifiers
unsigned int vaoId;         // OpenGL Vertex Array Object id
unsigned int *vboId;        // OpenGL Vertex Buffer Objects id (default vertex data)

"
Class {
	#name : #'Raylib_Mesh',
	#superclass : #RaylibStructures,
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
Raylib_Mesh class >> fieldsDesc [

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
Raylib_Mesh >> animNormals [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_ANIMNORMALS) type: ExternalType float asPointerType
]

{ #category : #'accessing - structure variables' }
Raylib_Mesh >> animNormals: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_ANIMNORMALS put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
Raylib_Mesh >> animVertices [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_ANIMVERTICES) type: ExternalType float asPointerType
]

{ #category : #'accessing - structure variables' }
Raylib_Mesh >> animVertices: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_ANIMVERTICES put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
Raylib_Mesh >> boneIds [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_BONEIDS) type: ExternalType long asPointerType
]

{ #category : #'accessing - structure variables' }
Raylib_Mesh >> boneIds: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_BONEIDS put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
Raylib_Mesh >> boneWeights [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_BONEWEIGHTS) type: ExternalType float asPointerType
]

{ #category : #'accessing - structure variables' }
Raylib_Mesh >> boneWeights: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_BONEWEIGHTS put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
Raylib_Mesh >> colors [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_COLORS) type: ExternalType byte asPointerType
]

{ #category : #'accessing - structure variables' }
Raylib_Mesh >> colors: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_COLORS put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
Raylib_Mesh >> indices [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_INDICES) type: ExternalType ushort asPointerType
]

{ #category : #'accessing - structure variables' }
Raylib_Mesh >> indices: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_INDICES put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
Raylib_Mesh >> normals [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_NORMALS) type: ExternalType float asPointerType
]

{ #category : #'accessing - structure variables' }
Raylib_Mesh >> normals: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_NORMALS put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
Raylib_Mesh >> tangents [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_TANGENTS) type: ExternalType float asPointerType
]

{ #category : #'accessing - structure variables' }
Raylib_Mesh >> tangents: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_TANGENTS put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
Raylib_Mesh >> texcoords [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_TEXCOORDS) type: ExternalType float asPointerType
]

{ #category : #'accessing - structure variables' }
Raylib_Mesh >> texcoords2 [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_TEXCOORDS2) type: ExternalType float asPointerType
]

{ #category : #'accessing - structure variables' }
Raylib_Mesh >> texcoords2: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_TEXCOORDS2 put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
Raylib_Mesh >> texcoords: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_TEXCOORDS put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
Raylib_Mesh >> triangleCount [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_TRIANGLECOUNT
]

{ #category : #'accessing - structure variables' }
Raylib_Mesh >> triangleCount: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_TRIANGLECOUNT put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_Mesh >> vaoId [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_VAOID
]

{ #category : #'accessing - structure variables' }
Raylib_Mesh >> vaoId: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_VAOID put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_Mesh >> vboId [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_VBOID) type: ExternalType ulong asPointerType
]

{ #category : #'accessing - structure variables' }
Raylib_Mesh >> vboId: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_VBOID put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
Raylib_Mesh >> vertexCount [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_VERTEXCOUNT
]

{ #category : #'accessing - structure variables' }
Raylib_Mesh >> vertexCount: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_VERTEXCOUNT put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_Mesh >> vertices [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_VERTICES) type: ExternalType float asPointerType
]

{ #category : #'accessing - structure variables' }
Raylib_Mesh >> vertices: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_VERTICES put: anObject getHandle.
]
