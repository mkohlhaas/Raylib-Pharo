"
float m0, m4, m8, m12;  // Matrix first row (4 components)
float m1, m5, m9, m13;  // Matrix second row (4 components)
float m2, m6, m10, m14; // Matrix third row (4 components)
float m3, m7, m11, m15; // Matrix fourth row (4 components)
"
Class {
	#name : #'Raylib_Matrix',
	#superclass : #'Raylib_Structures',
	#classVars : [
		'OFFSET_M0',
		'OFFSET_M1',
		'OFFSET_M10',
		'OFFSET_M11',
		'OFFSET_M12',
		'OFFSET_M13',
		'OFFSET_M14',
		'OFFSET_M15',
		'OFFSET_M2',
		'OFFSET_M3',
		'OFFSET_M4',
		'OFFSET_M5',
		'OFFSET_M6',
		'OFFSET_M7',
		'OFFSET_M8',
		'OFFSET_M9'
	],
	#category : #Raylib
}

{ #category : #'field definition' }
Raylib_Matrix class >> fieldsDesc [

	^ #( 
	     float m0;
        float m4;
        float m8;
        float m12;
        float m1;
        float m5;
        float m9;
        float m13;
        float m2;
        float m6;
        float m10;
        float m14;
        float m3;
        float m7;
        float m11;
        float m15;
	   )
]

{ #category : #'accessing - structure variables' }
Raylib_Matrix >> m0 [
	"This method was automatically generated"
	^handle floatAt: OFFSET_M0
]

{ #category : #'accessing - structure variables' }
Raylib_Matrix >> m0: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_M0 put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_Matrix >> m1 [
	"This method was automatically generated"
	^handle floatAt: OFFSET_M1
]

{ #category : #'accessing - structure variables' }
Raylib_Matrix >> m10 [
	"This method was automatically generated"
	^handle floatAt: OFFSET_M10
]

{ #category : #'accessing - structure variables' }
Raylib_Matrix >> m10: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_M10 put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_Matrix >> m11 [
	"This method was automatically generated"
	^handle floatAt: OFFSET_M11
]

{ #category : #'accessing - structure variables' }
Raylib_Matrix >> m11: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_M11 put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_Matrix >> m12 [
	"This method was automatically generated"
	^handle floatAt: OFFSET_M12
]

{ #category : #'accessing - structure variables' }
Raylib_Matrix >> m12: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_M12 put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_Matrix >> m13 [
	"This method was automatically generated"
	^handle floatAt: OFFSET_M13
]

{ #category : #'accessing - structure variables' }
Raylib_Matrix >> m13: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_M13 put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_Matrix >> m14 [
	"This method was automatically generated"
	^handle floatAt: OFFSET_M14
]

{ #category : #'accessing - structure variables' }
Raylib_Matrix >> m14: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_M14 put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_Matrix >> m15 [
	"This method was automatically generated"
	^handle floatAt: OFFSET_M15
]

{ #category : #'accessing - structure variables' }
Raylib_Matrix >> m15: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_M15 put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_Matrix >> m1: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_M1 put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_Matrix >> m2 [
	"This method was automatically generated"
	^handle floatAt: OFFSET_M2
]

{ #category : #'accessing - structure variables' }
Raylib_Matrix >> m2: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_M2 put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_Matrix >> m3 [
	"This method was automatically generated"
	^handle floatAt: OFFSET_M3
]

{ #category : #'accessing - structure variables' }
Raylib_Matrix >> m3: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_M3 put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_Matrix >> m4 [
	"This method was automatically generated"
	^handle floatAt: OFFSET_M4
]

{ #category : #'accessing - structure variables' }
Raylib_Matrix >> m4: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_M4 put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_Matrix >> m5 [
	"This method was automatically generated"
	^handle floatAt: OFFSET_M5
]

{ #category : #'accessing - structure variables' }
Raylib_Matrix >> m5: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_M5 put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_Matrix >> m6 [
	"This method was automatically generated"
	^handle floatAt: OFFSET_M6
]

{ #category : #'accessing - structure variables' }
Raylib_Matrix >> m6: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_M6 put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_Matrix >> m7 [
	"This method was automatically generated"
	^handle floatAt: OFFSET_M7
]

{ #category : #'accessing - structure variables' }
Raylib_Matrix >> m7: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_M7 put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_Matrix >> m8 [
	"This method was automatically generated"
	^handle floatAt: OFFSET_M8
]

{ #category : #'accessing - structure variables' }
Raylib_Matrix >> m8: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_M8 put: anObject
]

{ #category : #'accessing - structure variables' }
Raylib_Matrix >> m9 [
	"This method was automatically generated"
	^handle floatAt: OFFSET_M9
]

{ #category : #'accessing - structure variables' }
Raylib_Matrix >> m9: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_M9 put: anObject
]
