"
sampleCount: Total number of samples (considering channels!)
sampleRate: Frequency (samples per second)
sampleSize: Bit depth (bits per sample): 8, 16, 32 (24 not supported)
channels: Number of channels (1-mono, 2-stereo)
data: Buffer data pointer
"
Class {
	#name : #RLWave,
	#superclass : #RLStructures,
	#classVars : [
		'OFFSET_CHANNELS',
		'OFFSET_DATA',
		'OFFSET_SAMPLECOUNT',
		'OFFSET_SAMPLERATE',
		'OFFSET_SAMPLESIZE'
	],
	#category : #Raylib
}

{ #category : #'field definition' }
RLWave class >> fieldsDesc [

	^ #(
        uint sampleCount;
        uint sampleRate;
        uint sampleSize;
        uint channels;
        void *data;
	   )
]

{ #category : #'accessing - structure variables' }
RLWave >> channels [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_CHANNELS
]

{ #category : #'accessing - structure variables' }
RLWave >> channels: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_CHANNELS put: anObject
]

{ #category : #'accessing - structure variables' }
RLWave >> data [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_DATA) type: ExternalType void asPointerType
]

{ #category : #'accessing - structure variables' }
RLWave >> data: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_DATA put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
RLWave >> sampleCount [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_SAMPLECOUNT
]

{ #category : #'accessing - structure variables' }
RLWave >> sampleCount: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_SAMPLECOUNT put: anObject
]

{ #category : #'accessing - structure variables' }
RLWave >> sampleRate [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_SAMPLERATE
]

{ #category : #'accessing - structure variables' }
RLWave >> sampleRate: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_SAMPLERATE put: anObject
]

{ #category : #'accessing - structure variables' }
RLWave >> sampleSize [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_SAMPLESIZE
]

{ #category : #'accessing - structure variables' }
RLWave >> sampleSize: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_SAMPLESIZE put: anObject
]
