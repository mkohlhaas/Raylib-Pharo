"
id: OpenGL framebuffer object id
texture: Color buffer attachment texture
depth: Depth buffer attachment texture
"
Class {
	#name : #RLRenderTexture,
	#superclass : #RLStructures,
	#classVars : [
		'OFFSET_DEPTH',
		'OFFSET_ID',
		'OFFSET_TEXTURE'
	],
	#category : #Raylib
}

{ #category : #'field definition' }
RLRenderTexture class >> fieldsDesc [

	^ #(
        uint id;
        #RLTexture texture;
        #RLTexture depth;
	   )
]

{ #category : #'accessing - structure variables' }
RLRenderTexture >> depth [
	"This method was automatically generated"
	^ RLTexture fromHandle: (handle referenceStructAt: OFFSET_DEPTH length: RLTexture byteSize)
]

{ #category : #'accessing - structure variables' }
RLRenderTexture >> depth: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_DEPTH put: anObject getHandle length: RLTexture byteSize
]

{ #category : #'accessing - structure variables' }
RLRenderTexture >> id [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_ID
]

{ #category : #'accessing - structure variables' }
RLRenderTexture >> id: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_ID put: anObject
]

{ #category : #'accessing - structure variables' }
RLRenderTexture >> texture [
	"This method was automatically generated"
	^ RLTexture fromHandle: (handle referenceStructAt: OFFSET_TEXTURE length: RLTexture byteSize)
]

{ #category : #'accessing - structure variables' }
RLRenderTexture >> texture: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_TEXTURE put: anObject getHandle length: RLTexture byteSize
]
