"
buffer: Pointer to internal data used by the audio system
sampleRate: Frequency (samples per second)
sampleSize: Bit depth (bits per sample): 8, 16, 32 (24 not supported)
channels: Number of channels (1-mono, 2-stereo)
"
Class {
	#name : #RLAudioStream,
	#superclass : #RLStructures,
	#classVars : [
		'OFFSET_BUFFER',
		'OFFSET_CHANNELS',
		'OFFSET_SAMPLERATE',
		'OFFSET_SAMPLESIZE'
	],
	#category : #Raylib
}

{ #category : #'field definition' }
RLAudioStream class >> fieldsDesc [

	^ #(
        AudioBuffer *buffer;
        uint sampleRate;
        uint sampleSize;
        uint channels;
	   )
]

{ #category : #'accessing - structure variables' }
RLAudioStream >> buffer [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_BUFFER) type: ExternalType void asPointerType
]

{ #category : #'accessing - structure variables' }
RLAudioStream >> buffer: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_BUFFER put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
RLAudioStream >> channels [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_CHANNELS
]

{ #category : #'accessing - structure variables' }
RLAudioStream >> channels: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_CHANNELS put: anObject
]

{ #category : #'accessing - structure variables' }
RLAudioStream >> sampleRate [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_SAMPLERATE
]

{ #category : #'accessing - structure variables' }
RLAudioStream >> sampleRate: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_SAMPLERATE put: anObject
]

{ #category : #'accessing - structure variables' }
RLAudioStream >> sampleSize [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_SAMPLESIZE
]

{ #category : #'accessing - structure variables' }
RLAudioStream >> sampleSize: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_SAMPLESIZE put: anObject
]
