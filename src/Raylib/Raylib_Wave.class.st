"
unsigned int sampleCount;   // Total number of samples (considering channels!)
unsigned int sampleRate;    // Frequency (samples per second)
unsigned int sampleSize;    // Bit depth (bits per sample): 8, 16, 32 (24 not supported)
unsigned int channels;      // Number of channels (1-mono, 2-stereo)
void *data;                 // Buffer data pointer

"
Class {
	#name : #'Raylib_Wave',
	#superclass : #'Raylib_Structures',
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
Raylib_Wave class >> fieldsDesc [

	^ #(
        uint sampleCount;
        uint sampleRate;
        uint sampleSize;
        uint channels;
        void *data;
	   )
]

{ #category : #'accessing - structure variables' }
Raylib_Wave >> channels [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_CHANNELS
]

{ #category : #'accessing - structure variables' }
Raylib_Wave >> channels: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_CHANNELS put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_Wave >> data [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_DATA) type: ExternalType void asPointerType
]

{ #category : #'accessing - structure variables' }
Raylib_Wave >> data: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_DATA put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
Raylib_Wave >> sampleCount [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_SAMPLECOUNT
]

{ #category : #'accessing - structure variables' }
Raylib_Wave >> sampleCount: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_SAMPLECOUNT put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_Wave >> sampleRate [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_SAMPLERATE
]

{ #category : #'accessing - structure variables' }
Raylib_Wave >> sampleRate: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_SAMPLERATE put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_Wave >> sampleSize [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_SAMPLESIZE
]

{ #category : #'accessing - structure variables' }
Raylib_Wave >> sampleSize: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_SAMPLESIZE put: anObject
]
