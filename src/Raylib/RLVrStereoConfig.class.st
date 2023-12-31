"
projection: VR projection matrices (per eye)
viewOffset: VR view offset matrices (per eye)
leftLensCenter: VR left lens center
rightLensCenter: VR right lens center
leftScreenCenter: VR left screen center
rightScreenCenter: VR right screen center
scale: VR distortion scale
scaleIn: VR distortion scale in
"
Class {
	#name : #RLVrStereoConfig,
	#superclass : #RLStructures,
	#classVars : [
		'OFFSET_LEFTLENSCENTER',
		'OFFSET_LEFTSCREENCENTER',
		'OFFSET_PROJECTION',
		'OFFSET_RIGHTLENSCENTER',
		'OFFSET_RIGHTSCREENCENTER',
		'OFFSET_SCALE',
		'OFFSET_SCALEIN',
		'OFFSET_VIEWOFFSET'
	],
	#category : #Raylib
}

{ #category : #'field definition' }
RLVrStereoConfig class >> fieldsDesc [

	^ #(
        Matrix2Array projection;
        Matrix2Array viewOffset;
        Float4Array leftLensCenter;
        Float4Array rightLensCenter;
        Float4Array leftScreenCenter;
        Float4Array rightScreenCenter;
        Float4Array scale;
        Float4Array scaleIn;
	   )
]

{ #category : #'accessing - structure variables' }
RLVrStereoConfig >> leftLensCenter [
	"This method was automatically generated"
	^(FFITypeArray ofType: #FFIFloat32 size: 4) fromHandle: (handle copyFrom: OFFSET_LEFTLENSCENTER to: OFFSET_LEFTLENSCENTER + 15)
]

{ #category : #'accessing - structure variables' }
RLVrStereoConfig >> leftLensCenter: anObject [
	"This method was automatically generated"
	handle replaceFrom: OFFSET_LEFTLENSCENTER to: OFFSET_LEFTLENSCENTER + 15 with: anObject getHandle startingAt: 1
]

{ #category : #'accessing - structure variables' }
RLVrStereoConfig >> leftScreenCenter [
	"This method was automatically generated"
	^(FFITypeArray ofType: #FFIFloat32 size: 4) fromHandle: (handle copyFrom: OFFSET_LEFTSCREENCENTER to: OFFSET_LEFTSCREENCENTER + 15)
]

{ #category : #'accessing - structure variables' }
RLVrStereoConfig >> leftScreenCenter: anObject [
	"This method was automatically generated"
	handle replaceFrom: OFFSET_LEFTSCREENCENTER to: OFFSET_LEFTSCREENCENTER + 15 with: anObject getHandle startingAt: 1
]

{ #category : #'accessing - structure variables' }
RLVrStereoConfig >> projection [
	"This method was automatically generated"
	^(FFITypeArray ofType: #FFIExternalStructureType size: 2) fromHandle: (handle copyFrom: OFFSET_PROJECTION to: OFFSET_PROJECTION + 127)
]

{ #category : #'accessing - structure variables' }
RLVrStereoConfig >> projection: anObject [
	"This method was automatically generated"
	handle replaceFrom: OFFSET_PROJECTION to: OFFSET_PROJECTION + 127 with: anObject getHandle startingAt: 1
]

{ #category : #'accessing - structure variables' }
RLVrStereoConfig >> rightLensCenter [
	"This method was automatically generated"
	^(FFITypeArray ofType: #FFIFloat32 size: 4) fromHandle: (handle copyFrom: OFFSET_RIGHTLENSCENTER to: OFFSET_RIGHTLENSCENTER + 15)
]

{ #category : #'accessing - structure variables' }
RLVrStereoConfig >> rightLensCenter: anObject [
	"This method was automatically generated"
	handle replaceFrom: OFFSET_RIGHTLENSCENTER to: OFFSET_RIGHTLENSCENTER + 15 with: anObject getHandle startingAt: 1
]

{ #category : #'accessing - structure variables' }
RLVrStereoConfig >> rightScreenCenter [
	"This method was automatically generated"
	^(FFITypeArray ofType: #FFIFloat32 size: 4) fromHandle: (handle copyFrom: OFFSET_RIGHTSCREENCENTER to: OFFSET_RIGHTSCREENCENTER + 15)
]

{ #category : #'accessing - structure variables' }
RLVrStereoConfig >> rightScreenCenter: anObject [
	"This method was automatically generated"
	handle replaceFrom: OFFSET_RIGHTSCREENCENTER to: OFFSET_RIGHTSCREENCENTER + 15 with: anObject getHandle startingAt: 1
]

{ #category : #'accessing - structure variables' }
RLVrStereoConfig >> scale [
	"This method was automatically generated"
	^(FFITypeArray ofType: #FFIFloat32 size: 4) fromHandle: (handle copyFrom: OFFSET_SCALE to: OFFSET_SCALE + 15)
]

{ #category : #'accessing - structure variables' }
RLVrStereoConfig >> scale: anObject [
	"This method was automatically generated"
	handle replaceFrom: OFFSET_SCALE to: OFFSET_SCALE + 15 with: anObject getHandle startingAt: 1
]

{ #category : #'accessing - structure variables' }
RLVrStereoConfig >> scaleIn [
	"This method was automatically generated"
	^(FFITypeArray ofType: #FFIFloat32 size: 4) fromHandle: (handle copyFrom: OFFSET_SCALEIN to: OFFSET_SCALEIN + 15)
]

{ #category : #'accessing - structure variables' }
RLVrStereoConfig >> scaleIn: anObject [
	"This method was automatically generated"
	handle replaceFrom: OFFSET_SCALEIN to: OFFSET_SCALEIN + 15 with: anObject getHandle startingAt: 1
]

{ #category : #'accessing - structure variables' }
RLVrStereoConfig >> viewOffset [
	"This method was automatically generated"
	^(FFITypeArray ofType: #FFIExternalStructureType size: 2) fromHandle: (handle copyFrom: OFFSET_VIEWOFFSET to: OFFSET_VIEWOFFSET + 127)
]

{ #category : #'accessing - structure variables' }
RLVrStereoConfig >> viewOffset: anObject [
	"This method was automatically generated"
	handle replaceFrom: OFFSET_VIEWOFFSET to: OFFSET_VIEWOFFSET + 127 with: anObject getHandle startingAt: 1
]
