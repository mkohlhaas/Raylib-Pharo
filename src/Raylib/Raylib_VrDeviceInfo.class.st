"
int hResolution;                // Horizontal resolution in pixels
int vResolution;                // Vertical resolution in pixels
float hScreenSize;              // Horizontal size in meters
float vScreenSize;              // Vertical size in meters
float vScreenCenter;            // Screen center in meters
float eyeToScreenDistance;      // Distance between eye and display in meters
float lensSeparationDistance;   // Lens separation distance in meters
float interpupillaryDistance;   // IPD (distance between pupils) in meters
float lensDistortionValues[4];  // Lens distortion constant parameters
float chromaAbCorrection[4];    // Chromatic aberration correction parameters

"
Class {
	#name : #'Raylib_VrDeviceInfo',
	#superclass : #'Raylib_Structures',
	#classVars : [
		'OFFSET_CHROMAABCORRECTION',
		'OFFSET_EYETOSCREENDISTANCE',
		'OFFSET_HRESOLUTION',
		'OFFSET_HSCREENSIZE',
		'OFFSET_INTERPUPILLARYDISTANCE',
		'OFFSET_LENSDISTORTIONVALUES',
		'OFFSET_LENSSEPARATIONDISTANCE',
		'OFFSET_VRESOLUTION',
		'OFFSET_VSCREENCENTER',
		'OFFSET_VSCREENSIZE'
	],
	#category : #Raylib
}

{ #category : #'field definition' }
Raylib_VrDeviceInfo class >> fieldsDesc [

	^ #(
        int hResolution;
        int vResolution;
        float hScreenSize;
        float vScreenSize;
        float vScreenCenter;
        float eyeToScreenDistance;
        float lensSeparationDistance;
        float interpupillaryDistance;
        Float4Array lensDistortionValues;
        Float4Array chromaAbCorrection;
	   )
]

{ #category : #'accessing - structure variables' }
Raylib_VrDeviceInfo >> chromaAbCorrection [
	"This method was automatically generated"
	^(FFITypeArray ofType: #FFIFloat32 size: 4) fromHandle: (handle copyFrom: OFFSET_CHROMAABCORRECTION to: OFFSET_CHROMAABCORRECTION + 15)
]

{ #category : #'accessing - structure variables' }
Raylib_VrDeviceInfo >> chromaAbCorrection: anObject [
	"This method was automatically generated"
	handle replaceFrom: OFFSET_CHROMAABCORRECTION to: OFFSET_CHROMAABCORRECTION + 15 with: anObject getHandle startingAt: 1
]

{ #category : #'accessing - structure variables' }
Raylib_VrDeviceInfo >> eyeToScreenDistance [
	"This method was automatically generated"
	^handle floatAt: OFFSET_EYETOSCREENDISTANCE
]

{ #category : #'accessing - structure variables' }
Raylib_VrDeviceInfo >> eyeToScreenDistance: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_EYETOSCREENDISTANCE put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_VrDeviceInfo >> hResolution [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_HRESOLUTION
]

{ #category : #'accessing - structure variables' }
Raylib_VrDeviceInfo >> hResolution: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_HRESOLUTION put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_VrDeviceInfo >> hScreenSize [
	"This method was automatically generated"
	^handle floatAt: OFFSET_HSCREENSIZE
]

{ #category : #'accessing - structure variables' }
Raylib_VrDeviceInfo >> hScreenSize: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_HSCREENSIZE put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_VrDeviceInfo >> interpupillaryDistance [
	"This method was automatically generated"
	^handle floatAt: OFFSET_INTERPUPILLARYDISTANCE
]

{ #category : #'accessing - structure variables' }
Raylib_VrDeviceInfo >> interpupillaryDistance: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_INTERPUPILLARYDISTANCE put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_VrDeviceInfo >> lensDistortionValues [
	"This method was automatically generated"
	^(FFITypeArray ofType: #FFIFloat32 size: 4) fromHandle: (handle copyFrom: OFFSET_LENSDISTORTIONVALUES to: OFFSET_LENSDISTORTIONVALUES + 15)
]

{ #category : #'accessing - structure variables' }
Raylib_VrDeviceInfo >> lensDistortionValues: anObject [
	"This method was automatically generated"
	handle replaceFrom: OFFSET_LENSDISTORTIONVALUES to: OFFSET_LENSDISTORTIONVALUES + 15 with: anObject getHandle startingAt: 1
]

{ #category : #'accessing - structure variables' }
Raylib_VrDeviceInfo >> lensSeparationDistance [
	"This method was automatically generated"
	^handle floatAt: OFFSET_LENSSEPARATIONDISTANCE
]

{ #category : #'accessing - structure variables' }
Raylib_VrDeviceInfo >> lensSeparationDistance: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_LENSSEPARATIONDISTANCE put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_VrDeviceInfo >> vResolution [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_VRESOLUTION
]

{ #category : #'accessing - structure variables' }
Raylib_VrDeviceInfo >> vResolution: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_VRESOLUTION put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_VrDeviceInfo >> vScreenCenter [
	"This method was automatically generated"
	^handle floatAt: OFFSET_VSCREENCENTER
]

{ #category : #'accessing - structure variables' }
Raylib_VrDeviceInfo >> vScreenCenter: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_VSCREENCENTER put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_VrDeviceInfo >> vScreenSize [
	"This method was automatically generated"
	^handle floatAt: OFFSET_VSCREENSIZE
]

{ #category : #'accessing - structure variables' }
Raylib_VrDeviceInfo >> vScreenSize: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_VSCREENSIZE put: anObject
]
