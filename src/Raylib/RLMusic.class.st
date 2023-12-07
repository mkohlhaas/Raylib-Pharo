"
stream: Audio stream
sampleCount: Total number of samples
looping: Music looping enable
ctxType: Type of music context (audio filetype)
ctxData: Audio context data, depends on type
"
Class {
	#name : #RLMusic,
	#superclass : #RLStructures,
	#classVars : [
		'OFFSET_CTXDATA',
		'OFFSET_CTXTYPE',
		'OFFSET_LOOPING',
		'OFFSET_SAMPLECOUNT',
		'OFFSET_STREAM'
	],
	#category : #Raylib
}

{ #category : #'field definition' }
RLMusic class >> fieldsDesc [

	^ #(
        #RLAudioStream stream;
        uint sampleCount;
        bool looping;
        int ctxType;
        void *ctxData;
	   )
]

{ #category : #'accessing - structure variables' }
RLMusic >> ctxData [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_CTXDATA) type: ExternalType void asPointerType
]

{ #category : #'accessing - structure variables' }
RLMusic >> ctxData: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_CTXDATA put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
RLMusic >> ctxType [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_CTXTYPE
]

{ #category : #'accessing - structure variables' }
RLMusic >> ctxType: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_CTXTYPE put: anObject
]

{ #category : #'accessing - structure variables' }
RLMusic >> looping [
	"This method was automatically generated"
	^handle booleanAt: OFFSET_LOOPING
]

{ #category : #'accessing - structure variables' }
RLMusic >> looping: anObject [
	"This method was automatically generated"
	handle booleanAt: OFFSET_LOOPING put: anObject
]

{ #category : #'accessing - structure variables' }
RLMusic >> sampleCount [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_SAMPLECOUNT
]

{ #category : #'accessing - structure variables' }
RLMusic >> sampleCount: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_SAMPLECOUNT put: anObject
]

{ #category : #'accessing - structure variables' }
RLMusic >> stream [
	"This method was automatically generated"
	^ RLAudioStream fromHandle: (handle referenceStructAt: OFFSET_STREAM length: RLAudioStream byteSize)
]

{ #category : #'accessing - structure variables' }
RLMusic >> stream: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_STREAM put: anObject getHandle length: RLAudioStream byteSize
]
