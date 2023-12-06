"
rAudioBuffer *buffer;       // Pointer to internal data used by the audio system
unsigned int sampleRate;    // Frequency (samples per second)
unsigned int sampleSize;    // Bit depth (bits per sample): 8, 16, 32 (24 not supported)
unsigned int channels;      // Number of channels (1-mono, 2-stereo)

"
Class {
	#name : #'Raylib_AudioStream',
	#superclass : #RaylibStructures,
	#category : #Raylib
}

{ #category : #'field definition' }
Raylib_AudioStream class >> fieldsDesc [
]
