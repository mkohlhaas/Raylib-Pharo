"
Texture2D texture;      // Material map texture
Color color;            // Material map color
float value;            // Material map value

"
Class {
	#name : #'Raylib_MaterialMap',
	#superclass : #RaylibStructures,
	#classVars : [
		'OFFSET_COLOR',
		'OFFSET_TEXTURE',
		'OFFSET_VALUE'
	],
	#category : #Raylib
}

{ #category : #'field definition' }
Raylib_MaterialMap class >> fieldsDesc [

	^ #(
        Raylib_Texture2D texture;
        Raylib_Color color;
        float value;
	   )
]

{ #category : #'accessing - structure variables' }
Raylib_MaterialMap >> color [
	"This method was automatically generated"
	^ Raylib_Color fromHandle: (handle referenceStructAt: OFFSET_COLOR length: Raylib_Color byteSize)
]

{ #category : #'accessing - structure variables' }
Raylib_MaterialMap >> color: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_COLOR put: anObject getHandle length: Raylib_Color byteSize
]

{ #category : #'accessing - structure variables' }
Raylib_MaterialMap >> texture [
	"This method was automatically generated"
	^ Raylib_Texture2D fromHandle: (handle referenceStructAt: OFFSET_TEXTURE length: Raylib_Texture2D byteSize)
]

{ #category : #'accessing - structure variables' }
Raylib_MaterialMap >> texture: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_TEXTURE put: anObject getHandle length: Raylib_Texture2D byteSize
]

{ #category : #'accessing - structure variables' }
Raylib_MaterialMap >> value [
	"This method was automatically generated"
	^handle floatAt: OFFSET_VALUE
]

{ #category : #'accessing - structure variables' }
Raylib_MaterialMap >> value: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_VALUE put: anObject
]
