"
buffer: Pointer to internal data used by the audio system
sampleRate: Frequency (samples per second)
sampleSize: Bit depth (bits per sample): 8, 16, 32 (24 not supported)
channels: Number of channels (1-mono, 2-stereo)
"
Class {
	#name : #'Raylib_AudioStream',
	#superclass : #'Raylib_Structures',
	#classVars : [
		'OFFSET_BUFFER',
		'OFFSET_CHANNELS',
		'OFFSET_SAMPLERATE',
		'OFFSET_SAMPLESIZE'
	],
	#category : #Raylib
}

{ #category : #'field definition' }
Raylib_AudioStream class >> fieldsDesc [

	^ #(
        AudioBuffer *buffer;
        uint sampleRate;
        uint sampleSize;
        uint channels;
	   )
]

{ #category : #'accessing - structure variables' }
Raylib_AudioStream >> buffer [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_BUFFER) type: ExternalType void asPointerType
]

{ #category : #'accessing - structure variables' }
Raylib_AudioStream >> buffer: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_BUFFER put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
Raylib_AudioStream >> channels [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_CHANNELS
]

{ #category : #'accessing - structure variables' }
Raylib_AudioStream >> channels: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_CHANNELS put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_AudioStream >> sampleRate [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_SAMPLERATE
]

{ #category : #'accessing - structure variables' }
Raylib_AudioStream >> sampleRate: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_SAMPLERATE put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_AudioStream >> sampleSize [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_SAMPLESIZE
]

{ #category : #'accessing - structure variables' }
Raylib_AudioStream >> sampleSize: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_SAMPLESIZE put: anObject
]
