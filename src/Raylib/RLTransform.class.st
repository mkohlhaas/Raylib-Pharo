"
translation: Translation
rotation: Rotation
scale: Scale
"
Class {
	#name : #RLTransform,
	#superclass : #RLStructures,
	#classVars : [
		'OFFSET_ROTATION',
		'OFFSET_SCALE',
		'OFFSET_TRANSLATION'
	],
	#category : #Raylib
}

{ #category : #'field definition' }
RLTransform class >> fieldsDesc [

	^ #(
        RLVector3 translation;
        RLQuaternion rotation;
        RLVector3 scale;
	   )
]

{ #category : #'accessing - structure variables' }
RLTransform >> rotation [
	"This method was automatically generated"
	^ RLVector4 fromHandle: (handle referenceStructAt: OFFSET_ROTATION length: RLVector4 byteSize)
]

{ #category : #'accessing - structure variables' }
RLTransform >> rotation: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_ROTATION put: anObject getHandle length: RLVector4 byteSize
]

{ #category : #'accessing - structure variables' }
RLTransform >> scale [
	"This method was automatically generated"
	^ RLVector3 fromHandle: (handle referenceStructAt: OFFSET_SCALE length: RLVector3 byteSize)
]

{ #category : #'accessing - structure variables' }
RLTransform >> scale: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_SCALE put: anObject getHandle length: RLVector3 byteSize
]

{ #category : #'accessing - structure variables' }
RLTransform >> translation [
	"This method was automatically generated"
	^ RLVector3 fromHandle: (handle referenceStructAt: OFFSET_TRANSLATION length: RLVector3 byteSize)
]

{ #category : #'accessing - structure variables' }
RLTransform >> translation: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_TRANSLATION put: anObject getHandle length: RLVector3 byteSize
]
