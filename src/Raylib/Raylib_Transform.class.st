"
translation: Translation
rotation: Rotation
scale: Scale
"
Class {
	#name : #'Raylib_Transform',
	#superclass : #'Raylib_Structures',
	#classVars : [
		'OFFSET_ROTATION',
		'OFFSET_SCALE',
		'OFFSET_TRANSLATION'
	],
	#category : #Raylib
}

{ #category : #'field definition' }
Raylib_Transform class >> fieldsDesc [

	^ #(
        Raylib_Vector3 translation;
        Raylib_Quaternion rotation;
        Raylib_Vector3 scale;
	   )
]

{ #category : #'accessing - structure variables' }
Raylib_Transform >> rotation [
	"This method was automatically generated"
	^ Raylib_Vector4 fromHandle: (handle referenceStructAt: OFFSET_ROTATION length: Raylib_Vector4 byteSize)
]

{ #category : #'accessing - structure variables' }
Raylib_Transform >> rotation: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_ROTATION put: anObject getHandle length: Raylib_Vector4 byteSize
]

{ #category : #'accessing - structure variables' }
Raylib_Transform >> scale [
	"This method was automatically generated"
	^ Raylib_Vector3 fromHandle: (handle referenceStructAt: OFFSET_SCALE length: Raylib_Vector3 byteSize)
]

{ #category : #'accessing - structure variables' }
Raylib_Transform >> scale: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_SCALE put: anObject getHandle length: Raylib_Vector3 byteSize
]

{ #category : #'accessing - structure variables' }
Raylib_Transform >> translation [
	"This method was automatically generated"
	^ Raylib_Vector3 fromHandle: (handle referenceStructAt: OFFSET_TRANSLATION length: Raylib_Vector3 byteSize)
]

{ #category : #'accessing - structure variables' }
Raylib_Transform >> translation: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_TRANSLATION put: anObject getHandle length: Raylib_Vector3 byteSize
]
