"
isWindowState -> flags?
setWindowState -> flags?
getWindowHandle -> is this of any use?
setConfigFlags -> flags?
traceLog -> multiple functions for the different arguments
LoadFileData -> pointer needs allocation?
CompressData -> pointer needs allocation?
DecompressData -> pointer needs allocation?
GetDroppedFiles -> pointer needs allocation?
GetDirectoryFiles -> pointer needs allocation?
drawLineStrip -> pointer?
drawTriangleFan -> pointer?
checkCollisionLines -> pointer?
getImageAlphaBorder -> uses RLRectangle!
genImageFontAtlas -> pointers?
textFormat -> varargs
getCodepoint -> pointer needs allocation?
"
Class {
	#name : #RL,
	#superclass : #Object,
	#pools : [
		'RLHelperTypes',
		'RLOpaqueTypes',
		'RLTypeAliases'
	],
	#category : #Raylib
}

{ #category : #'ffi-calls' }
RL class >> beginBlendMode: mode [
	"Begin blending mode (alpha, additive, multiplied, subtract, custom)"

	self ffiCall: #( void BeginBlendMode #( int mode ) )
]

{ #category : #'ffi-calls' }
RL class >> beginDrawing [
	"Setup canvas (framebuffer) to start drawing"

	self ffiCall: #( void BeginDrawing #( void ) )
]

{ #category : #'ffi-calls' }
RL class >> beginMode2D: camera [
	"Begin 2D mode with custom camera (2D)"

	self ffiCall: #( void BeginMode2D #( RLCamera2D camera ) )
]

{ #category : #'ffi-calls' }
RL class >> beginMode3D: camera [
	"Begin 3D mode with custom camera (3D)"

	self ffiCall: #( void BeginMode3D #( RLCamera3D camera ) )
]

{ #category : #'ffi-calls' }
RL class >> beginScissorMode: x y: y width: width height: height [
	"Begin scissor mode (define screen area for following drawing)"

	self ffiCall: #( void BeginScissorMode #( int x , int y , int width , int height ) )
]

{ #category : #'ffi-calls' }
RL class >> beginShaderMode: shader [
	"Begin custom shader drawing"

	self ffiCall: #( void BeginShaderMode #( RLShader shader ) )
]

{ #category : #'ffi-calls' }
RL class >> beginTextureMode: target [
	"Begin drawing to render texture"

	self ffiCall: #( void BeginTextureMode #( RLRenderTexture2D target ) )
]

{ #category : #'ffi-calls' }
RL class >> beginVrStereoMode: config [
	"Begin stereo rendering (requires VR simulator)"

	self ffiCall: #( void BeginVrStereoMode #( RLVrStereoConfig config ) )
]

{ #category : #'ffi-calls' }
RL class >> changeDirectory: dir [
	"Change working directory, return true on success"

	^ self ffiCall: #( bool ChangeDirectory #( const char * dir ) )
]

{ #category : #'ffi-calls' }
RL class >> checkCollisionBoxSphere: box center: center radius: radius [
	"Check collision between box and sphere"

	^ self ffiCall: #( bool CheckCollisionBoxSphere #( RLBoundingBox box , RLVector3 center , float radius ) )
]

{ #category : #'ffi-calls' }
RL class >> checkCollisionBoxes: box1 box2: box2 [
	"Check collision between two bounding boxes"

	^ self ffiCall: #( bool CheckCollisionBoxes #( RLBoundingBox box1 , RLBoundingBox box2 ) )
]

{ #category : #'ffi-calls' }
RL class >> checkCollisionCircleRec: center radius: radius rec: rec [
	"Check collision between circle and rectangle"

	^ self ffiCall: #( bool CheckCollisionCircleRec #( RLVector2 center , float radius , RLRectangle rec ) )
]

{ #category : #'ffi-calls' }
RL class >> checkCollisionCircles: center1 radius1: radius1 center2: center2 radius2: radius2 [
	"Check collision between two circles"

	^ self ffiCall: #( bool CheckCollisionCircles #( RLVector2 center1 , float radius1 , RLVector2 center2 , float radius2 ) )
]

{ #category : #'ffi-calls' }
RL class >> checkCollisionLines: startPos1 endPos1: endPos1 startPos2: startPos2 endPos2: endPos2 collisionPoint: collisionPoint [
	"Check the collision between two lines defined by two points each, returns collision point by reference"

	^ self ffiCall: #( bool CheckCollisionLines #( RLVector2 startPos1 , RLVector2 endPos1 , RLVector2 startPos2 , RLVector2 endPos2 , RLVector2 * collisionPoint ) )
]

{ #category : #'ffi-calls' }
RL class >> checkCollisionPointCircle: point center: center radius: radius [
	"Check if point is inside circle"

	^ self ffiCall: #( bool CheckCollisionPointCircle #( RLVector2 point , RLVector2 center , float radius ) )
]

{ #category : #'ffi-calls' }
RL class >> checkCollisionPointRec: point rec: rec [
	"Check if point is inside rectangle"

	^ self ffiCall: #( bool CheckCollisionPointRec #( RLVector2 point , RLRectangle rec ) )
]

{ #category : #'ffi-calls' }
RL class >> checkCollisionPointTriangle: point p1: p1 p2: p2 p3: p3 [
	"Check if point is inside a triangle"

	^ self ffiCall: #( bool CheckCollisionPointTriangle #( RLVector2 point , RLVector2 p1 , RLVector2 p2 , RLVector2 p3 ) )
]

{ #category : #'ffi-calls' }
RL class >> checkCollisionRecs: rec1 rec2: rec2 [
	"Check collision between two rectangles"

	^ self ffiCall: #( bool CheckCollisionRecs #( RLRectangle rec1 , RLRectangle rec2 ) )
]

{ #category : #'ffi-calls' }
RL class >> checkCollisionSpheres: center radius1: radius1 center2: center2 radius2: radius2 [
	"Check collision between two spheres"

	^ self ffiCall: #( bool CheckCollisionSpheres #( RLVector3 center1 , float radius1 , RLVector3 center2 , float radius2 ) )
]

{ #category : #'ffi-calls' }
RL class >> clearBackground: color [
	"Set background color (framebuffer clear color)"

	self ffiCall: #( void ClearBackground #( RLColor color ) )
]

{ #category : #'ffi-calls' }
RL class >> clearDirectoryFiles [
	"Clear directory files paths buffers (free memory)"

	self ffiCall: #( void ClearDirectoryFiles #( void ) )
]

{ #category : #'ffi-calls' }
RL class >> clearDroppedFiles [
	"Clear dropped files paths buffer (free memory)"

	self ffiCall: #( void ClearDroppedFiles #( void ) )
]

{ #category : #'ffi-calls' }
RL class >> clearWindowState: flags [
	"Clear window configuration state flags"

	self ffiCall: #( void ClearWindowState #( uint flags ) )
]

{ #category : #'ffi-calls' }
RL class >> closeAudioDevice [
	"Close the audio device and context"

	self ffiCall: #( void CloseAudioDevice #( void ) )
]

{ #category : #'ffi-calls' }
RL class >> closeWindow [
	"Close window and unload OpenGL context"

	self ffiCall: #( void CloseWindow #( void ) )
]

{ #category : #'ffi-calls' }
RL class >> codepointToUtf8: codepoint byteLength: byteLength [
	"Encode codepoint into utf8 text (char array length returned as parameter)"

	^ self ffiCall: #( const char * CodepointToUtf8 #( int codepoint , int * byteLength ) )
]

{ #category : #'ffi-calls' }
RL class >> colorAlpha: color alpha: alpha [
	"Get color with alpha applied, alpha goes from 0.0f to 1.0f"

	^ self ffiCall: #( RLColor ColorAlpha #( RLColor color , float alpha ) )
]

{ #category : #'ffi-calls' }
RL class >> colorAlphaBlend: dst src: src tint: tint [
	"Get src alpha-blended into dst color with tint"

	^ self ffiCall: #( RLColor ColorAlphaBlend #( RLColor dst , RLColor src , RLColor tint ) )
]

{ #category : #'ffi-calls' }
RL class >> colorFromHSV: hue saturation: saturation value: value [
	"Get a RLColor from HSV values, hue [0..360], saturation/value [0..1]"

	^ self ffiCall: #( RLColor ColorFromHSV #( float hue , float saturation , float value ) )
]

{ #category : #'ffi-calls' }
RL class >> colorFromNormalized: normalized [
	"Get RLColor from normalized values [0..1]"

	^ self ffiCall: #( RLColor ColorFromNormalized #( RLVector4 normalized ) )
]

{ #category : #'ffi-calls' }
RL class >> colorNormalize: color [
	"Get RLColor normalized as float [0..1]"

	^ self ffiCall: #( RLVector4 ColorNormalize #( RLColor color ) )
]

{ #category : #'ffi-calls' }
RL class >> colorToHSV: color [
	"Get HSV values for a RLColor, hue [0..360], saturation/value [0..1]"

	^ self ffiCall: #( RLVector3 ColorToHSV #( RLColor color ) )
]

{ #category : #'ffi-calls' }
RL class >> colorToInt: color [
	"Get hexadecimal value for a RLColor"

	^ self ffiCall: #( int ColorToInt #( RLColor color ) )
]

{ #category : #'ffi-calls' }
RL class >> compressData: data dataLength: dataLength compDataLength: compDataLength [
	"Compress data (DEFLATE algorithm)"

	^ self ffiCall: #( unsigned char * CompressData #( unsignedChar * data , int dataLength , int * compDataLength ) )
]

{ #category : #'ffi-calls' }
RL class >> decompressData: compData compDataLength: compDataLength dataLength: dataLength [
	"Decompress data (DEFLATE algorithm)"

	^ self ffiCall: #( unsigned char * DecompressData #( unsignedChar * compData , int compDataLength , int * dataLength ) )
]

{ #category : #'ffi-calls' }
RL class >> directoryExists: dirPath [
	"Check if a directory path exists"

	^ self ffiCall: #( bool DirectoryExists #( const char * dirPath ) )
]

{ #category : #'ffi-calls' }
RL class >> disableCursor [
	"Disables cursor (lock cursor)"

	self ffiCall: #( void DisableCursor #( void ) )
]

{ #category : #'ffi-calls' }
RL class >> drawBillboard: camera texture: texture position: position size: size tint: tint [
	"Draw a billboard texture"

	self ffiCall: #( void DrawBillboard #( RLCamera camera , RLTexture2D texture , RLVector3 position , float size , RLColor tint ) )
]

{ #category : #'ffi-calls' }
RL class >> drawBillboardPro: camera texture: texture source: source position: position size: size origin: origin rotation: rotation tint: tint [
	"Draw a billboard texture defined by source and rotation"

	self ffiCall: #( void DrawBillboardPro #( RLCamera camera , RLTexture2D texture , RLRectangle source , RLVector3 position , RLVector2 size , RLVector2 origin , float rotation , RLColor tint ) )
]

{ #category : #'ffi-calls' }
RL class >> drawBillboardRec: camera texture: texture source: source position: position size: size tint: tint [
	"Draw a billboard texture defined by source"

	self ffiCall: #( void DrawBillboardRec #( RLCamera camera , RLTexture2D texture , RLRectangle source , RLVector3 position , RLVector2 size , RLColor tint ) )
]

{ #category : #'ffi-calls' }
RL class >> drawBoundingBox: box color: color [
	"Draw bounding box (wires)"

	self ffiCall: #( void DrawBoundingBox #( RLBoundingBox box , RLColor color ) )
]

{ #category : #'ffi-calls' }
RL class >> drawCircle3D: center radius: radius rotationAxis: rotationAxis rotationAngle: rotationAngle color: color [
	"Draw a circle in 3D world space"

	self ffiCall: #( void DrawCircle3D #( RLVector3 center , float radius , RLVector3 rotationAxis , float rotationAngle , RLColor color ) )
]

{ #category : #'ffi-calls' }
RL class >> drawCircle: centerX centerY: centerY radius: radius color: color [
	"Draw a color-filled circle"

	self ffiCall: #( void DrawCircle #( int centerX , int centerY , float radius , RLColor color ) )
]

{ #category : #'ffi-calls' }
RL class >> drawCircleGradient: centerX centerY: centerY radius: radius color1: color1 color2: color2 [
	"Draw a gradient-filled circle"

	self ffiCall: #( void DrawCircleGradient #( int centerX , int centerY , float radius , RLColor color1 , RLColor color2 ) )
]

{ #category : #'ffi-calls' }
RL class >> drawCircleLines: centerX centerY: centerY radius: radius color: color [
	"Draw circle outline"

	self ffiCall: #( void DrawCircleLines #( int centerX , int centerY , float radius , RLColor color ) )
]

{ #category : #'ffi-calls' }
RL class >> drawCircleSector: center radius: radius startAngle: startAngle endAngle: endAngle segments: segments color: color [
	"Draw a piece of a circle"

	self ffiCall: #( void DrawCircleSector #( RLVector2 center , float radius , float startAngle , float endAngle , int segments , RLColor color ) )
]

{ #category : #'ffi-calls' }
RL class >> drawCircleSectorLines: center radius: radius startAngle: startAngle endAngle: endAngle segments: segments color: color [
	"Draw circle sector outline"

	self ffiCall: #( void DrawCircleSectorLines #( RLVector2 center , float radius , float startAngle , float endAngle , int segments , RLColor color ) )
]

{ #category : #'ffi-calls' }
RL class >> drawCircleV: center radius: radius color: color [
	"Draw a color-filled circle (Vector version)"

	self ffiCall: #( void DrawCircleV #( RLVector2 center , float radius , RLColor color ) )
]

{ #category : #'ffi-calls' }
RL class >> drawCube: position width: width height: height length: length color: color [
	"Draw cube"

	self ffiCall: #( void DrawCube #( RLVector3 position , float width , float height , float length , RLColor color ) )
]

{ #category : #'ffi-calls' }
RL class >> drawCubeTexture: texture position: position width: width height: height length: length color: color [
	"Draw cube textured"

	self ffiCall: #( void DrawCubeTexture #( RLTexture2D texture , RLVector3 position , float width , float height , float length , RLColor color ) )
]

{ #category : #'ffi-calls' }
RL class >> drawCubeV: position size: size color: color [
	"Draw cube (Vector version)"

	self ffiCall: #( void DrawCubeV #( RLVector3 position , RLVector3 size , RLColor color ) )
]

{ #category : #'ffi-calls' }
RL class >> drawCubeWires: position width: width height: height length: length color: color [
	"Draw cube wires"

	self ffiCall: #( void DrawCubeWires #( RLVector3 position , float width , float height , float length , RLColor color ) )
]

{ #category : #'ffi-calls' }
RL class >> drawCubeWiresV: position size: size color: color [
	"Draw cube wires (Vector version)"

	self ffiCall: #( void DrawCubeWiresV #( RLVector3 position , RLVector3 size , RLColor color ) )
]

{ #category : #'ffi-calls' }
RL class >> drawCylinder: position radiusTop: radiusTop radiusBottom: radiusBottom height: height slices: slices color: color [
	"Draw a cylinder/cone"

	self ffiCall: #( void DrawCylinder #( RLVector3 position , float radiusTop , float radiusBottom , float height , int slices , RLColor color ) )
]

{ #category : #'ffi-calls' }
RL class >> drawCylinderWires: position radiusTop: radiusTop radiusBottom: radiusBottom height: height slices: slices color: color [
	"Draw a cylinder/cone wires"

	self ffiCall: #( void DrawCylinderWires #( RLVector3 position , float radiusTop , float radiusBottom , float height , int slices , RLColor color ) )
]

{ #category : #'ffi-calls' }
RL class >> drawEllipse: centerX centerY: centerY radiusH: radiusH radiusV: radiusV color: color [
	"Draw ellipse"

	self ffiCall: #( void DrawEllipse #( int centerX , int centerY , float radiusH , float radiusV , RLColor color ) )
]

{ #category : #'ffi-calls' }
RL class >> drawEllipseLines: centerX centerY: centerY radiusH: radiusH radiusV: radiusV color: color [
	"Draw ellipse outline"

	self ffiCall: #( void DrawEllipseLines #( int centerX , int centerY , float radiusH , float radiusV , RLColor color ) )
]

{ #category : #'ffi-calls' }
RL class >> drawFPS: posX posY: posY [
	"Draw current FPS"

	self ffiCall: #( void DrawFPS #( int posX , int posY ) )
]

{ #category : #'ffi-calls' }
RL class >> drawGrid: slices spacing: spacing [
	"Draw a grid (centered at (0, 0, 0))"

	self ffiCall: #( void DrawGrid #( int slices , float spacing ) )
]

{ #category : #'ffi-calls' }
RL class >> drawLine3D: startPos endPos: endPos color: color [
	"Draw a line in 3D world space"

	self ffiCall: #( void DrawLine3D #( RLVector3 startPos , RLVector3 endPos , RLColor color ) )
]

{ #category : #'ffi-calls' }
RL class >> drawLine: startPosX startPosY: startPosY endPosX: endPosX endPosY: endPosY color: color [
	"Draw a line"

	self ffiCall: #( void DrawLine #( int startPosX , int startPosY , int endPosX , int endPosY , RLColor color ) )
]

{ #category : #'ffi-calls' }
RL class >> drawLineBezier: startPos endPos: endPos thick: thick color: color [
	"Draw a line using cubic-bezier curves in-out"

	self ffiCall: #( void DrawLineBezier #( RLVector2 startPos , RLVector2 endPos , float thick , RLColor color ) )
]

{ #category : #'ffi-calls' }
RL class >> drawLineBezierQuad: startPos endPos: endPos controlPos: controlPos thick: thick color: color [
	"Draw line using quadratic bezier curves with a control point"

	self ffiCall: #( void DrawLineBezierQuad #( RLVector2 startPos , RLVector2 endPos , RLVector2 controlPos , float thick , RLColor color ) )
]

{ #category : #'ffi-calls' }
RL class >> drawLineEx: startPos endPos: endPos thick: thick color: color [
	"Draw a line defining thickness"

	self ffiCall: #( void DrawLineEx #( RLVector2 startPos , RLVector2 endPos , float thick , RLColor color ) )
]

{ #category : #'ffi-calls' }
RL class >> drawLineStrip: points pointsCount: pointsCount color: color [
	"Draw lines sequence"

	self ffiCall: #( void DrawLineStrip #( RLVector2 * points , int pointsCount , RLColor color ) )
]

{ #category : #'ffi-calls' }
RL class >> drawLineV: startPos endPos: endPos color: color [
	"Draw a line (Vector version)"

	self ffiCall: #( void DrawLineV #( RLVector2 startPos , RLVector2 endPos , RLColor color ) )
]

{ #category : #'ffi-calls' }
RL class >> drawMesh: mesh material: material transform: transform [
	"Draw a 3d mesh with material and transform"

	self ffiCall: #( void DrawMesh #( RLMesh mesh , RLMaterial material , RLMatrix transform ) )
]

{ #category : #'ffi-calls' }
RL class >> drawMeshInstanced: mesh material: material transforms: transforms instances: instances [
	"Draw multiple mesh instances with material and different transforms"

	self ffiCall: #( void DrawMeshInstanced #( RLMesh mesh , RLMaterial material , RLMatrix * transforms , int instances ) )
]

{ #category : #'ffi-calls' }
RL class >> drawModel: model position: position scale: scale tint: tint [
	"Draw a model (with texture if set)"

	self ffiCall: #( void DrawModel #( RLModel model , RLVector3 position , float scale , RLColor tint ) )
]

{ #category : #'ffi-calls' }
RL class >> drawModelEx: model position: position rotationAxis: rotationAxis rotationAngle: rotationAngle scale: scale tint: tint [
	"Draw a model with extended parameters"

	self ffiCall: #( void DrawModelEx #( RLModel model , RLVector3 position , RLVector3 rotationAxis , float rotationAngle , RLVector3 scale , RLColor tint ) )
]

{ #category : #'ffi-calls' }
RL class >> drawModelWires: model position: position scale: scale tint: tint [
	"Draw a model wires (with texture if set)"

	self ffiCall: #( void DrawModelWires #( RLModel model , RLVector3 position , float scale , RLColor tint ) )
]

{ #category : #'ffi-calls' }
RL class >> drawModelWiresEx: model position: position rotationAxis: rotationAxis rotationAngle: rotationAngle scale: scale tint: tint [
	"Draw a model wires (with texture if set) with extended parameters"

	self ffiCall: #( void DrawModelWiresEx #( RLModel model , RLVector3 position , RLVector3 rotationAxis , float rotationAngle , RLVector3 scale , RLColor tint ) )
]

{ #category : #'ffi-calls' }
RL class >> drawPixel: posX posY: posY color: color [
	"Draw a pixel"

	self ffiCall: #( void DrawPixel #( int posX , int posY , RLColor color ) )
]

{ #category : #'ffi-calls' }
RL class >> drawPixelV: position color: color [
	"Draw a pixel (Vector version)"

	self ffiCall: #( void DrawPixelV #( RLVector2 position , RLColor color ) )
]

{ #category : #'ffi-calls' }
RL class >> drawPlane: centerPos size: size color: color [
	"Draw a plane XZ"

	self ffiCall: #( void DrawPlane #( RLVector3 centerPos , RLVector2 size , RLColor color ) )
]

{ #category : #'ffi-calls' }
RL class >> drawPoint3D: position color: color [
	"Draw a point in 3D space, actually a small line"

	self ffiCall: #( void DrawPoint3D #( RLVector3 position , RLColor color ) )
]

{ #category : #'ffi-calls' }
RL class >> drawPoly: center sides: sides radius: radius rotation: rotation color: color [
	"Draw a regular polygon (Vector version)"

	self ffiCall: #( void DrawPoly #( RLVector2 center , int sides , float radius , float rotation , RLColor color ) )
]

{ #category : #'ffi-calls' }
RL class >> drawPolyLines: center sides: sides radius: radius rotation: rotation color: color [
	"Draw a polygon outline of n sides"

	self ffiCall: #( void DrawPolyLines #( RLVector2 center , int sides , float radius , float rotation , RLColor color ) )
]

{ #category : #'ffi-calls' }
RL class >> drawPolyLinesEx: center sides: sides radius: radius rotation: rotation lineThick: lineThick color: color [
	"Draw a polygon outline of n sides with extended parameters"

	self ffiCall: #( void DrawPolyLinesEx #( RLVector2 center , int sides , float radius , float rotation , float lineThick , RLColor color ) )
]

{ #category : #'ffi-calls' }
RL class >> drawRay: ray color: colore [
	"Draw a ray line"

	self ffiCall: #( void DrawRay #( RLRay ray , RLColor color ) )
]

{ #category : #'ffi-calls' }
RL class >> drawRectangle: posX posY: posY width: width height: height color: color [
	"Draw a color-filled rectangle"

	self ffiCall: #( void DrawRectangle #( int posX , int posY , int width , int height , RLColor color ) )
]

{ #category : #'ffi-calls' }
RL class >> drawRectangleGradientEx: rec col1: col1 col2: col2 col3: col3 col4: col4 [
	"Draw a gradient-filled rectangle with custom vertex colors"

	self ffiCall: #( void DrawRectangleGradientEx #( RLRectangle rec , RLColor col1 , RLColor col2 , RLColor col3 , RLColor col4 ) )
]

{ #category : #'ffi-calls' }
RL class >> drawRectangleGradientH: posX posY: posY width: width height: height color1: color1 color2: color2 [
	"Draw a horizontal-gradient-filled rectangle"

	self ffiCall: #( void DrawRectangleGradientH #( int posX , int posY , int width , int height , RLColor color1 , RLColor color2 ) )
]

{ #category : #'ffi-calls' }
RL class >> drawRectangleGradientV: posX posY: posY width: width height: height color1: color1 color2: color2 [
	"Draw a vertical-gradient-filled rectangle"

	self ffiCall: #( void DrawRectangleGradientV #( int posX , int posY , int width , int height , RLColor color1 , RLColor color2 ) )
]

{ #category : #'ffi-calls' }
RL class >> drawRectangleLines: posX posY: posY width: width height: height color: color [
	"Draw rectangle outline"

	self ffiCall: #( void DrawRectangleLines #( int posX , int posY , int width , int height , RLColor color ) )
]

{ #category : #'ffi-calls' }
RL class >> drawRectangleLinesEx: rec lineThick: lineThick color: color [
	"Draw rectangle outline with extended parameters"

	self ffiCall: #( void DrawRectangleLinesEx #( RLRectangle rec , float lineThick , RLColor color ) )
]

{ #category : #'ffi-calls' }
RL class >> drawRectanglePro: rec origin: origin rotation: rotation color: color [
	"Draw a color-filled rectangle with pro parameters"

	self ffiCall: #( void DrawRectanglePro #( RLRectangle rec , RLVector2 origin , float rotation , RLColor color ) )
]

{ #category : #'ffi-calls' }
RL class >> drawRectangleRec: rec color: color [
	"Draw a color-filled rectangle"

	self ffiCall: #( void DrawRectangleRec #( RLRectangle rec , RLColor color ) )
]

{ #category : #'ffi-calls' }
RL class >> drawRectangleRounded: rec roundness: roundness segments: segments color: color [
	"Draw rectangle with rounded edges"

	self ffiCall: #( void DrawRectangleRounded #( RLRectangle rec , float roundness , int segments , RLColor color ) )
]

{ #category : #'ffi-calls' }
RL class >> drawRectangleRoundedLines: rec roundness: roundness segments: segments lineThick: lineThick color: color [
	"Draw rectangle with rounded edges outline"

	self ffiCall: #( void DrawRectangleRoundedLines #( RLRectangle rec , float roundness , int segments , float lineThick , RLColor color ) )
]

{ #category : #'ffi-calls' }
RL class >> drawRectangleV: position size: size color: color [
	"Draw rectangle within an image (Vector version)"

	self ffiCall: #( void DrawRectangleV #( RLVector2 position , RLVector2 size , RLColor color ) )
]

{ #category : #'ffi-calls' }
RL class >> drawRing: center innerRadius: innerRadius outerRadius: outerRadius startAngle: startAngle endAngle: endAngle segments: segments color: color [
	"Draw ring"

	self ffiCall: #( void DrawRing #( RLVector2 center , float innerRadius , float outerRadius , float startAngle , float endAngle , int segments , RLColor color ) )
]

{ #category : #'ffi-calls' }
RL class >> drawRingLines: center innerRadius: innerRadius outerRadius: outerRadius startAngle: startAngle endAngle: endAngle segments: segments color: color [
	"Draw ring outline"

	self ffiCall: #( void DrawRingLines #( RLVector2 center , float innerRadius , float outerRadius , float startAngle , float endAngle , int segments , RLColor color ) )
]

{ #category : #'ffi-calls' }
RL class >> drawSphere: centerPos radius: radius color: color [
	"Draw sphere"

	self ffiCall: #( void DrawSphere #( RLVector3 centerPos , float radius , RLColor color ) )
]

{ #category : #'ffi-calls' }
RL class >> drawSphereEx: centerPos radius: radius rings: rings slices: slices color: color [
	"Draw sphere with extended parameters"

	self ffiCall: #( void DrawSphereEx #( RLVector3 centerPos , float radius , int rings , int slices , RLColor color ) )
]

{ #category : #'ffi-calls' }
RL class >> drawSphereWires: centerPos radius: radius rings: rings slices: slices color: color [
	"Draw sphere wires"

	self ffiCall: #( void DrawSphereWires #( RLVector3 centerPos , float radius , int rings , int slices , RLColor color ) )
]

{ #category : #'ffi-calls' }
RL class >> drawText: text posX: posX posY: posY fontSize: fontSize color: color [
	"Draw text (using default font) within an image (destination)"

	self ffiCall: #( void DrawText #( const char * text , int posX , int posY , int fontSize , RLColor color ) )
]

{ #category : #'ffi-calls' }
RL class >> drawTextCodepoint: font codepoint: codepoint position: position fontSize: fontSize tint: tint [
	"Draw one character (codepoint)"

	self ffiCall: #( void DrawTextCodepoint #( RLFont font , int codepoint , RLVector2 position , float fontSize , RLColor tint ) )
]

{ #category : #'ffi-calls' }
RL class >> drawTextEx: font text: text position: position fontSize: fontSize spacing: spacing tint: tint [
	"Draw text using font and additional parameters"

	self ffiCall: #( void DrawTextEx #( RLFont font , const char * text , RLVector2 position , float fontSize , float spacing , RLColor tint ) )
]

{ #category : #'ffi-calls' }
RL class >> drawTextRec: font text: text rec: rec fontSize: fontSize spacing: spacing wordWrap: wordWrap tint: tint [
	"Draw text using font inside rectangle limits"

	self ffiCall: #( void DrawTextRec #( RLFont font , const char * text , RLRectangle rec , float fontSize , float spacing , bool wordWrap , RLColor tint ) )
]

{ #category : #'ffi-calls' }
RL class >> drawTextRecEx: font text: text rec: rec fontSize: fontSize spacing: spacing wordWrap: wordWrap tint: tint selectStart: selectStart selectLength: selectLength selectTint: selectTint selectBackTint: selectBackTint [
	"Draw text using font inside rectangle limits with support for text selection"

	self ffiCall: #( void DrawTextRecEx #( RLFont font , const char * text , RLRectangle rec , float fontSize , float spacing , bool wordWrap , RLColor tint , int selectStart , int selectLength , RLColor selectTint , RLColor selectBackTint ) )
]

{ #category : #'ffi-calls' }
RL class >> drawTexture: texture posX: posX posY: posY tint: tint [
	"Draw a RLTexture2D"

	self ffiCall: #( void DrawTexture #( RLTexture2D texture , int posX , int posY , RLColor tint ) )
]

{ #category : #'ffi-calls' }
RL class >> drawTextureEx: texture position: position rotation: rotation scale: scale tint: tint [
	"Draw a RLTexture2D with extended parameters"

	self ffiCall: #( void DrawTextureEx #( RLTexture2D texture , RLVector2 position , float rotation , float scale , RLColor tint ) )
]

{ #category : #'ffi-calls' }
RL class >> drawTextureNPatch: texture nPatchInfo: nPatchInfo dest: dest origin: origin rotation: rotation tint: tint [
	"Draws a texture (or part of it) that stretches or shrinks nicely"

	self ffiCall: #( void DrawTextureNPatch #( RLTexture2D texture , RLNPatchInfo nPatchInfo , RLRectangle dest , RLVector2 origin , float rotation , RLColor tint ) )
]

{ #category : #'ffi-calls' }
RL class >> drawTexturePoly: texture center: center points: points texcoords: texcoords pointsCount: pointsCount tint: tint [
	"Draw a textured polygon"

	self ffiCall: #( void DrawTexturePoly #( RLTexture2D texture , RLVector2 center , RLVector2 * points , RLVector2 * texcoords , int pointsCount , RLColor tint ) )
]

{ #category : #'ffi-calls' }
RL class >> drawTexturePro: texture source: source dest: dest origin: origin rotation: rotation tint: tint [
	"Draw a part of a texture defined by a rectangle with 'pro' parameters"

	self ffiCall: #( void DrawTexturePro #( RLTexture2D texture , RLRectangle source , RLRectangle dest , RLVector2 origin , float rotation , RLColor tint ) )
]

{ #category : #'ffi-calls' }
RL class >> drawTextureQuad: texture tiling: tiling offset: offset quad: quad tint: tint [
	"Draw texture quad with tiling and offset parameters"

	self ffiCall: #( void DrawTextureQuad #( RLTexture2D texture , RLVector2 tiling , RLVector2 offset , RLRectangle quad , RLColor tint ) )
]

{ #category : #'ffi-calls' }
RL class >> drawTextureRec: texture source: source position: position tint: tint [
	"Draw a part of a texture defined by a rectangle"

	self ffiCall: #( void DrawTextureRec #( RLTexture2D texture , RLRectangle source , RLVector2 position , RLColor tint ) )
]

{ #category : #'ffi-calls' }
RL class >> drawTextureTiled: texture source: source dest: dest origin: origin rotation: rotation scale: scale tint: tint [
	"Draw part of a texture (defined by a rectangle) with rotation and scale tiled into dest."

	self ffiCall: #( void DrawTextureTiled #( RLTexture2D texture , RLRectangle source , RLRectangle dest , RLVector2 origin , float rotation , float scale , RLColor tint ) )
]

{ #category : #'ffi-calls' }
RL class >> drawTextureV: texture position: position tint: tint [
	"Draw a RLTexture2D with position defined as RLVector2"

	self ffiCall: #( void DrawTextureV #( RLTexture2D texture , RLVector2 position , RLColor tint ) )
]

{ #category : #'ffi-calls' }
RL class >> drawTriangle3D: v1 v2: v2 v3: v3 color: color [
	"Draw a color-filled triangle (vertex in counter-clockwise order!)"

	self ffiCall: #( void DrawTriangle3D #( RLVector3 v1 , RLVector3 v2 , RLVector3 v3 , RLColor color ) )
]

{ #category : #'ffi-calls' }
RL class >> drawTriangle: v1 v2: v2 v3: v3 color: color [
	"Draw a color-filled triangle (vertex in counter-clockwise order!)"

	self ffiCall: #( void DrawTriangle #( RLVector2 v1 , RLVector2 v2 , RLVector2 v3 , RLColor color ) )
]

{ #category : #'ffi-calls' }
RL class >> drawTriangleFan: points pointsCount: pointsCount color: color [
	"Draw a triangle fan defined by points (first vertex is the center)"

	self ffiCall: #( void DrawTriangleFan #( RLVector2 * points , int pointsCount , RLColor color ) )
]

{ #category : #'ffi-calls' }
RL class >> drawTriangleLines: v1 v2: v2 v3: v3 color: color [
	"Draw triangle outline (vertex in counter-clockwise order!)"

	self ffiCall: #( void DrawTriangleLines #( RLVector2 v1 , RLVector2 v2 , RLVector2 v3 , RLColor color ) )
]

{ #category : #'ffi-calls' }
RL class >> drawTriangleStrip3D: points pointsCount: pointsCount color: color [
	"Draw a triangle strip defined by points"

	self ffiCall: #( void DrawTriangleStrip3D #( RLVector3 * points , int pointsCount , RLColor color ) )
]

{ #category : #'ffi-calls' }
RL class >> drawTriangleStrip: points pointsCount: pointsCount color: color [
	"Draw a triangle strip defined by points"

	self ffiCall: #( void DrawTriangleStrip #( RLVector2 * points , int pointsCount , RLColor color ) )
]

{ #category : #'ffi-calls' }
RL class >> enableCursor [
	"Enables cursor (unlock cursor)"

	self ffiCall: #( void EnableCursor #( void ) )
]

{ #category : #'ffi-calls' }
RL class >> endBlendMode [
	"End blending mode (reset to default: alpha blending)"

	self ffiCall: #( void EndBlendMode #( void ) )
]

{ #category : #'ffi-calls' }
RL class >> endDrawing [
	"End canvas drawing and swap buffers (double buffering)"

	self ffiCall: #( void EndDrawing #( void ) )
]

{ #category : #'ffi-calls' }
RL class >> endMode2D [
	"Ends 2D mode with custom camera"

	self ffiCall: #( void EndMode2D #( void ) )
]

{ #category : #'ffi-calls' }
RL class >> endMode3D [
	"Ends 3D mode and returns to default 2D orthographic mode"

	self ffiCall: #( void EndMode3D #( void ) )
]

{ #category : #'ffi-calls' }
RL class >> endScissorMode [
	"End scissor mode"

	self ffiCall: #( void EndScissorMode #( void ) )
]

{ #category : #'ffi-calls' }
RL class >> endShaderMode [
	"End custom shader drawing (use default shader)"

	self ffiCall: #( void EndShaderMode #( void ) )
]

{ #category : #'ffi-calls' }
RL class >> endTextureMode [
	"Ends drawing to render texture"

	self ffiCall: #( void EndTextureMode #( void ) )
]

{ #category : #'ffi-calls' }
RL class >> endVrStereoMode [
	"End stereo rendering (requires VR simulator)"

	self ffiCall: #( void EndVrStereoMode #( void ) )
]

{ #category : #'ffi-calls' }
RL class >> exportImage: image fileName: fileName [
	"Export image data to file, returns true on success"

	^ self ffiCall: #( bool ExportImage #( RLImage image , const char * fileName ) )
]

{ #category : #'ffi-calls' }
RL class >> exportImageAsCode: image fileName: fileName [
	"Export image as code file defining an array of bytes, returns true on success"

	^ self ffiCall: #( bool ExportImageAsCode #( RLImage image , const char * fileName ) )
]

{ #category : #'ffi-calls' }
RL class >> exportMesh: mesh fileName: fileName [
	"Export mesh data to file, returns true on success"

	^ self ffiCall: #( bool ExportMesh #( RLMesh mesh , const char * fileName ) )
]

{ #category : #'ffi-calls' }
RL class >> exportWave: wave fileName: fileName [
	"Export wave data to file, returns true on success"

	^ self ffiCall: #( bool ExportWave #( RLWave wave , const char * fileName ) )
]

{ #category : #'ffi-calls' }
RL class >> exportWaveAsCode: wave fileName: fileName [
	"Export wave sample data to code (.h), returns true on success"

	^ self ffiCall: #( bool ExportWaveAsCode #( RLWave wave , const char * fileName ) )
]

{ #category : #'ffi-calls' }
RL class >> fade: color alpha: alpha [
	"Get color with alpha applied, alpha goes from 0.0f to 1.0f"

	^ self ffiCall: #( RLColor Fade #( RLColor color , float alpha ) )
]

{ #category : #accessing }
RL class >> ffiLibrary [

	^ RLLib
]

{ #category : #'ffi-calls' }
RL class >> fileExists: fileName [
	"Check if file exists"

	^ self ffiCall: #( bool FileExists #( const char * fileName ) )
]

{ #category : #'ffi-calls' }
RL class >> genImageCellular: width height: height tileSize: tileSize [
	"Generate image: cellular algorithm. Bigger tileSize means bigger cells"

	^ self ffiCall: #( RLImage GenImageCellular #( int width , int height , int tileSize ) )
]

{ #category : #'ffi-calls' }
RL class >> genImageChecked: width height: height checksX: checksX checksY: checksY col1: col1 col2: col2 [
	"Generate image: checked"

	^ self ffiCall: #( RLImage GenImageChecked #( int width , int height , int checksX , int checksY , RLColor col1 , RLColor col2 ) )
]

{ #category : #'ffi-calls' }
RL class >> genImageColor: width height: height color: color [
	"Generate image: plain color"

	^ self ffiCall: #( RLImage GenImageColor #( int width , int height , RLColor color ) )
]

{ #category : #'ffi-calls' }
RL class >> genImageFontAtlas: chars recs: recs charsCount: charsCount [
	"Generate image font atlas using chars info"

	^ self ffiCall: #( RLImage GenImageFontAtlas #( const RLCharInfo * chars , RLRectangle ** recs , int charsCount , int fontSize , int padding , int packMethod ) )
]

{ #category : #'ffi-calls' }
RL class >> genImageGradientH: width height: height left: left right: right [
	"Generate image: horizontal gradient"

	^ self ffiCall: #( RLImage GenImageGradientH #( int width , int height , RLColor left , RLColor right ) )
]

{ #category : #'ffi-calls' }
RL class >> genImageGradientRadial: width height: height density: density inner: inner outer: outer [
	"Generate image: radial gradient"

	^ self ffiCall: #( RLImage GenImageGradientRadial #( int width , int height , float density , RLColor inner , RLColor outer ) )
]

{ #category : #'ffi-calls' }
RL class >> genImageGradientV: width height: height top: top bottom: bottom [
	"Generate image: vertical gradient"

	^ self ffiCall: #( RLImage GenImageGradientV #( int width , int height , RLColor top , RLColor bottom ) )
]

{ #category : #'ffi-calls' }
RL class >> genImagePerlinNoise: width height: height offsetX: offsetX offsetY: offsetY scale: scale [
	"Generate image: perlin noise"

	^ self ffiCall: #( RLImage GenImagePerlinNoise #( int width , int height , int offsetX , int offsetY , float scale ) )
]

{ #category : #'ffi-calls' }
RL class >> genImageWhiteNoise: width height: height factor: factor [
	"Generate image: white noise"

	^ self ffiCall: #( RLImage GenImageWhiteNoise #( int width , int height , float factor ) )
]

{ #category : #'ffi-calls' }
RL class >> genMeshBinormals: mesh [
	"Compute mesh binormals"

	self ffiCall: #( void GenMeshBinormals #( RLMesh * mesh ) )
]

{ #category : #'ffi-calls' }
RL class >> genMeshCube: width height: height length: length [
	"Generate cuboid mesh"

	^ self ffiCall: #( RLMesh GenMeshCube #( float width , float height , float length ) )
]

{ #category : #'ffi-calls' }
RL class >> genMeshCubicmap: cubicmap cubeSize: cubeSize [
	"Generate cubes-based map mesh from image data"

	^ self ffiCall: #( RLMesh GenMeshCubicmap #( RLImage cubicmap , RLVector3 cubeSize ) )
]

{ #category : #'ffi-calls' }
RL class >> genMeshCylinder: radius height: height slices: slices [
	"Generate cylinder mesh"

	^ self ffiCall: #( RLMesh GenMeshCylinder #( float radius , float height , int slices ) )
]

{ #category : #'ffi-calls' }
RL class >> genMeshHeightmap: heightmap size: size [
	"Generate heightmap mesh from image data"

	^ self ffiCall: #( RLMesh GenMeshHeightmap #( RLImage heightmap , RLVector3 size ) )
]

{ #category : #'ffi-calls' }
RL class >> genMeshHemiSphere: radius rings: rings slices: slices [
	"Generate half-sphere mesh (no bottom cap)"

	^ self ffiCall: #( RLMesh GenMeshHemiSphere #( float radius , int rings , int slices ) )
]

{ #category : #'ffi-calls' }
RL class >> genMeshKnot: radius size: size radSeg: radSeg sides: sides [
	"Generate trefoil knot mesh"

	^ self ffiCall: #( RLMesh GenMeshKnot #( float radius , float size , int radSeg , int sides ) )
]

{ #category : #'ffi-calls' }
RL class >> genMeshPlane: width length: length resX: resX resZ: resZ [
	"Generate plane mesh (with subdivisions)"

	^ self ffiCall: #( RLMesh GenMeshPlane #( float width , float length , int resX , int resZ ) )
]

{ #category : #'ffi-calls' }
RL class >> genMeshPoly: sides radius: radius [
	"Generate polygonal mesh"

	^ self ffiCall: #( RLMesh GenMeshPoly #( int sides , float radius ) )
]

{ #category : #'ffi-calls' }
RL class >> genMeshSphere: radius rings: rings slices: slices [
	"Generate sphere mesh (standard sphere)"

	^ self ffiCall: #( RLMesh GenMeshSphere #( float radius , int rings , int slices ) )
]

{ #category : #'ffi-calls' }
RL class >> genMeshTangents: mesh [
	"Compute mesh tangents"

	self ffiCall: #( void GenMeshTangents #( RLMesh * mesh ) )
]

{ #category : #'ffi-calls' }
RL class >> genMeshTorus: radius size: size radSeg: radSeg sides: sides [
	"Generate torus mesh"

	^ self ffiCall: #( RLMesh GenMeshTorus #( float radius , float size , int radSeg , int sides ) )
]

{ #category : #'ffi-calls' }
RL class >> genTextureMipmaps: texture [
	"Generate GPU mipmaps for a texture"

	self ffiCall: #( void GenTextureMipmaps #( RLTexture2D * texture ) )
]

{ #category : #'ffi-calls' }
RL class >> getCameraMatrix2D: camera [
	"Get camera 2d transform matrix"

	^ self ffiCall: #( RLMatrix GetCameraMatrix2D #( RLCamera2D camera ) )
]

{ #category : #'ffi-calls' }
RL class >> getCameraMatrix: camera [
	"Get camera transform matrix (view matrix)"

	^ self ffiCall: #( RLMatrix GetCameraMatrix #( Camera camera ) )
]

{ #category : #'ffi-calls' }
RL class >> getCharPressed [
	"Get char pressed (unicode), call it multiple times for chars queued"

	^ self ffiCall: #( int GetCharPressed #( void ) )
]

{ #category : #'ffi-calls' }
RL class >> getClipboardText [
	"Get clipboard text content"

	^ self ffiCall: #( const char * GetClipboardText #( void ) )
]

{ #category : #'ffi-calls' }
RL class >> getCodepoint: text bytesProcessed: bytesProcessed [
	"Get next codepoint in a UTF8 encoded string, 0x3f('?') is returned on failure"

	^ self ffiCall: #( int GetCodepoint #( const char * text , int * bytesProcessed ) )
]

{ #category : #'ffi-calls' }
RL class >> getCodepointsCount: text [
	"Get total number of characters (codepoints) in a UTF8 encoded string"

	^ self ffiCall: #( int GetCodepointsCount #( const char * text ) )
]

{ #category : #'ffi-calls' }
RL class >> getCollisionRec: rec1 rec2: rec2 [
	"Get collision rectangle for two rectangles collision"

	^ self ffiCall: #( RLRectangle GetCollisionRec #( RLRectangle rec1 , RLRectangle rec2 ) )
]

{ #category : #'ffi-calls' }
RL class >> getColor: hexValue [
	"Get RLColor structure from hexadecimal value"

	^ self ffiCall: #( RLColor GetColor #( int hexValue ) )
]

{ #category : #'ffi-calls' }
RL class >> getCurrentMonitor [
	"Get current connected monitor"

	^ self ffiCall: #( int GetCurrentMonitor #( void ) )
]

{ #category : #'ffi-calls' }
RL class >> getDirectoryFiles: dirPath count: count [
	"Get filenames in a directory path (memory should be freed)"

	^ self ffiCall: #( char ** GetDirectoryFiles #( const char * dirPath , int * count ) )
]

{ #category : #'ffi-calls' }
RL class >> getDirectoryPath: filePath [
	"Get full path for a given fileName with path (uses static string)"

	^ self ffiCall: #( const char * GetDirectoryPath #( const char * filePath ) )
]

{ #category : #'ffi-calls' }
RL class >> getDroppedFiles: count [
	"Get dropped files names (memory should be freed)"

	^ self ffiCall: #( char ** GetDroppedFiles #( int * count ) )
]

{ #category : #'ffi-calls' }
RL class >> getFPS [
	"Get current FPS"

	^ self ffiCall: #( int GetFPS #( void ) )
]

{ #category : #'ffi-calls' }
RL class >> getFileExtension: fileName [
	"Get pointer to extension for a filename string (includes dot: '.png')"

	^ self ffiCall: #( const char * GetFileExtension #( const char * fileName ) )
]

{ #category : #'ffi-calls' }
RL class >> getFileModTime: fileName [
	"Get file modification time (last write time)"

	^ self ffiCall: #( long GetFileModTime #( const char * fileName ) )
]

{ #category : #'ffi-calls' }
RL class >> getFileName: filePath [
	"Get pointer to filename for a path string"

	^ self ffiCall: #( const char * GetFileName #( const char * filePath ) )
]

{ #category : #'ffi-calls' }
RL class >> getFileNameWithoutExt: filePath [
	"Get filename string without extension (uses static string)"

	^ self ffiCall: #( const char * GetFileNameWithoutExt #( const char * filePath ) )
]

{ #category : #'ffi-calls' }
RL class >> getFontDefault [
	"Get the default Font"

	^ self ffiCall: #( RLFont GetFontDefault #( void ) )
]

{ #category : #'ffi-calls' }
RL class >> getFrameTime [
	"Get time in seconds for last frame drawn (delta time)"

	^ self ffiCall: #( float GetFrameTime #( void ) )
]

{ #category : #'ffi-calls' }
RL class >> getGamepadAxisCount: gamepad [
	"Get gamepad axis count for a gamepad"

	^ self ffiCall: #( int GetGamepadAxisCount #( int gamepad ) )
]

{ #category : #'ffi-calls' }
RL class >> getGamepadAxisMovement: gamepad axis: axis [
	"Get axis movement value for a gamepad axis"

	^ self ffiCall: #( float GetGamepadAxisMovement #( int gamepad , int axis ) )
]

{ #category : #'ffi-calls' }
RL class >> getGamepadButtonPressed [
	"Get the last gamepad button pressed"

	^ self ffiCall: #( int GetGamepadButtonPressed #( void ) )
]

{ #category : #'ffi-calls' }
RL class >> getGamepadName: gamepad [
	"Get gamepad internal name id"

	^ self ffiCall: #( const char * GetGamepadName #( int gamepad ) )
]

{ #category : #'ffi-calls' }
RL class >> getGestureDetected [
	"Get latest detected gesture"

	^ self ffiCall: #( int GetGestureDetected #( void ) )
]

{ #category : #'ffi-calls' }
RL class >> getGestureDragAngle [
	"Get gesture drag angle"

	^ self ffiCall: #( float GetGestureDragAngle #( void ) )
]

{ #category : #'ffi-calls' }
RL class >> getGestureDragVector [
	"Get gesture pinch delta"

	^ self ffiCall: #( RLVector2 GetGestureDragVector #( void ) )
]

{ #category : #'ffi-calls' }
RL class >> getGestureHoldDuration [
	"Get gesture hold time in milliseconds"

	^ self ffiCall: #( float GetGestureHoldDuration #( void ) )
]

{ #category : #'ffi-calls' }
RL class >> getGesturePinchAngle [
	"Get gesture pinch angle"

	^ self ffiCall: #( float GetGesturePinchAngle #( void ) )
]

{ #category : #'ffi-calls' }
RL class >> getGesturePinchVector [
	"Get gesture pinch delta"

	^ self ffiCall: #( RLVector2 GetGesturePinchVector #( void ) )
]

{ #category : #'ffi-calls' }
RL class >> getGlyphIndex: font codepoint: codepoint [
	"Get index position for a unicode character on font"

	^ self ffiCall: #( int GetGlyphIndex #( RLFont font , int codepoint ) )
]

{ #category : #'ffi-calls' }
RL class >> getImageAlphaBorder: image threshold: threshold [
	"Get image alpha border rectangle"

	^ self ffiCall: #( RLRectangle GetImageAlphaBorder #( RLImage image , float threshold ) )
]

{ #category : #'ffi-calls' }
RL class >> getKeyPressed [
	"Get key pressed (keycode), call it multiple times for keys queued"

	^ self ffiCall: #( int GetKeyPressed #( void ) )
]

{ #category : #'ffi-calls' }
RL class >> getMeshBoundingBox: mesh [
	"Compute mesh bounding box limits"

	^ self ffiCall: #( BoundingBox GetMeshBoundingBox #( RLMesh mesh ) )
]

{ #category : #'ffi-calls' }
RL class >> getMonitorCount [
	"Get number of connected monitors"

	^ self ffiCall: #( int GetMonitorCount #( void ) )
]

{ #category : #'ffi-calls' }
RL class >> getMonitorHeight: monitor [
	"Get specified monitor height (max available by monitor)"

	^ self ffiCall: #( int GetMonitorHeight #( int monitor ) )
]

{ #category : #'ffi-calls' }
RL class >> getMonitorName: monitor [
	"Get the human-readable, UTF-8 encoded name of the primary monitor"

	^ self ffiCall: #( const char * GetMonitorName #( int monitor ) )
]

{ #category : #'ffi-calls' }
RL class >> getMonitorPhysicalHeight: monitor [
	"Get specified monitor physical height in millimetres"

	^ self ffiCall: #( int GetMonitorPhysicalHeight #( int monitor ) )
]

{ #category : #'ffi-calls' }
RL class >> getMonitorPhysicalWidth: monitor [
	"Get specified monitor physical width in millimetres"

	^ self ffiCall: #( int GetMonitorPhysicalWidth #( int monitor ) )
]

{ #category : #'ffi-calls' }
RL class >> getMonitorPosition: monitor [
	"Get specified monitor position"

	^ self ffiCall: #( RLVector2 GetMonitorPosition #( int monitor ) )
]

{ #category : #'ffi-calls' }
RL class >> getMonitorRefreshRate: monitor [
	"Get specified monitor refresh rate"

	^ self ffiCall: #( int GetMonitorRefreshRate #( int monitor ) )
]

{ #category : #'ffi-calls' }
RL class >> getMonitorWidth: monitor [
	"Get specified monitor width (max available by monitor)"

	^ self ffiCall: #( int GetMonitorWidth #( int monitor ) )
]

{ #category : #'ffi-calls' }
RL class >> getMouseDelta [
	"Get mouse delta between frames"

	^ self ffiCall: #( RLVector2 GetMouseDelta #( void ) )
]

{ #category : #'ffi-calls' }
RL class >> getMousePosition [
	"Get mouse position XY"

	^ self ffiCall: #( RLVector2 GetMousePosition #( void ) )
]

{ #category : #'ffi-calls' }
RL class >> getMouseRay: mousePosition camera: camera [
	"Get a ray trace from mouse position"

	^ self ffiCall: #( RLRay GetMouseRay #( RLVector2 mousePosition , Camera camera ) )
]

{ #category : #'ffi-calls' }
RL class >> getMouseWheelMove [
	"Get mouse wheel movement Y"

	^ self ffiCall: #( float GetMouseWheelMove #( void ) )
]

{ #category : #'ffi-calls' }
RL class >> getMouseX [
	"Get mouse position X"

	^ self ffiCall: #( int GetMouseX #( void ) )
]

{ #category : #'ffi-calls' }
RL class >> getMouseY [
	"Get mouse position Y"

	^ self ffiCall: #( int GetMouseY #( void ) )
]

{ #category : #'ffi-calls' }
RL class >> getMusicTimeLength: music [
	"Get music time length (in seconds)"

	^ self ffiCall: #( float GetMusicTimeLength #( RLMusic music ) )
]

{ #category : #'ffi-calls' }
RL class >> getMusicTimePlayed: music [
	"Get current music time played (in seconds)"

	^ self ffiCall: #( float GetMusicTimePlayed #( RLMusic music ) )
]

{ #category : #'ffi-calls' }
RL class >> getPixelColor: srcPtr type: type [
	"Get RLColor from a source pixel pointer of certain format"

	^ self ffiCall: #( RLColor GetPixelColor #( void * srcPtr , int type ) )
]

{ #category : #'ffi-calls' }
RL class >> getPixelDataSize: width height: height type: type [
	"Get pixel data size in bytes for certain format"

	self ffiCall: #( int GetPixelDataSize #( int width , int height , int type ) )
]

{ #category : #'ffi-calls' }
RL class >> getPrevDirectoryPath: dirPath [
	"Get previous directory path for a given path (uses static string)"

	^ self ffiCall: #( const char * GetPrevDirectoryPath #( const char * dirPath ) )
]

{ #category : #'ffi-calls' }
RL class >> getRandomValue: min max: max [
	"Get a random value between min and max (both included)"

	^ self ffiCall: #( int GetRandomValue #( int min , int max ) )
]

{ #category : #'ffi-calls' }
RL class >> getRayCollisionBox: ray box: box [
	"Get collision info between ray and box"

	^ self ffiCall: #( RLRayCollision GetRayCollisionBox #( RLRay ray , BoundingBox box ) )
]

{ #category : #'ffi-calls' }
RL class >> getRayCollisionMesh: ray mesh: mesh transform: transform [
	"Get collision info between ray and mesh"

	^ self ffiCall: #( RLRayCollision GetRayCollisionMesh #( RLRay ray , RLMesh mesh , RLMatrix transform ) )
]

{ #category : #'ffi-calls' }
RL class >> getRayCollisionModel: ray model: model [
	"Get collision info between ray and model"

	^ self ffiCall: #( RLRayCollision GetRayCollisionModel #( RLRay ray , RLModel model ) )
]

{ #category : #'ffi-calls' }
RL class >> getRayCollisionQuad: ray p1: p1 p2: p2 p3: p3 p4: p4 [
	"Get collision info between ray and quad"

	^ self ffiCall: #( RLRayCollision GetRayCollisionQuad #( RLRay ray , RLVector3 p1 , RLVector3 p2 , RLVector3 p3 , RLVector3 p4 ) )
]

{ #category : #'ffi-calls' }
RL class >> getRayCollisionSphere: ray center: center radius: radius [
	"Get collision info between ray and sphere"

	^ self ffiCall: #( RLRayCollision GetRayCollisionSphere #( RLRay ray , RLVector3 center , float radius ) )
]

{ #category : #'ffi-calls' }
RL class >> getRayCollisionTriangle: ray p1: p1 p2: p2 p3: p3 [
	"Get collision info between ray and triangle"

	^ self ffiCall: #( RLRayCollision GetRayCollisionTriangle #( RLRay ray , RLVector3 p1 , RLVector3 p2 , RLVector3 p3 ) )
]

{ #category : #'ffi-calls' }
RL class >> getScreenHeight [
	"Get current screen height"

	^ self ffiCall: #( int GetScreenHeight #( void ) )
]

{ #category : #'ffi-calls' }
RL class >> getScreenToWorld2D: position camera: camera [
	"Get the world space position for a 2d camera screen space position"

	^ self ffiCall: #( RLVector2 GetScreenToWorld2D #( RLVector2 position , RLCamera2D camera ) )
]

{ #category : #'ffi-calls' }
RL class >> getScreenWidth [
	"Get current screen width"

	^ self ffiCall: #( int GetScreenWidth #( void ) )
]

{ #category : #'ffi-calls' }
RL class >> getShaderLocation: shader uniformName: uniformName [
	"Get shader uniform location"

	^ self ffiCall: #( int GetShaderLocation #( RLShader shader , const char * uniformName ) )
]

{ #category : #'ffi-calls' }
RL class >> getShaderLocationAttrib: shader attribName: attribName [
	"Get shader attribute location"

	^ self ffiCall: #( int GetShaderLocationAttrib #( RLShader shader , const char * attribName ) )
]

{ #category : #'ffi-calls' }
RL class >> getSoundsPlaying [
	"Get number of sounds playing in the multichannel"

	^ self ffiCall: #( int GetSoundsPlaying #( void ) )
]

{ #category : #'ffi-calls' }
RL class >> getTime [
	"Get elapsed time in seconds since InitWindow()"

	^ self ffiCall: #( double GetTime #( void ) )
]

{ #category : #'ffi-calls' }
RL class >> getTouchPointsCount [
	"Get touch points count"

	^ self ffiCall: #( int GetTouchPointsCount #( void ) )
]

{ #category : #'ffi-calls' }
RL class >> getTouchPosition: index [
	"Get touch position XY for a touch point index (relative to screen size)"

	^ self ffiCall: #( RLVector2 GetTouchPosition #( int index ) )
]

{ #category : #'ffi-calls' }
RL class >> getTouchX [
	"Get touch position X for touch point 0 (relative to screen size)"

	^ self ffiCall: #( int GetTouchX #( void ) )
]

{ #category : #'ffi-calls' }
RL class >> getTouchY [
	"Get touch position Y for touch point 0 (relative to screen size)"

	^ self ffiCall: #( int GetTouchY #( void ) )
]

{ #category : #'ffi-calls' }
RL class >> getWindowHandle [
	"Get native window handle"

	^ self ffiCall: #( void * GetWindowHandle #( void ) )
]

{ #category : #'ffi-calls' }
RL class >> getWindowPosition [
	"Get window position XY on monitor"

	^ self ffiCall: #( RLVector2 GetWindowPosition #( void ) )
]

{ #category : #'ffi-calls' }
RL class >> getWindowScaleDPI [
	"Get window scale DPI factor"

	^ self ffiCall: #( RLVector2 GetWindowScaleDPI #( void ) )
]

{ #category : #'ffi-calls' }
RL class >> getWorkingDirectory [
	"Get current working directory (uses static string)"

	^ self ffiCall: #( const char * GetWorkingDirectory #( void ) )
]

{ #category : #'ffi-calls' }
RL class >> getWorldToScreen2D: position camera: camera [
	"Get the screen space position for a 2d camera world space position"

	^ self ffiCall: #( RLVector2 GetWorldToScreen2D #( RLVector2 position , RLCamera2D camera ) )
]

{ #category : #'ffi-calls' }
RL class >> getWorldToScreen: position camera: camera [
	"Get the screen space position for a 3d world space position"

	^ self ffiCall: #( RLVector2 GetWorldToScreen #( RLVector3 position , Camera camera ) )
]

{ #category : #'ffi-calls' }
RL class >> getWorldToScreenEx: position camera: camera width: width height: height [
	"Get size position for a 3d world space position"

	^ self ffiCall: #( RLVector2 GetWorldToScreenEx #( RLVector3 position , Camera camera , int width , int height ) )
]

{ #category : #'ffi-calls' }
RL class >> hideCursor [
	"Hides cursor"

	self ffiCall: #( void HideCursor #( void ) )
]

{ #category : #'ffi-calls' }
RL class >> imageAlphaClear: image color: color threshold: threshold [
	"Clear alpha channel to desired color"

	self ffiCall: #( void ImageAlphaClear #( RLImage * image , RLColor color , float threshold ) )
]

{ #category : #'ffi-calls' }
RL class >> imageAlphaCrop: image threshold: threshold [
	"Crop image depending on alpha value"

	self ffiCall: #( void ImageAlphaCrop #( RLImage * image , float threshold ) )
]

{ #category : #'ffi-calls' }
RL class >> imageAlphaMask: image alphaMask: alphaMask [
	"Apply alpha mask to image"

	self ffiCall: #( void ImageAlphaMask #( RLImage * image , RLImage alphaMask ) )
]

{ #category : #'ffi-calls' }
RL class >> imageAlphaPremultiply: image [
	"Premultiply alpha channel"

	self ffiCall: #( void ImageAlphaPremultiply #( RLImage * image ) )
]

{ #category : #'ffi-calls' }
RL class >> imageClearBackground: dst color: color [
	"Clear image background with given color"

	self ffiCall: #( void ImageClearBackground #( RLImage * dst , RLColor color ) )
]

{ #category : #'ffi-calls' }
RL class >> imageColorBrightness: image brightness: brightness [
	"Modify image color: brightness (-255 to 255)"

	self ffiCall: #( void ImageColorBrightness #( RLImage * image , int brightness ) )
]

{ #category : #'ffi-calls' }
RL class >> imageColorContrast: image contrast: contrast [
	"Modify image color: contrast (-100 to 100)"

	self ffiCall: #( void ImageColorContrast #( RLImage * image , float contrast ) )
]

{ #category : #'ffi-calls' }
RL class >> imageColorGrayscale: image [
	"Modify image color: grayscale"

	self ffiCall: #( void ImageColorGrayscale #( RLImage * image ) )
]

{ #category : #'ffi-calls' }
RL class >> imageColorInvert: image [
	"Modify image color: invert"

	self ffiCall: #( void ImageColorInvert #( RLImage * image ) )
]

{ #category : #'ffi-calls' }
RL class >> imageColorReplace: image color: color replace: replace [
	"Modify image color: replace color"

	self ffiCall: #( void ImageColorReplace #( RLImage * image , RLColor color , RLColor replace ) )
]

{ #category : #'ffi-calls' }
RL class >> imageColorTint: image color: color [
	"Modify image color: tint"

	self ffiCall: #( void ImageColorTint #( RLImage * image , RLColor color ) )
]

{ #category : #'ffi-calls' }
RL class >> imageCopy: image [
	"Create an image duplicate (useful for transformations)"

	^ self ffiCall: #( RLImage ImageCopy #( RLImage image ) )
]

{ #category : #'ffi-calls' }
RL class >> imageCrop: image crop: crop [
	"Crop an image to a defined rectangle"

	self ffiCall: #( void ImageCrop #( RLImage * image , RLRectangle crop ) )
]

{ #category : #'ffi-calls' }
RL class >> imageDither: image rBpp: rBpp gBpp: gBpp bBpp: bBpp aBpp: aBpp [
	"Dither image data to 16bpp or lower (Floyd-Steinberg dithering)"

	self ffiCall: #( void ImageDither #( RLImage * image , int rBpp , int gBpp , int bBpp , int aBpp ) )
]

{ #category : #'ffi-calls' }
RL class >> imageDraw: dst src: src srcRec: srcRec dstRec: dstRec tint: tint [
	"Draw a source image within a destination image (tint applied to source)"

	self ffiCall: #( void ImageDraw #( RLImage * dst , RLImage src , RLRectangle srcRec , RLRectangle dstRec , RLColor tint ) )
]

{ #category : #'ffi-calls' }
RL class >> imageDrawCircle: dst centerX: centerX centerY: centerY radius: radius color: color [
	"Draw circle within an image"

	self ffiCall: #( void ImageDrawCircle #( RLImage * dst , int centerX , int centerY , int radius , RLColor color ) )
]

{ #category : #'ffi-calls' }
RL class >> imageDrawCircleV: dst center: center radius: radius color: color [
	"Draw line within an image (Vector version)"

	self ffiCall: #( void ImageDrawCircleV #( RLImage * dst , RLVector2 center , int radius , RLColor color ) )
]

{ #category : #'ffi-calls' }
RL class >> imageDrawLine: dst startPosX: startPosX startPosY: startPosY endPosX: endPosY color: color [
	"Draw line within an image"

	self ffiCall: #( void ImageDrawLine #( RLImage * dst , int startPosX , int startPosY , int endPosX , int endPosY , RLColor color ) )
]

{ #category : #'ffi-calls' }
RL class >> imageDrawLineV: dst start: start end: end color: color [
	"Draw line within an image (Vector version)"

	self ffiCall: #( void ImageDrawLineV #( RLImage * dst , RLVector2 start , RLVector2 end , RLColor color ) )
]

{ #category : #'ffi-calls' }
RL class >> imageDrawPixel: dst posX: posX posY: posY color: color [
	"Draw pixel within an image"

	self ffiCall: #( void ImageDrawPixel #( RLImage * dst , int posX , int posY , RLColor color ) )
]

{ #category : #'ffi-calls' }
RL class >> imageDrawPixelV: dst position: position color: color [
	"Draw pixel within an image (Vector version)"

	self ffiCall: #( void ImageDrawPixelV #( RLImage * dst , RLVector2 position , RLColor color ) )
]

{ #category : #'ffi-calls' }
RL class >> imageDrawRectangle: dst posX: posX posY: posY width: width height: height color: color [
	"Draw rectangle within an image"

	self ffiCall: #( void ImageDrawRectangle #( RLImage * dst , int posX , int posY , int width , int height , RLColor color ) )
]

{ #category : #'ffi-calls' }
RL class >> imageDrawRectangleLines: dst rec: rec thick: thick color: color [
	"Draw rectangle lines within an image"

	self ffiCall: #( void ImageDrawRectangleLines #( RLImage * dst , RLRectangle rec , int thick , RLColor color ) )
]

{ #category : #'ffi-calls' }
RL class >> imageDrawRectangleRec: dst rec: rec color: color [
	"Draw rectangle within an image"

	self ffiCall: #( void ImageDrawRectangleRec #( RLImage * dst , RLRectangle rec , RLColor color ) )
]

{ #category : #'ffi-calls' }
RL class >> imageDrawRectangleV: dst position: position size: size color: color [
	"Draw rectangle within an image (Vector version)"

	self ffiCall: #( void ImageDrawRectangleV #( RLImage * dst , RLVector2 position , RLVector2 size , RLColor color ) )
]

{ #category : #'ffi-calls' }
RL class >> imageDrawText: dst text: text posX: posX posY: posY fontSize: fontSize color: color [
	"Create an image from text (default font)"

	self ffiCall: #( void ImageDrawText #( RLImage * dst , const char * text , int posX , int posY , int fontSize , RLColor color ) )
]

{ #category : #'ffi-calls' }
RL class >> imageDrawTextEx: dst font: font text: text position: position fontSize: fontSize spacing: spacing tint: tint [
	"Create an image from text (custom sprite font)"

	self ffiCall: #( void ImageDrawTextEx #( RLImage * dst , RLFont font , const char * text , RLVector2 position , float fontSize , float spacing , RLColor tint ) )
]

{ #category : #'ffi-calls' }
RL class >> imageFlipHorizontal: image [
	"Flip image horizontally"

	self ffiCall: #( void ImageFlipHorizontal #( RLImage * image ) )
]

{ #category : #'ffi-calls' }
RL class >> imageFlipVertical: image [
	"Flip image vertically"

	self ffiCall: #( void ImageFlipVertical #( RLImage * image ) )
]

{ #category : #'ffi-calls' }
RL class >> imageFormat: image newFormat: newFormat [
	"Convert image data to desired format"

	self ffiCall: #( void ImageFormat #( RLImage * image , int newFormat ) )
]

{ #category : #'ffi-calls' }
RL class >> imageFromImage: image rec: rec [
	"Create an image from another image piece"

	^ self ffiCall: #( RLImage ImageFromImage #( RLImage image , RLRectangle rec ) )
]

{ #category : #'ffi-calls' }
RL class >> imageMipmaps: image [
	"Compute all mipmap levels for a provided image"

	self ffiCall: #( void ImageMipmaps #( RLImage * image ) )
]

{ #category : #'ffi-calls' }
RL class >> imageResize: image newWidth: newWidth newHeight: newHeight [
	"Bicubic scaling algorithm"

	self ffiCall: #( void ImageResize #( RLImage * image , int newWidth , int newHeight ) )
]

{ #category : #'ffi-calls' }
RL class >> imageResizeCanvas: image newWidth: newWidth newHeight: newHeight offsetX: offsetX offsetY: offsetY fill: fill [
	"Resize canvas and fill with color"

	self ffiCall: #( void ImageResizeCanvas #( RLImage * image , int newWidth , int newHeight , int offsetX , int offsetY , RLColor fill ) )
]

{ #category : #'ffi-calls' }
RL class >> imageResizeNN: image newWidth: newWidth newHeight: newHeight [
	"Nearest-Neighbor scaling algorithm"

	self ffiCall: #( void ImageResizeNN #( RLImage * image , int newWidth , int newHeight ) )
]

{ #category : #'ffi-calls' }
RL class >> imageRotateCCW: image [
	"Rotate image counter-clockwise 90deg"

	self ffiCall: #( void ImageRotateCCW #( RLImage * image ) )
]

{ #category : #'ffi-calls' }
RL class >> imageRotateCW: image [
	"Rotate image clockwise 90deg"

	self ffiCall: #( void ImageRotateCW #( RLImage * image ) )
]

{ #category : #'ffi-calls' }
RL class >> imageText: text fontSize: fontSize color: color [
	"Create an image from text (default font)"

	^ self ffiCall: #( RLImage ImageText #( const char * text , int fontSize , RLColor color ) )
]

{ #category : #'ffi-calls' }
RL class >> imageTextEx: font text: text fontSize: fontSize spacing: spacing tint: tint [
	"Create an image from text (custom sprite font)"

	^ self ffiCall: #( RLImage ImageTextEx #( RLFont font , const char * text , float fontSize , float spacing , RLColor tint ) )
]

{ #category : #'ffi-calls' }
RL class >> imageToPOT: image fill: fill [
	"Convert image to POT (power-of-two)"

	self ffiCall: #( void ImageToPOT #( RLImage * image , RLColor fill ) )
]

{ #category : #'ffi-calls' }
RL class >> initAudioDevice [
	"Initialize audio device and context"

	self ffiCall: #( void InitAudioDevice #( void ) )
]

{ #category : #'ffi-calls' }
RL class >> initWindow: width height: height title: title [
	"Initialize window and OpenGL context"

	self ffiCall: #( void InitWindow #( int width , int height , const char * title ) )
]

{ #category : #'ffi-calls' }
RL class >> isAudioDeviceReady [
	"Check if audio device has been initialized successfully"

	^ self ffiCall: #( bool IsAudioDeviceReady #( void ) )
]

{ #category : #'ffi-calls' }
RL class >> isAudioStreamPlaying: stream [
	"Check if audio stream is playing"

	^ self ffiCall: #( bool IsAudioStreamPlaying #( RLAudioStream stream ) )
]

{ #category : #'ffi-calls' }
RL class >> isAudioStreamProcessed: stream [
	"Check if any audio stream buffers requires refill"

	^ self ffiCall: #( bool IsAudioStreamProcessed #( RLAudioStream stream ) )
]

{ #category : #'ffi-calls' }
RL class >> isCursorHidden [
	"Check if cursor is not visible"

	^ self ffiCall: #( bool IsCursorHidden #( void ) )
]

{ #category : #'ffi-calls' }
RL class >> isCursorOnScreen [
	"Check if cursor is on the screen"

	^ self ffiCall: #( bool IsCursorOnScreen #( void ) )
]

{ #category : #'ffi-calls' }
RL class >> isFileDropped [
	"Check if a file has been dropped into window"

	^ self ffiCall: #( bool IsFileDropped #( void ) )
]

{ #category : #'ffi-calls' }
RL class >> isFileExtension: fileName ext: ext [
	"Check file extension (including point: .png, .wav)"

	^ self ffiCall: #( bool IsFileExtension #( const char * fileName , const char * ext ) )
]

{ #category : #'ffi-calls' }
RL class >> isGamepadAvailable: gamepad [
	"Check if a gamepad is available"

	^ self ffiCall: #( bool IsGamepadAvailable #( int gamepad ) )
]

{ #category : #'ffi-calls' }
RL class >> isGamepadButtonDown: gamepad button: button [
	"Check if a gamepad button is being pressed"

	^ self ffiCall: #( bool IsGamepadButtonDown #( int gamepad , int button ) )
]

{ #category : #'ffi-calls' }
RL class >> isGamepadButtonPressed: gamepad button: button [
	"Check if a gamepad button has been pressed once"

	^ self ffiCall: #( bool IsGamepadButtonPressed #( int gamepad , int button ) )
]

{ #category : #'ffi-calls' }
RL class >> isGamepadButtonReleased: gamepad button: button [
	"Check if a gamepad button has been released once"

	^ self ffiCall: #( bool IsGamepadButtonReleased #( int gamepad , int button ) )
]

{ #category : #'ffi-calls' }
RL class >> isGamepadButtonUp: gamepad button: button [
	"Check if a gamepad button is NOT being pressed"

	^ self ffiCall: #( bool IsGamepadButtonUp #( int gamepad , int button ) )
]

{ #category : #'ffi-calls' }
RL class >> isGamepadName: gamepad gamepadname: gamepadname [
	"Get gamepad internal name id"

	^ self ffiCall: #( bool IsGamepadName #( int gamepad , const char * gamepadname ) )
]

{ #category : #'ffi-calls' }
RL class >> isGestureDetected: gesture [
	"Check if a gesture have been detected"

	^ self ffiCall: #( bool IsGestureDetected #( int gesture ) )
]

{ #category : #'ffi-calls' }
RL class >> isKeyDown: key [
	"Check if a key is being pressed"

	^ self ffiCall: #( bool IsKeyDown #( int key ) )
]

{ #category : #'ffi-calls' }
RL class >> isKeyPressed: key [
	"Check if a key has been pressed once"

	^ self ffiCall: #( bool IsKeyPressed #( int key ) )
]

{ #category : #'ffi-calls' }
RL class >> isKeyReleased: key [
	"Check if a key has been released once"

	^ self ffiCall: #( bool IsKeyReleased #( int key ) )
]

{ #category : #'ffi-calls' }
RL class >> isKeyUp: key [
	"Check if a key is NOT being pressed"

	^ self ffiCall: #( bool IsKeyUp #( int key ) )
]

{ #category : #'ffi-calls' }
RL class >> isModelAnimationValid: model anim: anim [
	"Check model animation skeleton match"

	^ self ffiCall: #( bool IsModelAnimationValid #( RLModel model , RLModelAnimation anim ) )
]

{ #category : #'ffi-calls' }
RL class >> isMouseButtonDown: button [
	"Check if a mouse button is being pressed"

	^ self ffiCall: #( bool IsMouseButtonDown #( int button ) )
]

{ #category : #'ffi-calls' }
RL class >> isMouseButtonPressed: button [
	"Check if a mouse button has been pressed once"

	^ self ffiCall: #( bool IsMouseButtonPressed #( int button ) )
]

{ #category : #'ffi-calls' }
RL class >> isMouseButtonReleased: button [
	"Check if a mouse button has been released once"

	^ self ffiCall: #( bool IsMouseButtonReleased #( int button ) )
]

{ #category : #'ffi-calls' }
RL class >> isMouseButtonUp: button [
	"Check if a mouse button is NOT being pressed"

	^ self ffiCall: #( bool IsMouseButtonUp #( int button ) )
]

{ #category : #'ffi-calls' }
RL class >> isMusicStreamPlaying: music [
	"Check if music is playing"

	^ self ffiCall: #( bool IsMusicStreamPlaying #( RLMusic music ) )
]

{ #category : #'ffi-calls' }
RL class >> isSoundPlaying: sound [
	"Check if a sound is currently playing"

	^ self ffiCall: #( bool IsSoundPlaying #( RLSound sound ) )
]

{ #category : #'ffi-calls' }
RL class >> isWindowFocused [
	"Check if window is currently focused (only PLATFORM_DESKTOP)"

	^ self ffiCall: #( bool IsWindowFocused #( void ) )
]

{ #category : #'ffi-calls' }
RL class >> isWindowFullscreen [
	"Check if window is currently fullscreen"

	^ self ffiCall: #( bool IsWindowFullscreen #( void ) )
]

{ #category : #'ffi-calls' }
RL class >> isWindowHidden [
	"Check if window is currently hidden (only PLATFORM_DESKTOP)"

	^ self ffiCall: #( bool IsWindowHidden #( void ) )
]

{ #category : #'ffi-calls' }
RL class >> isWindowMaximized [
	"Check if window is currently maximized (only PLATFORM_DESKTOP)"

	^ self ffiCall: #( bool IsWindowMaximized #( void ) )
]

{ #category : #'ffi-calls' }
RL class >> isWindowMinimized [
	"Check if window is currently minimized (only PLATFORM_DESKTOP)"

	^ self ffiCall: #( bool IsWindowMinimized #( void ) )
]

{ #category : #'ffi-calls' }
RL class >> isWindowReady [
	"Check if window has been initialized successfully"

	^ self ffiCall: #( bool IsWindowReady #( void ) )
]

{ #category : #'ffi-calls' }
RL class >> isWindowResized [
	"Check if window has been resized last frame"

	^ self ffiCall: #( bool IsWindowResized #( void ) )
]

{ #category : #'ffi-calls' }
RL class >> isWindowState: flag [
	"Check if one specific window flag is enabled"

	^ self ffiCall: #( bool IsWindowState #( unsigned int flag ) )
]

{ #category : #'ffi-calls' }
RL class >> loadAudioStream: sampleRate sampleSize: sampleSize channels: channels [
	"Load audio stream (to stream raw audio pcm data)"

	^ self ffiCall: #( RLAudioStream LoadAudioStream #( unsigned int sampleRate , unsigned int sampleSize , unsigned int channels ) )
]

{ #category : #'ffi-calls' }
RL class >> loadCodepoints: text count: count [
	"Load all codepoints from a UTF8 text string, codepoints count returned by parameter"

	^ self ffiCall: #( int * LoadCodepoints #( const char * text , int * count ) )
]

{ #category : #'ffi-calls' }
RL class >> loadFileData: fileName bytesRead: bytesRead [
	"Load file data as byte array (read)"

	^ self ffiCall: #( unsigned char * LoadFileData #( const char * fileName , unsigned int * bytesRead ) )
]

{ #category : #'ffi-calls' }
RL class >> loadFileText: fileName [
	"Load text data from file (read), returns a '\0' terminated string"

	^ self ffiCall: #( char * LoadFileText #( const char * fileName ) )
]

{ #category : #'ffi-calls' }
RL class >> loadFont: fileName [
	"Load font from file into GPU memory (VRAM)"

	^ self ffiCall: #( RLFont LoadFont #( const char * fileName ) )
]

{ #category : #'ffi-calls' }
RL class >> loadFontData: fileData dataSize: dataSize fontSize: fontSize fontChars: fontChars charsCount: charsCount type: type [
	"Load font data for further use"

	^ self ffiCall: #( RLCharInfo * LoadFontData #( const unsigned char * fileData , int dataSize , int fontSize , int * fontChars , int charsCount , int type ) )
]

{ #category : #'ffi-calls' }
RL class >> loadFontEx: fileName fontSize: fontSize fontChars: fontChars charsCount: charsCount [
	"Load font from file with extended parameters"

	^ self ffiCall: #( RLFont LoadFontEx #( const char * fileName , int fontSize , int * fontChars , int charsCount ) )
]

{ #category : #'ffi-calls' }
RL class >> loadFontFromImage: image key: key firstChar: firstChar [
	"Load font from RLImage (XNA style)"

	^ self ffiCall: #( RLFont LoadFontFromImage #( RLImage image , RLColor key , int firstChar ) )
]

{ #category : #'ffi-calls' }
RL class >> loadFontFromMemory: fileType fileData: fileData dataSize: dataSize fontSize: fontSize fontChars: fontChars charsCount: charsCount [
	"Load font from memory buffer, fileType refers to extension: i.e. '.ttf'"

	^ self ffiCall: #( RLFont LoadFontFromMemory #( const char * fileType , const unsigned char * fileData , int dataSize , int fontSize , int * fontChars , int charsCount ) )
]

{ #category : #'ffi-calls' }
RL class >> loadImage: fileName [
	"Load image from file into CPU memory (RAM)"

	^ self ffiCall: #( RLImage LoadImage #( const char * fileName ) )
]

{ #category : #'ffi-calls' }
RL class >> loadImageAnim: fileName frames: frames [
	"Load image sequence from file (frames appended to image.data)"

	^ self ffiCall: #( RLImage LoadImageAnim #( const char * fileName , int * frames ) )
]

{ #category : #'ffi-calls' }
RL class >> loadImageColors: image [
	"Load color data from image as a RLColor array (RGBA - 32bit)"

	^ self ffiCall: #( RLColor * LoadImageColors #( RLImage image ) )
]

{ #category : #'ffi-calls' }
RL class >> loadImageFromMemory: fileType fileData: fileData dataSize: dataSize [
	"Load image from memory buffer, fileType refers to extension: i.e. '.png'"

	^ self ffiCall: #( RLImage LoadImageFromMemory #( const char * fileType , const unsigned char * fileData , int dataSize ) )
]

{ #category : #'ffi-calls' }
RL class >> loadImageFromScreen [
	"Load image from screen buffer and (screenshot)"

	^ self ffiCall: #( RLImage LoadImageFromScreen #( void ) )
]

{ #category : #'ffi-calls' }
RL class >> loadImageFromTexture: texture [
	"Load image from GPU texture data"

	^ self ffiCall: #( RLImage LoadImageFromTexture #( RLTexture2D texture ) )
]

{ #category : #'ffi-calls' }
RL class >> loadImagePalette: image maxPaletteSize: maxPaletteSize colorsCount: colorsCount [
	"Load colors palette from image as a RLColor array (RGBA - 32bit)"

	^ self ffiCall: #( RLColor * LoadImagePalette #( RLImage image , int maxPaletteSize , int * colorsCount ) )
]

{ #category : #'ffi-calls' }
RL class >> loadImageRaw: fileName width: width height: height type: type headerSize: headerSize [
	"Load image from RAW file data"

	^ self ffiCall: #( RLImage LoadImageRaw #( const char * fileName , int width , int height , int type , int headerSize ) )
]

{ #category : #'ffi-calls' }
RL class >> loadMaterials: fileName materialCount: materialCount [
	"Load materials from model file"

	^ self ffiCall: #( RLMaterial * LoadMaterials #( const char * fileName , int * materialCount ) )
]

{ #category : #'ffi-calls' }
RL class >> loadModel: fileName [
	"Load model from files (meshes and materials)"

	^ self ffiCall: #( RLModel LoadModel #( const char * fileName ) )
]

{ #category : #'ffi-calls' }
RL class >> loadModelAnimations: fileName animsCount: animsCount [
	"Load model animations from file"

	^ self ffiCall: #( RLModelAnimation * LoadModelAnimations #( const char * fileName , int * animsCount ) )
]

{ #category : #'ffi-calls' }
RL class >> loadModelFromMesh: mesh [
	"Load model from generated mesh (default material)"

	^ self ffiCall: #( RLModel LoadModelFromMesh #( RLMesh mesh ) )
]

{ #category : #'ffi-calls' }
RL class >> loadMusicStream: fileName [
	"Load music stream from file"

	^ self ffiCall: #( RLMusic LoadMusicStream #( const char * fileName ) )
]

{ #category : #'ffi-calls' }
RL class >> loadMusicStreamFromMemory: fileType data: data dataSize: dataSize [
	"Load music stream from data"

	^ self ffiCall: #( RLMusic LoadMusicStreamFromMemory #( const char * fileType , unsigned char * data , int dataSize ) )
]

{ #category : #'ffi-calls' }
RL class >> loadRenderTexture: width height: height [
	"Load texture for rendering (framebuffer)"

	^ self ffiCall: #( RLRenderTexture2D LoadRenderTexture #( int width , int height ) )
]

{ #category : #'ffi-calls' }
RL class >> loadShader: vsFileName fsFileName: fsFileName [
	"Load shader from files and bind default locations"

	^ self ffiCall: #( RLShader LoadShader #( const char * vsFileName , const char * fsFileName ) )
]

{ #category : #'ffi-calls' }
RL class >> loadShaderFromMemory: vsCode fsCode: fsCode [
	"Load shader from code strings and bind default locations"

	^ self ffiCall: #( RLShader LoadShaderFromMemory #( const char * vsCode , const char * fsCode ) )
]

{ #category : #'ffi-calls' }
RL class >> loadSound: fileName [
	"Load sound from file"

	^ self ffiCall: #( RLSound LoadSound #( const char * fileName ) )
]

{ #category : #'ffi-calls' }
RL class >> loadSoundFromWave: wave [
	"Load sound from wave data"

	^ self ffiCall: #( RLSound LoadSoundFromWave #( RLWave wave ) )
]

{ #category : #'ffi-calls' }
RL class >> loadStorageValue: position [
	"Load integer value from storage file (from defined position)"

	^ self ffiCall: #( int LoadStorageValue #( unsigned int position ) )
]

{ #category : #'ffi-calls' }
RL class >> loadTexture: fileName [
	"Load texture from file into GPU memory (VRAM)"

	^ self ffiCall: #( RLTexture2D LoadTexture #( const char * fileName ) )
]

{ #category : #'ffi-calls' }
RL class >> loadTextureCubemap: image cubeLayout: cubeLayout [
	"Load cubemap from image, multiple image cubemap layouts supported"

	^ self ffiCall: #( RLTextureCubemap LoadTextureCubemap #( RLImage image , int cubeLayout ) )
]

{ #category : #'ffi-calls' }
RL class >> loadTextureCubemap: image layout: cubeLayout [
	"Load cubemap from image, multiple image cubemap layouts supported"

	^ self ffiCall: #( RLTextureCubemap LoadTextureCubemap #( RLImage image , int layout ) )
]

{ #category : #'ffi-calls' }
RL class >> loadTextureFromImage: image [
	"Load texture from image data"

	^ self ffiCall: #( RLTexture2D LoadTextureFromImage #( RLImage image ) )
]

{ #category : #'ffi-calls' }
RL class >> loadVrStereoConfig: device [
	"Load VR stereo config for VR simulator device parameters"

	^ self ffiCall: #( RLVrStereoConfig LoadVrStereoConfig #( RLVrDeviceInfo device ) )
]

{ #category : #'ffi-calls' }
RL class >> loadWave: fileName [
	"Load wave data from file"

	^ self ffiCall: #( RLWave LoadWave #( const char * fileName ) )
]

{ #category : #'ffi-calls' }
RL class >> loadWaveFromMemory: fileType fileData: fileData dataSize: dataSize [
	"Load wave from memory buffer, fileType refers to extension: i.e. '.wav'"

	^ self ffiCall: #( RLWave LoadWaveFromMemory #( const char * fileType , const unsigned char * fileData , int dataSize ) )
]

{ #category : #'ffi-calls' }
RL class >> loadWaveSamples: wave [
	"Load samples data from wave as a floats array"

	^ self ffiCall: #( float * LoadWaveSamples #( RLWave wave ) )
]

{ #category : #'ffi-calls' }
RL class >> maximizeWindow [
	"Set window state: maximized, if resizable (only PLATFORM_DESKTOP)"

	self ffiCall: #( void MaximizeWindow #( void ) )
]

{ #category : #'ffi-calls' }
RL class >> measureText: text fontSize: fontSize [
	"Measure string width for default font"

	^ self ffiCall: #( int MeasureText #( const char * text , int fontSize ) )
]

{ #category : #'ffi-calls' }
RL class >> measureTextEx: font text: text fontSize: fontSize spacing: spacing [
	"Measure string size for Font"

	^ self ffiCall: #( RLVector2 MeasureTextEx #( RLFont font , const char * text , float fontSize , float spacing ) )
]

{ #category : #'ffi-calls' }
RL class >> memAlloc: size [
	"Internal memory allocator"

	^ self ffiCall: #( void * MemAlloc #( int size ) )
]

{ #category : #'ffi-calls' }
RL class >> memFree: ptr [
	"Internal memory free"

	self ffiCall: #( void MemFree #( void * ptr ) )
]

{ #category : #'ffi-calls' }
RL class >> memRealloc: ptr size: size [
	"Internal memory reallocator"

	^ self ffiCall: #( void * MemRealloc #( void * ptr , int size ) )
]

{ #category : #'ffi-calls' }
RL class >> minimizeWindow [
	"Set window state: minimized, if resizable (only PLATFORM_DESKTOP)"

	self ffiCall: #( void MinimizeWindow #( void ) )
]

{ #category : #'ffi-calls' }
RL class >> openURL: url [
	"Open URL with default system browser (if available)"

	self ffiCall: #( void OpenURL #( const char * url ) )
]

{ #category : #'ffi-calls' }
RL class >> pauseAudioStream: stream [
	"Pause audio stream"

	self ffiCall: #( void PauseAudioStream #( RLAudioStream stream ) )
]

{ #category : #'ffi-calls' }
RL class >> pauseMusicStream: music [
	"Pause music playing"

	self ffiCall: #( void PauseMusicStream #( RLMusic music ) )
]

{ #category : #'ffi-calls' }
RL class >> pauseSound: sound [
	"Pause a sound"

	self ffiCall: #( void PauseSound #( RLSound sound ) )
]

{ #category : #'ffi-calls' }
RL class >> playAudioStream: stream [
	"Play audio stream"

	self ffiCall: #( void PlayAudioStream #( RLAudioStream stream ) )
]

{ #category : #'ffi-calls' }
RL class >> playMusicStream: music [
	"Start music playing"

	self ffiCall: #( void PlayMusicStream #( RLMusic music ) )
]

{ #category : #'ffi-calls' }
RL class >> playSound: sound [
	"Play a sound"

	self ffiCall: #( void PlaySound #( RLSound sound ) )
]

{ #category : #'ffi-calls' }
RL class >> playSoundMulti: sound [
	"Play a sound (using multichannel buffer pool)"

	self ffiCall: #( void PlaySoundMulti #( RLSound sound ) )
]

{ #category : #'ffi-calls' }
RL class >> pollInputEvents [
	"Register all input events"

	self ffiCall: #( void PollInputEvents #( void ) )
]

{ #category : #'ffi-calls' }
RL class >> restoreWindow [
	"Set window state: not minimized/maximized (only PLATFORM_DESKTOP)"

	self ffiCall: #( void RestoreWindow #( void ) )
]

{ #category : #'ffi-calls' }
RL class >> resumeAudioStream: stream [
	"Resume audio stream"

	self ffiCall: #( void ResumeAudioStream #( RLAudioStream stream ) )
]

{ #category : #'ffi-calls' }
RL class >> resumeMusicStream: music [
	"Resume playing paused music"

	self ffiCall: #( void ResumeMusicStream #( RLMusic music ) )
]

{ #category : #'ffi-calls' }
RL class >> resumeSound: sound [
	"Resume a paused sound"

	self ffiCall: #( void ResumeSound #( RLSound sound ) )
]

{ #category : #'ffi-calls' }
RL class >> saveFileData: fileName data: data bytesToWrite: bytesToWrite [
	"Save data to file from byte array (write), returns true on success"

	^ self ffiCall: #( bool SaveFileData #( const char * fileName , void * data , unsigned int bytesToWrite ) )
]

{ #category : #'ffi-calls' }
RL class >> saveFileText: fileName text: text [
	"Save text data to file (write), string must be '\0' terminated, returns true on success"

	^ self ffiCall: #( bool SaveFileText #( const char * fileName , char * text ) )
]

{ #category : #'ffi-calls' }
RL class >> saveStorageValue: position value: value [
	"Save integer value to storage file (to defined position), returns true on success"

	^ self ffiCall: #( bool SaveStorageValue #( unsigned int position , int value ) )
]

{ #category : #'ffi-calls' }
RL class >> setAudioStreamBufferSizeDefault: size [
	"Default size for new audio streams"

	self ffiCall: #( void SetAudioStreamBufferSizeDefault #( int size ) )
]

{ #category : #'ffi-calls' }
RL class >> setAudioStreamPitch: stream pitch: pitch [
	"Set pitch for audio stream (1.0 is base level)"

	self ffiCall: #( void SetAudioStreamPitch #( RLAudioStream stream , float pitch ) )
]

{ #category : #'ffi-calls' }
RL class >> setAudioStreamVolume: stream volume: volume [
	"Set volume for audio stream (1.0 is max level)"

	self ffiCall: #( void SetAudioStreamVolume #( RLAudioStream stream , float volume ) )
]

{ #category : #'ffi-calls' }
RL class >> setCameraAltControl: keyAlt [
	"Set camera alt key to combine with mouse movement (free camera)"

	self ffiCall: #( void SetCameraAltControl #( int keyAlt ) )
]

{ #category : #'ffi-calls' }
RL class >> setCameraMode: camera mode: mode [
	"Set camera mode (multiple camera modes available)"

	self ffiCall: #( void SetCameraMode #( Camera camera , int mode ) )
]

{ #category : #'ffi-calls' }
RL class >> setCameraMoveControls: keyFront keyBack: keyBack keyRight: keyRight keyLeft: keyLeft keyUp: keyUp keyDown: keyDown [
	"Set camera move controls (1st person and 3rd person cameras)"

	self ffiCall: #( void SetCameraMoveControls #( int keyFront , int keyBack , int keyRight , int keyLeft , int keyUp , int keyDown ) )
]

{ #category : #'ffi-calls' }
RL class >> setCameraPanControl: keyPan [
	"Set camera pan key to combine with mouse movement (free camera)"

	self ffiCall: #( void SetCameraPanControl #( int keyPan ) )
]

{ #category : #'ffi-calls' }
RL class >> setCameraSmoothZoomControl: keySmoothZoom [
	"Set camera smooth zoom key to combine with mouse (free camera)"

	self ffiCall: #( void SetCameraSmoothZoomControl #( int keySmoothZoom ) )
]

{ #category : #'ffi-calls' }
RL class >> setClipboardText: text [
	"Set clipboard text content"

	self ffiCall: #( void SetClipboardText #( const char * text ) )
]

{ #category : #'ffi-calls' }
RL class >> setConfigFlags: flags [
	"Setup init configuration flags (view FLAGS)"

	self ffiCall: #( void SetConfigFlags #( unsigned int flags ) )
]

{ #category : #'ffi-calls' }
RL class >> setExitKey: key [
	"Set a custom key to exit program (default is ESC)"

	self ffiCall: #( void SetExitKey #( int key ) )
]

{ #category : #'ffi-calls' }
RL class >> setGamepadMappings: mappings [
	"Set internal gamepad mappings (SDL_GameControllerDB)"

	^ self ffiCall: #( int SetGamepadMappings #( const char * mappings ) )
]

{ #category : #'ffi-calls' }
RL class >> setGesturesEnabled: flags [
	"Enable a set of gestures using flags"

	self ffiCall: #( void SetGesturesEnabled #( unsigned int flags ) )
]

{ #category : #'ffi-calls' }
RL class >> setLoadFileDataCallback: callback [
	"Set custom file binary data loader"

	self ffiCall: #( void SetLoadFileDataCallback #( LoadFileDataCallback callback ) )
]

{ #category : #'ffi-calls' }
RL class >> setLoadFileTextCallback: callback [
	"Set custom file text data loader"

	self ffiCall: #( void SetLoadFileTextCallback #( LoadFileTextCallback callback ) )
]

{ #category : #'ffi-calls' }
RL class >> setMasterVolume: volume [
	"Set master volume (listener)"

	self ffiCall: #( void SetMasterVolume #( float volume ) )
]

{ #category : #'ffi-calls' }
RL class >> setMaterialTexture: material mapType: mapType texture: texture [
	"Set texture for a material map type (MATERIAL_MAP_DIFFUSE, MATERIAL_MAP_SPECULAR...)"

	self ffiCall: #( void SetMaterialTexture #( RLMaterial * material , int mapType , RLTexture2D texture ) )
]

{ #category : #'ffi-calls' }
RL class >> setModelMeshMaterial: model meshId: meshId materialId: materialId [
	"Set material for a mesh"

	self ffiCall: #( void SetModelMeshMaterial #( RLModel * model , int meshId , int materialId ) )
]

{ #category : #'ffi-calls' }
RL class >> setMouseCursor: cursor [
	"Set mouse cursor"

	self ffiCall: #( void SetMouseCursor #( int cursor ) )
]

{ #category : #'ffi-calls' }
RL class >> setMouseOffset: offsetX offsetY: offsetY [
	"Set mouse offset"

	self ffiCall: #( void SetMouseOffset #( int offsetX , int offsetY ) )
]

{ #category : #'ffi-calls' }
RL class >> setMousePosition: x y: y [
	"Set mouse position XY"

	self ffiCall: #( void SetMousePosition #( int x , int y ) )
]

{ #category : #'ffi-calls' }
RL class >> setMouseScale: scaleX scaleY: scaleY [
	"Set mouse scaling"

	self ffiCall: #( void SetMouseScale #( float scaleX , float scaleY ) )
]

{ #category : #'ffi-calls' }
RL class >> setMusicPitch: music pitch: pitch [
	"Set pitch for a music (1.0 is base level)"

	self ffiCall: #( void SetMusicPitch #( RLMusic music , float pitch ) )
]

{ #category : #'ffi-calls' }
RL class >> setMusicVolume: music volume: volume [
	"Set volume for music (1.0 is max level)"

	self ffiCall: #( void SetMusicVolume #( RLMusic music , float volume ) )
]

{ #category : #'ffi-calls' }
RL class >> setPixelColor: dstPtr color: color type: type [
	"Set color formatted into destination pixel pointer"

	self ffiCall: #( void SetPixelColor #( void * dstPtr , RLColor color , int type ) )
]

{ #category : #'ffi-calls' }
RL class >> setSaveFileDataCallback: callback [
	"Set custom file binary data saver"

	self ffiCall: #( void SetSaveFileDataCallback #( SaveFileDataCallback callback ) )
]

{ #category : #'ffi-calls' }
RL class >> setSaveFileTextCallback: callback [
	"Set custom file text data loader"

	self ffiCall: #( void SetSaveFileTextCallback #( SaveFileTextCallback callback ) )
]

{ #category : #'ffi-calls' }
RL class >> setShaderValue: shader locIndex: locIndex value: value uniformType: uniformType [
	"Set shader uniform value"

	self ffiCall: #( void SetShaderValue #( RLShader shader , int locIndex , const void * value , int uniformType ) )
]

{ #category : #'ffi-calls' }
RL class >> setShaderValueMatrix: shader locIndex: locIndex mat: mat [
	"Set shader uniform value (matrix 4x4)"

	self ffiCall: #( void SetShaderValueMatrix #( RLShader shader , int locIndex , RLMatrix mat ) )
]

{ #category : #'ffi-calls' }
RL class >> setShaderValueTexture: shader locIndex: locIndex texture: texture [
	"Set shader uniform value for texture (sampler2d)"

	self ffiCall: #( void SetShaderValueTexture #( RLShader shader , int locIndex , RLTexture2D texture ) )
]

{ #category : #'ffi-calls' }
RL class >> setShaderValueV: shader locIndex: locIndex value: value uniformType: uniformType count: count [
	"Set shader uniform value vector"

	self ffiCall: #( void SetShaderValueV #( RLShader shader , int locIndex , const void * value , int uniformType , int count ) )
]

{ #category : #'ffi-calls' }
RL class >> setShapesTexture: texture source: source [
	"Set texture and rectangle to be used on shapes drawing"

	self ffiCall: #( void SetShapesTexture #( RLTexture2D texture , RLRectangle source ) )
]

{ #category : #'ffi-calls' }
RL class >> setSoundPitch: sound pitch: pitch [
	"Set pitch for a sound (1.0 is base level)"

	self ffiCall: #( void SetSoundPitch #( RLSound sound , float pitch ) )
]

{ #category : #'ffi-calls' }
RL class >> setSoundVolume: sound volume: volume [
	"Set volume for a sound (1.0 is max level)"

	self ffiCall: #( void SetSoundVolume #( RLSound sound , float volume ) )
]

{ #category : #'ffi-calls' }
RL class >> setTargetFPS: fps [
	"Set target FPS (maximum)"

	self ffiCall: #( void SetTargetFPS #( int fps ) )
]

{ #category : #'ffi-calls' }
RL class >> setTextureFilter: texture filter: filter [
	"Set texture scaling filter mode"

	self ffiCall: #( void SetTextureFilter #( RLTexture2D texture , int filter ) )
]

{ #category : #'ffi-calls' }
RL class >> setTextureWrap: texture wrap: wrap [
	"Set texture wrapping mode"

	self ffiCall: #( void SetTextureWrap #( RLTexture2D texture , int wrap ) )
]

{ #category : #'ffi-calls' }
RL class >> setTraceLogCallback: callback [
	"Set custom trace log"

	self ffiCall: #( void SetTraceLogCallback #( TraceLogCallback callback ) )
]

{ #category : #'ffi-calls' }
RL class >> setTraceLogLevel: logLevel [
	"Set the current threshold (minimum) log level"

	self ffiCall: #( void SetTraceLogLevel #( int logLevel ) )
]

{ #category : #'ffi-calls' }
RL class >> setWindowIcon: image [
	"Set icon for window (only PLATFORM_DESKTOP)"

	self ffiCall: #( void SetWindowIcon #( RLImage image ) )
]

{ #category : #'ffi-calls' }
RL class >> setWindowMinSize: widht height: height [
	"Set window minimum dimensions (for FLAG_WINDOW_RESIZABLE)"

	self ffiCall: #( void SetWindowMinSize #( int width , int height ) )
]

{ #category : #'ffi-calls' }
RL class >> setWindowMonitor: monitor [
	"Set monitor for the current window (fullscreen mode)"

	self ffiCall: #( void SetWindowMonitor #( int monitor ) )
]

{ #category : #'ffi-calls' }
RL class >> setWindowPosition: x y: y [
	"Set window position on screen (only PLATFORM_DESKTOP)"

	self ffiCall: #( void SetWindowPosition #( int x , int y ) )
]

{ #category : #'ffi-calls' }
RL class >> setWindowSize: widht height: height [
	"Set window minimum dimensions (for FLAG_WINDOW_RESIZABLE)"

	self ffiCall: #( void SetWindowSize #( int width , int height ) )
]

{ #category : #'ffi-calls' }
RL class >> setWindowState: flags [
	"Set window configuration state using flags"

	self ffiCall: #( void SetWindowState #( unsigned int flags ) )
]

{ #category : #'ffi-calls' }
RL class >> setWindowTitle [
	"Set title for window (only PLATFORM_DESKTOP)"

	self ffiCall: #( void SetWindowTitle #( const char * title ) )
]

{ #category : #'ffi-calls' }
RL class >> showCursor [
	"Shows cursor"

	self ffiCall: #( void ShowCursor #( void ) )
]

{ #category : #'ffi-calls' }
RL class >> stopAudioStream: stream [
	"Stop audio stream"

	self ffiCall: #( void StopAudioStream #( RLAudioStream stream ) )
]

{ #category : #'ffi-calls' }
RL class >> stopMusicStream: music [
	"Stop music playing"

	self ffiCall: #( void StopMusicStream #( RLMusic music ) )
]

{ #category : #'ffi-calls' }
RL class >> stopSound: sound [
	"Stop playing a sound"

	self ffiCall: #( void StopSound #( RLSound sound ) )
]

{ #category : #'ffi-calls' }
RL class >> stopSoundMulti [
	"Stop any sound playing (using multichannel buffer pool)"

	self ffiCall: #( void StopSoundMulti #( void ) )
]

{ #category : #'ffi-calls' }
RL class >> swapScreenBuffer [
	"Swap back buffer with front buffer (screen drawing)"

	self ffiCall: #( void SwapScreenBuffer #( void ) )
]

{ #category : #'ffi-calls' }
RL class >> takeScreenshot: fileName [
	"Takes a screenshot of current screen (filename extension defines format)"

	self ffiCall: #( void TakeScreenshot #( const char * fileName ) )
]

{ #category : #'ffi-calls' }
RL class >> textAppend: text append: append position: position [
	"Append text at specific position and move cursor!"

	self ffiCall: #( void TextAppend #( char * text , const char * append , int * position ) )
]

{ #category : #'ffi-calls' }
RL class >> textCopy: dst src: src [
	"Copy one string to another, returns bytes copied"

	^ self ffiCall: #( int TextCopy #( char * dst , const char * src ) )
]

{ #category : #'ffi-calls' }
RL class >> textFindIndex: text find: find [
	"Find first text occurrence within a string"

	^ self ffiCall: #( int TextFindIndex #( const char * text , const char * find ) )
]

{ #category : #'ffi-calls' }
RL class >> textInsert: text insert: insert position: position [
	"Insert text in a position (memory must be freed!)"

	^ self ffiCall: #( char * TextInsert #( const char * text , const char * insert , int position ) )
]

{ #category : #'ffi-calls' }
RL class >> textIsEqual: text1 text2: text2 [
	"Check if two text string are equal"

	^ self ffiCall: #( bool TextIsEqual #( const char * text1 , const char * text2 ) )
]

{ #category : #'ffi-calls' }
RL class >> textJoin: textList count: count delimiter: delimiter [
	"Join text strings with delimiter"

	^ self ffiCall: #( const char * TextJoin #( const char ** textList , int count , const char * delimiter ) )
]

{ #category : #'ffi-calls' }
RL class >> textLength: text [
	"Get text length, checks for '\0' ending"

	^ self ffiCall: #( unsigned int TextLength #( const char * text ) )
]

{ #category : #'ffi-calls' }
RL class >> textReplace: text replace: replace by: by [
	"Replace text string (memory must be freed!)"

	^ self ffiCall: #( char * TextReplace #( char * text , const char * replace , const char * by ) )
]

{ #category : #'ffi-calls' }
RL class >> textSplit: text delimiter: delimiter count: count [
	"Split text into multiple strings"

	^ self ffiCall: #( const char ** TextSplit #( const char * text , char delimiter , int * count ) )
]

{ #category : #'ffi-calls' }
RL class >> textSubtext: text position: position length: length [
	"Get a piece of a text string"

	^ self ffiCall: #( const char * TextSubtext #( const char * text , int position , int length ) )
]

{ #category : #'ffi-calls' }
RL class >> textToInteger: text [
	"Get integer value from text (negative values not supported)"

	^ self ffiCall: #( int TextToInteger #( const char * text ) )
]

{ #category : #'ffi-calls' }
RL class >> textToLower: text [
	"Get lower case version of provided string"

	^ self ffiCall: #( const char * TextToLower #( const char * text ) )
]

{ #category : #'ffi-calls' }
RL class >> textToPascal: text [
	"Get Pascal case notation version of provided string"

	^ self ffiCall: #( const char * TextToPascal #( const char * text ) )
]

{ #category : #'ffi-calls' }
RL class >> textToUpper: text [
	"Get upper case version of provided string"

	^ self ffiCall: #( const char * TextToUpper #( const char * text ) )
]

{ #category : #'ffi-calls' }
RL class >> textToUtf8: codepoints length: length [
	"Encode text codepoint into utf8 text (memory must be freed!)"

	^ self ffiCall: #( char * TextToUtf8 #( int * codepoints , int length ) )
]

{ #category : #'ffi-calls' }
RL class >> toggleFullscreen [
	"Toggle window state: fullscreen/windowed (only PLATFORM_DESKTOP)"

	self ffiCall: #( void ToggleFullscreen #( void ) )
]

{ #category : #'ffi-calls' }
RL class >> unloadAudioStream: stream [
	"Unload audio stream and free memory"

	self ffiCall: #( void UnloadAudioStream #( RLAudioStream stream ) )
]

{ #category : #'ffi-calls' }
RL class >> unloadCodepoints: codepoints [
	"Unload codepoints data from memory"

	self ffiCall: #( void UnloadCodepoints #( int * codepoints ) )
]

{ #category : #'ffi-calls' }
RL class >> unloadFileData: data [
	"Unload file data allocated by LoadFileData()"

	self ffiCall: #( void UnloadFileData #( unsigned char * data ) )
]

{ #category : #'ffi-calls' }
RL class >> unloadFileText: text [
	"Unload file text data allocated by LoadFileText()"

	self ffiCall: #( void UnloadFileText #( char * text ) )
]

{ #category : #'ffi-calls' }
RL class >> unloadFont: font [
	"Unload Font from GPU memory (VRAM)"

	self ffiCall: #( void UnloadFont #( RLFont font ) )
]

{ #category : #'ffi-calls' }
RL class >> unloadFontData: chars charsCount: charsCount [
	"Unload font chars info data (RAM)"

	self ffiCall: #( void UnloadFontData #( RLCharInfo * chars , int charsCount ) )
]

{ #category : #'ffi-calls' }
RL class >> unloadImage: image [
	"Unload image from CPU memory (RAM)"

	^ self ffiCall: #( void UnloadImage #( RLImage image ) )
]

{ #category : #'ffi-calls' }
RL class >> unloadImageColors: colors [
	"Unload color data loaded with LoadImageColors()"

	self ffiCall: #( void UnloadImageColors #( RLColor * colors ) )
]

{ #category : #'ffi-calls' }
RL class >> unloadImagePalette: colors [
	"Unload colors palette loaded with LoadImagePalette()"

	self ffiCall: #( void UnloadImagePalette #( RLColor * colors ) )
]

{ #category : #'ffi-calls' }
RL class >> unloadMaterial: material [
	"Unload material from GPU memory (VRAM)"

	self ffiCall: #( void UnloadMaterial #( RLMaterial material ) )
]

{ #category : #'ffi-calls' }
RL class >> unloadMesh: mesh [
	"Unload mesh data from CPU and GPU"

	self ffiCall: #( void UnloadMesh #( RLMesh mesh ) )
]

{ #category : #'ffi-calls' }
RL class >> unloadModel: model [
	"Unload model (including meshes) from memory (RAM and/or VRAM)"

	self ffiCall: #( void UnloadModel #( RLModel model ) )
]

{ #category : #'ffi-calls' }
RL class >> unloadModelAnimation: anim [
	"Unload animation data"

	self ffiCall: #( void UnloadModelAnimation #( RLModelAnimation anim ) )
]

{ #category : #'ffi-calls' }
RL class >> unloadModelAnimations: animation count: count [
	"Unload animation array data"

	self ffiCall: #( void UnloadModelAnimations #( RLModelAnimation * animations , unsigned int count ) )
]

{ #category : #'ffi-calls' }
RL class >> unloadModelKeepMeshes: model [
	"Unload model (but not meshes) from memory (RAM and/or VRAM)"

	self ffiCall: #( void UnloadModelKeepMeshes #( RLModel model ) )
]

{ #category : #'ffi-calls' }
RL class >> unloadMusicStream: music [
	"Unload music stream"

	self ffiCall: #( void UnloadMusicStream #( RLMusic music ) )
]

{ #category : #'ffi-calls' }
RL class >> unloadRenderTexture: target [
	"Unload render texture from GPU memory (VRAM)"

	self ffiCall: #( void UnloadRenderTexture #( RLRenderTexture2D target ) )
]

{ #category : #'ffi-calls' }
RL class >> unloadShader: shader [
	"Unload shader from GPU memory (VRAM)"

	self ffiCall: #( void UnloadShader #( RLShader shader ) )
]

{ #category : #'ffi-calls' }
RL class >> unloadSound: sound [
	"Unload sound"

	self ffiCall: #( void UnloadSound #( RLSound sound ) )
]

{ #category : #'ffi-calls' }
RL class >> unloadTexture: texture [
	"Unload texture from GPU memory (VRAM)"

	self ffiCall: #( void UnloadTexture #( RLTexture2D texture ) )
]

{ #category : #'ffi-calls' }
RL class >> unloadVrStereoConfig: config [
	"Unload VR stereo config"

	self ffiCall: #( void UnloadVrStereoConfig #( RLVrStereoConfig config ) )
]

{ #category : #'ffi-calls' }
RL class >> unloadWave: wave [
	"Unload wave data"

	self ffiCall: #( void UnloadWave #( RLWave wave ) )
]

{ #category : #'ffi-calls' }
RL class >> unloadWaveSamples: samples [
	"Unload samples data loaded with LoadWaveSamples()"

	self ffiCall: #( void UnloadWaveSamples #( float * samples ) )
]

{ #category : #'ffi-calls' }
RL class >> updateAudioStream: stream data: data samplesCount: samplesCount [
	"Update audio stream buffers with data"

	self ffiCall: #( void UpdateAudioStream #( RLAudioStream stream , const void * data , int samplesCount ) )
]

{ #category : #'ffi-calls' }
RL class >> updateCamera: camera [
	"Update camera position for selected mode"

	self ffiCall: #( void UpdateCamera #( Camera * camera ) )
]

{ #category : #'ffi-calls' }
RL class >> updateMeshBuffer: mesh index: index data: data dataSize: dataSize offset: offset [
	"Update mesh vertex data in GPU for a specific buffer index"

	self ffiCall: #( void UpdateMeshBuffer #( RLMesh mesh , int index , void * data , int dataSize , int offset ) )
]

{ #category : #'ffi-calls' }
RL class >> updateModelAnimation: model anim: anim frame: frame [
	"Update model animation pose"

	self ffiCall: #( void UpdateModelAnimation #( RLModel model , RLModelAnimation anim , int frame ) )
]

{ #category : #'ffi-calls' }
RL class >> updateMusicStream: music [
	"Updates buffers for music streaming"

	self ffiCall: #( void UpdateMusicStream #( RLMusic music ) )
]

{ #category : #'ffi-calls' }
RL class >> updateSound: sound data: data samplesCount: samplesCount [
	"Update sound buffer with new data"

	self ffiCall: #( void UpdateSound #( RLSound sound , const void * data , int samplesCount ) )
]

{ #category : #'ffi-calls' }
RL class >> updateTexture: texture pixels: pixels [
	"Update GPU texture with new data"

	self ffiCall: #( void UpdateTexture #( RLTexture2D texture , const void * pixels ) )
]

{ #category : #'ffi-calls' }
RL class >> updateTextureRec: texture rec: rec pixels: pixels [
	"Update GPU texture rectangle with new data"

	self ffiCall: #( void UpdateTextureRec #( RLTexture2D texture , RLRectangle rec , const void * pixels ) )
]

{ #category : #'ffi-calls' }
RL class >> uploadMesh: mesh dynamic: dynamic [
	"Upload mesh vertex data in GPU and provide VAO/VBO ids"

	self ffiCall: #( void UploadMesh #( RLMesh * mesh , bool dynamic ) )
]

{ #category : #'ffi-calls' }
RL class >> waitTime: ms [
	"Wait for some milliseconds (halt program execution)"

	self ffiCall: #( void WaitTime #( float ms ) )
]

{ #category : #'ffi-calls' }
RL class >> waveCopy: wave [
	"Copy a wave to a new wave"

	^ self ffiCall: #( RLWave WaveCopy #( RLWave wave ) )
]

{ #category : #'ffi-calls' }
RL class >> waveCrop: wave initSample: initSample finalSample: finalSample [
	"Crop a wave to defined samples range"

	self ffiCall: #( void WaveCrop #( RLWave * wave , int initSample , int finalSample ) )
]

{ #category : #'ffi-calls' }
RL class >> waveFormat: wave sampleRate: sampleRate sampleSize: sampleSize channels: channels [
	"Convert wave data to desired format"

	self ffiCall: #( void WaveFormat #( RLWave * wave , int sampleRate , int sampleSize , int channels ) )
]

{ #category : #'ffi-calls' }
RL class >> windowShouldClose [
	"Check if KEY_ESCAPE pressed or Close icon pressed"

	^ self ffiCall: #( bool WindowShouldClose #( void ) )
]
