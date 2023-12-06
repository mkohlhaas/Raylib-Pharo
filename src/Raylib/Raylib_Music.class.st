"
AudioStream stream;         // Audio stream
unsigned int sampleCount;   // Total number of samples
bool looping;               // Music looping enable
int ctxType;                // Type of music context (audio filetype)
void *ctxData;              // Audio context data, depends on type

"
Class {
	#name : #'Raylib_Music',
	#superclass : #RaylibStructures,
	#category : #Raylib
}

{ #category : #'field definition' }
Raylib_Music class >> fieldsDesc [
]
