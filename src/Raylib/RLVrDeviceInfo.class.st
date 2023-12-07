"
hResolution: Horizontal resolution in pixels
vResolution: Vertical resolution in pixels
hScreenSize: Horizontal size in meters
vScreenSize: Vertical size in meters
vScreenCenter: Screen center in meters
eyeToScreenDistance: Distance between eye and display in meters
lensSeparationDistance: Lens separation distance in meters
interpupillaryDistance: IPD (distance between pupils) in meters
lensDistortionValues: Lens distortion constant parameters
chromaAbCorrection: Chromatic aberration correction parameters
"
Class {
	#name : #RLVrDeviceInfo,
	#superclass : #RLStructures,
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
RLVrDeviceInfo class >> fieldsDesc [

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
RLVrDeviceInfo >> chromaAbCorrection [
	"This method was automatically generated"
	^(FFITypeArray ofType: #FFIFloat32 size: 4) fromHandle: (handle copyFrom: OFFSET_CHROMAABCORRECTION to: OFFSET_CHROMAABCORRECTION + 15)
]

{ #category : #'accessing - structure variables' }
RLVrDeviceInfo >> chromaAbCorrection: anObject [
	"This method was automatically generated"
	handle replaceFrom: OFFSET_CHROMAABCORRECTION to: OFFSET_CHROMAABCORRECTION + 15 with: anObject getHandle startingAt: 1
]

{ #category : #'accessing - structure variables' }
RLVrDeviceInfo >> eyeToScreenDistance [
	"This method was automatically generated"
	^handle floatAt: OFFSET_EYETOSCREENDISTANCE
]

{ #category : #'accessing - structure variables' }
RLVrDeviceInfo >> eyeToScreenDistance: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_EYETOSCREENDISTANCE put: anObject
]

{ #category : #'accessing - structure variables' }
RLVrDeviceInfo >> hResolution [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_HRESOLUTION
]

{ #category : #'accessing - structure variables' }
RLVrDeviceInfo >> hResolution: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_HRESOLUTION put: anObject
]

{ #category : #'accessing - structure variables' }
RLVrDeviceInfo >> hScreenSize [
	"This method was automatically generated"
	^handle floatAt: OFFSET_HSCREENSIZE
]

{ #category : #'accessing - structure variables' }
RLVrDeviceInfo >> hScreenSize: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_HSCREENSIZE put: anObject
]

{ #category : #'accessing - structure variables' }
RLVrDeviceInfo >> interpupillaryDistance [
	"This method was automatically generated"
	^handle floatAt: OFFSET_INTERPUPILLARYDISTANCE
]

{ #category : #'accessing - structure variables' }
RLVrDeviceInfo >> interpupillaryDistance: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_INTERPUPILLARYDISTANCE put: anObject
]

{ #category : #'accessing - structure variables' }
RLVrDeviceInfo >> lensDistortionValues [
	"This method was automatically generated"
	^(FFITypeArray ofType: #FFIFloat32 size: 4) fromHandle: (handle copyFrom: OFFSET_LENSDISTORTIONVALUES to: OFFSET_LENSDISTORTIONVALUES + 15)
]

{ #category : #'accessing - structure variables' }
RLVrDeviceInfo >> lensDistortionValues: anObject [
	"This method was automatically generated"
	handle replaceFrom: OFFSET_LENSDISTORTIONVALUES to: OFFSET_LENSDISTORTIONVALUES + 15 with: anObject getHandle startingAt: 1
]

{ #category : #'accessing - structure variables' }
RLVrDeviceInfo >> lensSeparationDistance [
	"This method was automatically generated"
	^handle floatAt: OFFSET_LENSSEPARATIONDISTANCE
]

{ #category : #'accessing - structure variables' }
RLVrDeviceInfo >> lensSeparationDistance: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_LENSSEPARATIONDISTANCE put: anObject
]

{ #category : #'accessing - structure variables' }
RLVrDeviceInfo >> vResolution [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_VRESOLUTION
]

{ #category : #'accessing - structure variables' }
RLVrDeviceInfo >> vResolution: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_VRESOLUTION put: anObject
]

{ #category : #'accessing - structure variables' }
RLVrDeviceInfo >> vScreenCenter [
	"This method was automatically generated"
	^handle floatAt: OFFSET_VSCREENCENTER
]

{ #category : #'accessing - structure variables' }
RLVrDeviceInfo >> vScreenCenter: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_VSCREENCENTER put: anObject
]

{ #category : #'accessing - structure variables' }
RLVrDeviceInfo >> vScreenSize [
	"This method was automatically generated"
	^handle floatAt: OFFSET_VSCREENSIZE
]

{ #category : #'accessing - structure variables' }
RLVrDeviceInfo >> vScreenSize: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_VSCREENSIZE put: anObject
]
