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
	#superclass : #RaylibStructures,
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
        float4array lensDistortionValues[4];
        float4array chromaAbCorrection[4];
	   )
]
