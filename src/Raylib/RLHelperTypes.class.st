"
I represent helper types for FFI.
"
Class {
	#name : #RLHelperTypes,
	#superclass : #RLTypes,
	#classVars : [
		'Char32Array',
		'Float2Array',
		'Float4Array',
		'Matrix2Array'
	],
	#category : #Raylib
}

{ #category : #'class initialization' }
RLHelperTypes class >> initialize [

	Char32Array := FFIArray newArrayTypeOf: #char size: 32.
	Float2Array := FFIArray newArrayTypeOf: #float size: 2.
	Float4Array := FFIArray newArrayTypeOf: #float size: 4.
	Matrix2Array := FFIArray newArrayTypeOf: RLMatrix size: 2
]
