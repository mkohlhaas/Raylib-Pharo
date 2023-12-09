"
Pixel formats.
Support depends on OpenGL version and platform.
"
Class {
	#name : #RLPixelFormat,
	#superclass : #RLEnums,
	#classVars : [
		'PIXELFORMAT_COMPRESSED_ASTC_4x4_RGBA',
		'PIXELFORMAT_COMPRESSED_ASTC_8x8_RGBA',
		'PIXELFORMAT_COMPRESSED_DXT1_RGB',
		'PIXELFORMAT_COMPRESSED_DXT1_RGBA',
		'PIXELFORMAT_COMPRESSED_DXT3_RGBA',
		'PIXELFORMAT_COMPRESSED_DXT5_RGBA',
		'PIXELFORMAT_COMPRESSED_ETC1_RGB',
		'PIXELFORMAT_COMPRESSED_ETC2_EAC_RGBA',
		'PIXELFORMAT_COMPRESSED_ETC2_RGB',
		'PIXELFORMAT_COMPRESSED_PVRT_RGB',
		'PIXELFORMAT_COMPRESSED_PVRT_RGBA',
		'PIXELFORMAT_UNCOMPRESSED_GRAYSCALE',
		'PIXELFORMAT_UNCOMPRESSED_GRAY_ALPHA',
		'PIXELFORMAT_UNCOMPRESSED_R32',
		'PIXELFORMAT_UNCOMPRESSED_R32G32B32',
		'PIXELFORMAT_UNCOMPRESSED_R32G32B32A32',
		'PIXELFORMAT_UNCOMPRESSED_R4G4B4A4',
		'PIXELFORMAT_UNCOMPRESSED_R5G5B5A1',
		'PIXELFORMAT_UNCOMPRESSED_R5G6B5',
		'PIXELFORMAT_UNCOMPRESSED_R8G8B8',
		'PIXELFORMAT_UNCOMPRESSED_R8G8B8A8'
	],
	#category : #Raylib
}

{ #category : #'enum declaration' }
RLPixelFormat class >> enumDecl [
	"
    PIXELFORMAT_UNCOMPRESSED_GRAYSCALE = 1, // 8 bit per pixel (no alpha)
    PIXELFORMAT_UNCOMPRESSED_GRAY_ALPHA,    // 8*2 bpp (2 channels)
    PIXELFORMAT_UNCOMPRESSED_R5G6B5,        // 16 bpp
    PIXELFORMAT_UNCOMPRESSED_R8G8B8,        // 24 bpp
    PIXELFORMAT_UNCOMPRESSED_R5G5B5A1,      // 16 bpp (1 bit alpha)
    PIXELFORMAT_UNCOMPRESSED_R4G4B4A4,      // 16 bpp (4 bit alpha)
    PIXELFORMAT_UNCOMPRESSED_R8G8B8A8,      // 32 bpp
    PIXELFORMAT_UNCOMPRESSED_R32,           // 32 bpp (1 channel - float)
    PIXELFORMAT_UNCOMPRESSED_R32G32B32,     // 32*3 bpp (3 channels - float)
    PIXELFORMAT_UNCOMPRESSED_R32G32B32A32,  // 32*4 bpp (4 channels - float)
    PIXELFORMAT_COMPRESSED_DXT1_RGB,        // 4 bpp (no alpha)
    PIXELFORMAT_COMPRESSED_DXT1_RGBA,       // 4 bpp (1 bit alpha)
    PIXELFORMAT_COMPRESSED_DXT3_RGBA,       // 8 bpp
    PIXELFORMAT_COMPRESSED_DXT5_RGBA,       // 8 bpp
    PIXELFORMAT_COMPRESSED_ETC1_RGB,        // 4 bpp
    PIXELFORMAT_COMPRESSED_ETC2_RGB,        // 4 bpp
    PIXELFORMAT_COMPRESSED_ETC2_EAC_RGBA,   // 8 bpp
    PIXELFORMAT_COMPRESSED_PVRT_RGB,        // 4 bpp
    PIXELFORMAT_COMPRESSED_PVRT_RGBA,       // 4 bpp
    PIXELFORMAT_COMPRESSED_ASTC_4x4_RGBA,   // 8 bpp
    PIXELFORMAT_COMPRESSED_ASTC_8x8_RGBA    // 2 bpp
   "

	^ #(
        PIXELFORMAT_UNCOMPRESSED_GRAYSCALE     1
        PIXELFORMAT_UNCOMPRESSED_GRAY_ALPHA    2
        PIXELFORMAT_UNCOMPRESSED_R5G6B5        3
        PIXELFORMAT_UNCOMPRESSED_R8G8B8        4
        PIXELFORMAT_UNCOMPRESSED_R5G5B5A1      5
        PIXELFORMAT_UNCOMPRESSED_R4G4B4A4      6
        PIXELFORMAT_UNCOMPRESSED_R8G8B8A8      7
        PIXELFORMAT_UNCOMPRESSED_R32           8
        PIXELFORMAT_UNCOMPRESSED_R32G32B32     9
        PIXELFORMAT_UNCOMPRESSED_R32G32B32A32  10
        PIXELFORMAT_COMPRESSED_DXT1_RGB        11
        PIXELFORMAT_COMPRESSED_DXT1_RGBA       12
        PIXELFORMAT_COMPRESSED_DXT3_RGBA       13
        PIXELFORMAT_COMPRESSED_DXT5_RGBA       14
        PIXELFORMAT_COMPRESSED_ETC1_RGB        15
        PIXELFORMAT_COMPRESSED_ETC2_RGB        16
        PIXELFORMAT_COMPRESSED_ETC2_EAC_RGBA   17
        PIXELFORMAT_COMPRESSED_PVRT_RGB        18
        PIXELFORMAT_COMPRESSED_PVRT_RGBA       19
        PIXELFORMAT_COMPRESSED_ASTC_4x4_RGBA   20
        PIXELFORMAT_COMPRESSED_ASTC_8x8_RGBA   21
	   )
]