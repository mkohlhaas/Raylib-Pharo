"
stream: Audio stream
sampleCount: Total number of samples
"
Class {
	#name : #RLSound,
	#superclass : #RLStructures,
	#classVars : [
		'OFFSET_SAMPLECOUNT',
		'OFFSET_STREAM'
	],
	#category : #Raylib
}

{ #category : #'field definition' }
RLSound class >> fieldsDesc [

	^ #(
        #RLAudioStream stream;
        uint sampleCount;
	   )
]

{ #category : #'accessing - structure variables' }
RLSound >> sampleCount [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_SAMPLECOUNT
]

{ #category : #'accessing - structure variables' }
RLSound >> sampleCount: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_SAMPLECOUNT put: anObject
]

{ #category : #'accessing - structure variables' }
RLSound >> stream [
	"This method was automatically generated"
	^ RLAudioStream fromHandle: (handle referenceStructAt: OFFSET_STREAM length: RLAudioStream byteSize)
]

{ #category : #'accessing - structure variables' }
RLSound >> stream: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_STREAM put: anObject getHandle length: RLAudioStream byteSize
]
