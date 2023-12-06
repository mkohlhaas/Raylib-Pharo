"
Serves as a container for all Raylib structures. Uses pools to make types and type aliases available for all Raylib structures.
"
Class {
	#name : #RaylibStructures,
	#superclass : #FFIStructure,
	#pools : [
		'Raylib_HelperTypes',
		'Raylib_OpaqueTypes',
		'Raylib_TypeAliases'
	],
	#category : #Raylib
}
