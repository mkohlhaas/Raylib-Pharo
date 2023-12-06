"
AudioStream stream;         // Audio stream
unsigned int sampleCount;   // Total number of samples
bool looping;               // Music looping enable
int ctxType;                // Type of music context (audio filetype)
void *ctxData;              // Audio context data, depends on type

"
Class {
	#name : #'Raylib_Music',
	#superclass : #'Raylib_Structures',
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
Raylib_Music class >> fieldsDesc [

	^ #(
        Raylib_AudioStream stream;
        uint sampleCount;
        bool looping;
        int ctxType;
        void *ctxData;
	   )
]

{ #category : #'accessing - structure variables' }
Raylib_Music >> ctxData [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_CTXDATA) type: ExternalType void asPointerType
]

{ #category : #'accessing - structure variables' }
Raylib_Music >> ctxData: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_CTXDATA put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
Raylib_Music >> ctxType [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_CTXTYPE
]

{ #category : #'accessing - structure variables' }
Raylib_Music >> ctxType: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_CTXTYPE put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_Music >> looping [
	"This method was automatically generated"
	^handle booleanAt: OFFSET_LOOPING
]

{ #category : #'accessing - structure variables' }
Raylib_Music >> looping: anObject [
	"This method was automatically generated"
	handle booleanAt: OFFSET_LOOPING put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_Music >> sampleCount [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_SAMPLECOUNT
]

{ #category : #'accessing - structure variables' }
Raylib_Music >> sampleCount: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_SAMPLECOUNT put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_Music >> stream [
	"This method was automatically generated"
	^ Raylib_AudioStream fromHandle: (handle referenceStructAt: OFFSET_STREAM length: Raylib_AudioStream byteSize)
]

{ #category : #'accessing - structure variables' }
Raylib_Music >> stream: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_STREAM put: anObject getHandle length: Raylib_AudioStream byteSize
]
