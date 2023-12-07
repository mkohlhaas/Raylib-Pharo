"
shader: Material shader
maps: Material maps array (MAX_MATERIAL_MAPS)
params: Material generic parameters (if required)
"
Class {
	#name : #'Raylib_Material',
	#superclass : #'Raylib_Structures',
	#classVars : [
		'OFFSET_MAPS',
		'OFFSET_PARAMS',
		'OFFSET_SHADER'
	],
	#category : #Raylib
}

{ #category : #'field definition' }
Raylib_Material class >> fieldsDesc [

	^ #(
        Raylib_Shader shader;
        Raylib_MaterialMap *maps;
        Float4Array params;
	   )
	

]

{ #category : #'accessing - structure variables' }
Raylib_Material >> maps [
	"This method was automatically generated"
	^Raylib_MaterialMap fromHandle: (handle pointerAt: OFFSET_MAPS)
]

{ #category : #'accessing - structure variables' }
Raylib_Material >> maps: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_MAPS put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
Raylib_Material >> params [
	"This method was automatically generated"
	^(FFITypeArray ofType: #FFIFloat32 size: 4) fromHandle: (handle copyFrom: OFFSET_PARAMS to: OFFSET_PARAMS + 15)
]

{ #category : #'accessing - structure variables' }
Raylib_Material >> params: anObject [
	"This method was automatically generated"
	handle replaceFrom: OFFSET_PARAMS to: OFFSET_PARAMS + 15 with: anObject getHandle startingAt: 1
]

{ #category : #'accessing - structure variables' }
Raylib_Material >> shader [
	"This method was automatically generated"
	^ Raylib_Shader fromHandle: (handle referenceStructAt: OFFSET_SHADER length: Raylib_Shader byteSize)
]

{ #category : #'accessing - structure variables' }
Raylib_Material >> shader: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_SHADER put: anObject getHandle length: Raylib_Shader byteSize
]
