"
Cubemap layouts
"
Class {
	#name : #'Raylib_CubemapLayout',
	#superclass : #'Raylib_Enums',
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

	^ #(  )
]
