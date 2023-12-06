"
unsigned int id;        // OpenGL framebuffer object id
Texture texture;        // Color buffer attachment texture
Texture depth;          // Depth buffer attachment texture

"
Class {
	#name : #'Raylib_RenderTexture',
	#superclass : #RaylibStructures,
	#classVars : [
		'OFFSET_DEPTH',
		'OFFSET_ID',
		'OFFSET_TEXTURE'
	],
	#category : #Raylib
}

{ #category : #'field definition' }
Raylib_RenderTexture class >> fieldsDesc [

	^ #(  
        uint id;
        Raylib_Texture texture;
        Raylib_Texture depth;
	   )
]

{ #category : #'accessing - structure variables' }
Raylib_RenderTexture >> depth [
	"This method was automatically generated"
	^ Raylib_Texture fromHandle: (handle referenceStructAt: OFFSET_DEPTH length: Raylib_Texture byteSize)
]

{ #category : #'accessing - structure variables' }
Raylib_RenderTexture >> depth: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_DEPTH put: anObject getHandle length: Raylib_Texture byteSize
]

{ #category : #'accessing - structure variables' }
Raylib_RenderTexture >> id [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_ID
]

{ #category : #'accessing - structure variables' }
Raylib_RenderTexture >> id: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_ID put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_RenderTexture >> texture [
	"This method was automatically generated"
	^ Raylib_Texture fromHandle: (handle referenceStructAt: OFFSET_TEXTURE length: Raylib_Texture byteSize)
]

{ #category : #'accessing - structure variables' }
Raylib_RenderTexture >> texture: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_TEXTURE put: anObject getHandle length: Raylib_Texture byteSize
]
