"
I represent helper types for FFI.
"
Class {
	#name : #'Raylib_HelperTypes',
	#superclass : #RaylibTypes,
	#classVars : [
		'Char32Array',
		'Float2Array',
		'Float4Array',
		'Matrix2Array'
	],
	#category : #Raylib
}

{ #category : #'class initialization' }
Raylib_HelperTypes class >> initialize [

	Char32Array := FFIArray newArrayTypeOf: #char size: 32.
	Float2Array := FFIArray newArrayTypeOf: #float size: 2.
	Float4Array := FFIArray newArrayTypeOf: #float size: 4.
	Matrix2Array := FFIArray newArrayTypeOf: Raylib_Matrix size: 2
]
