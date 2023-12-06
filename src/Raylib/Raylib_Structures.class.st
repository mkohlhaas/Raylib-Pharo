"
Serves as a container for all Raylib structures. Uses pools to make types and type aliases available for all Raylib structures.
"
Class {
	#name : #'Raylib_Structures',
	#superclass : #FFIStructure,
	#pools : [
		'Raylib_HelperTypes',
		'Raylib_OpaqueTypes',
		'Raylib_TypeAliases'
	],
	#category : #Raylib
}
