"
Types as shared pool.
"
Class {
	#name : #RaylibTypes,
	#superclass : #SharedPool,
	#classVars : [
		'float4array'
	],
	#category : #Raylib
}

{ #category : #'class initialization' }
RaylibTypes class >> initialize [

	float4array := FFIArray newArrayTypeOf: #float size: 4
]
