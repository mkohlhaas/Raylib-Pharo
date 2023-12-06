"
Matrix projection[2];           // VR projection matrices (per eye)
Matrix viewOffset[2];           // VR view offset matrices (per eye)
float leftLensCenter[2];        // VR left lens center
float rightLensCenter[2];       // VR right lens center
float leftScreenCenter[2];      // VR left screen center
float rightScreenCenter[2];     // VR right screen center
float scale[2];                 // VR distortion scale
float scaleIn[2];               // VR distortion scale in

"
Class {
	#name : #'Raylib_VrStereoConfig',
	#superclass : #RaylibStructures,
	#category : #Raylib
}

{ #category : #'field definition' }
Raylib_VrStereoConfig class >> fieldsDesc [
]
