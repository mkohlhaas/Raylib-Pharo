"
int boneCount;          // Number of bones
int frameCount;         // Number of animation frames
BoneInfo *bones;        // Bones information (skeleton)
Transform **framePoses; // Poses array by frame

"
Class {
	#name : #'Raylib_ModelAnimation',
	#superclass : #RaylibStructures,
	#category : #Raylib
}

{ #category : #'field definition' }
Raylib_ModelAnimation class >> fieldsDesc [
]
