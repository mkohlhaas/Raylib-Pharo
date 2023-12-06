"
AudioStream stream;         // Audio stream
unsigned int sampleCount;   // Total number of samples

"
Class {
	#name : #'Raylib_Sound',
	#superclass : #'Raylib_Structures',
	#classVars : [
		'OFFSET_SAMPLECOUNT',
		'OFFSET_STREAM'
	],
	#category : #Raylib
}

{ #category : #'field definition' }
Raylib_Sound class >> fieldsDesc [

	^ #(
        Raylib_AudioStream stream;
        uint sampleCount;
	   )
]

{ #category : #'accessing - structure variables' }
Raylib_Sound >> sampleCount [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_SAMPLECOUNT
]

{ #category : #'accessing - structure variables' }
Raylib_Sound >> sampleCount: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_SAMPLECOUNT put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_Sound >> stream [
	"This method was automatically generated"
	^ Raylib_AudioStream fromHandle: (handle referenceStructAt: OFFSET_STREAM length: Raylib_AudioStream byteSize)
]

{ #category : #'accessing - structure variables' }
Raylib_Sound >> stream: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_STREAM put: anObject getHandle length: Raylib_AudioStream byteSize
]
