"
texture: Material map texture
color: Material map color
value: Material map value
"
Class {
	#name : #RLMaterialMap,
	#superclass : #RLStructures,
	#classVars : [
		'OFFSET_COLOR',
		'OFFSET_TEXTURE',
		'OFFSET_VALUE'
	],
	#category : #Raylib
}

{ #category : #'field definition' }
RLMaterialMap class >> fieldsDesc [

	^ #(
        RLTexture2D texture;
        RLColor color;
        float value;
	   )
]

{ #category : #'accessing - structure variables' }
RLMaterialMap >> color [
	"This method was automatically generated"
	^ RLColor fromHandle: (handle referenceStructAt: OFFSET_COLOR length: RLColor byteSize)
]

{ #category : #'accessing - structure variables' }
RLMaterialMap >> color: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_COLOR put: anObject getHandle length: RLColor byteSize
]

{ #category : #'accessing - structure variables' }
RLMaterialMap >> texture [
	"This method was automatically generated"
	^ RLTexture fromHandle: (handle referenceStructAt: OFFSET_TEXTURE length: RLTexture byteSize)
]

{ #category : #'accessing - structure variables' }
RLMaterialMap >> texture: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_TEXTURE put: anObject getHandle length: RLTexture byteSize
]

{ #category : #'accessing - structure variables' }
RLMaterialMap >> value [
	"This method was automatically generated"
	^handle floatAt: OFFSET_VALUE
]

{ #category : #'accessing - structure variables' }
RLMaterialMap >> value: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_VALUE put: anObject
]
