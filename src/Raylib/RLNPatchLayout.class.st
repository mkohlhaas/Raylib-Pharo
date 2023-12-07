"
N-patch layout
"
Class {
	#name : #RLNPatchLayout,
	#superclass : #RLEnums,
	#classVars : [
		'NPATCH_NINE_PATCH',
		'NPATCH_THREE_PATCH_HORIZONTAL',
		'NPATCH_THREE_PATCH_VERTICAL'
	],
	#category : #Raylib
}

{ #category : #'enum declaration' }
RLNPatchLayout class >> enumDecl [
	"
    NPATCH_NINE_PATCH = 0,          // Npatch layout: 3x3 tiles
    NPATCH_THREE_PATCH_VERTICAL,    // Npatch layout: 1x3 tiles
    NPATCH_THREE_PATCH_HORIZONTAL   // Npatch layout: 3x1 tiles
   "

	^ #(
        NPATCH_NINE_PATCH              0
        NPATCH_THREE_PATCH_VERTICAL    1
        NPATCH_THREE_PATCH_HORIZONTAL  2
	   )
]
