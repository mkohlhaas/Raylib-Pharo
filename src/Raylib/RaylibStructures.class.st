"
Serves as a container for all Raylib structures. Uses pools to make types and type aliases available for all Raylib structures.
"
Class {
	#name : #RaylibStructures,
	#superclass : #FFIStructure,
	#pools : [
		'RaylibTypeAliases',
		'RaylibTypes'
	],
	#category : #Raylib
}
