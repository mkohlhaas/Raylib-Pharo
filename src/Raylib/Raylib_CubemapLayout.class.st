"
Cubemap layouts
"
Class {
	#name : #'Raylib_CubemapLayout',
	#superclass : #'Raylib_Enums',
	#classVars : [
		'CUBEMAP_LAYOUT_AUTO_DETECT',
		'CUBEMAP_LAYOUT_CROSS_FOUR_BY_THREE',
		'CUBEMAP_LAYOUT_CROSS_THREE_BY_FOUR',
		'CUBEMAP_LAYOUT_LINE_HORIZONTAL',
		'CUBEMAP_LAYOUT_LINE_VERTICAL',
		'CUBEMAP_LAYOUT_PANORAMA'
	],
	#category : #Raylib
}

{ #category : #'enum declaration' }
Raylib_CubemapLayout class >> enumDecl [
	"
    CUBEMAP_LAYOUT_AUTO_DETECT = 0,         // Automatically detect layout type
    CUBEMAP_LAYOUT_LINE_VERTICAL,           // Layout is defined by a vertical line with faces
    CUBEMAP_LAYOUT_LINE_HORIZONTAL,         // Layout is defined by an horizontal line with faces
    CUBEMAP_LAYOUT_CROSS_THREE_BY_FOUR,     // Layout is defined by a 3x4 cross with cubemap faces
    CUBEMAP_LAYOUT_CROSS_FOUR_BY_THREE,     // Layout is defined by a 4x3 cross with cubemap faces
    CUBEMAP_LAYOUT_PANORAMA                 // Layout is defined by a panorama image (equirectangular map)
   "

	^ #(
        CUBEMAP_LAYOUT_AUTO_DETECT          0
        CUBEMAP_LAYOUT_LINE_VERTICAL        1
        CUBEMAP_LAYOUT_LINE_HORIZONTAL      2
        CUBEMAP_LAYOUT_CROSS_THREE_BY_FOUR  3
        CUBEMAP_LAYOUT_CROSS_FOUR_BY_THREE  4
        CUBEMAP_LAYOUT_PANORAMA             5
	   )
]
