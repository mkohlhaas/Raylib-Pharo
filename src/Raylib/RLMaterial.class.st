"
shader: Material shader
maps: Material maps array (MAX_MATERIAL_MAPS)
params: Material generic parameters (if required)
"
Class {
	#name : #RLMaterial,
	#superclass : #RLStructures,
	#classVars : [
		'OFFSET_MAPS',
		'OFFSET_PARAMS',
		'OFFSET_SHADER'
	],
	#category : #Raylib
}

{ #category : #'field definition' }
RLMaterial class >> fieldsDesc [

	^ #(
        RLShader shader;
        RLMaterialMap *maps;
        Float4Array params;
	   )
	

]

{ #category : #'accessing - structure variables' }
RLMaterial >> maps [
	"This method was automatically generated"
	^RLMaterialMap fromHandle: (handle pointerAt: OFFSET_MAPS)
]

{ #category : #'accessing - structure variables' }
RLMaterial >> maps: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_MAPS put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
RLMaterial >> params [
	"This method was automatically generated"
	^(FFITypeArray ofType: #FFIFloat32 size: 4) fromHandle: (handle copyFrom: OFFSET_PARAMS to: OFFSET_PARAMS + 15)
]

{ #category : #'accessing - structure variables' }
RLMaterial >> params: anObject [
	"This method was automatically generated"
	handle replaceFrom: OFFSET_PARAMS to: OFFSET_PARAMS + 15 with: anObject getHandle startingAt: 1
]

{ #category : #'accessing - structure variables' }
RLMaterial >> shader [
	"This method was automatically generated"
	^ RLShader fromHandle: (handle referenceStructAt: OFFSET_SHADER length: RLShader byteSize)
]

{ #category : #'accessing - structure variables' }
RLMaterial >> shader: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_SHADER put: anObject getHandle length: RLShader byteSize
]
