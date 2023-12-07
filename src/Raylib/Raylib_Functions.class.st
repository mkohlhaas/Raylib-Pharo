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
getImageAlphaBorder -> uses Rectangle!
genImageFontAtlas -> pointers?
textFormat -> varargs
getCodepoint -> pointer needs allocation?
"
Class {
	#name : #'Raylib_Functions',
	#superclass : #FFILibrary,
	#pools : [
		'Raylib_HelperTypes',
		'Raylib_OpaqueTypes',
		'Raylib_TypeAliases'
	],
	#category : #Raylib
}

{ #category : #'ffi-calls' }
Raylib_Functions class >> beginBlendMode: mode [
	"Begin blending mode (alpha, additive, multiplied, subtract, custom)"

	self ffiCall: #( void BeginBlendMode #( int mode ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> beginDrawing [
	"Setup canvas (framebuffer) to start drawing"

	self ffiCall: #( void BeginDrawing #( void ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> beginMode2D: camera [
	"Begin 2D mode with custom camera (2D)"

	self ffiCall: #( void BeginMode2D #( Camera2D camera ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> beginMode3D: camera [
	"Begin 3D mode with custom camera (3D)"

	self ffiCall: #( void BeginMode3D #( Camera3D camera ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> beginScissorMode: x y: y width: width height: height [
	"Begin scissor mode (define screen area for following drawing)"

	self ffiCall:
		#( void BeginScissorMode #( int x , int y , int width , int height ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> beginShaderMode: shader [
	"Begin custom shader drawing"

	self ffiCall: #( void BeginShaderMode #( Shader shader ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> beginTextureMode: target [
	"Begin drawing to render texture"

	self ffiCall: #( void BeginTextureMode #( RenderTexture2D
	      target ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> beginVrStereoMode: config [
	"Begin stereo rendering (requires VR simulator)"

	self ffiCall: #( void BeginVrStereoMode #( VrStereoConfig
	      config ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> changeDirectory: dir [
	"Change working directory, return true on success"

	^ self ffiCall: #( bool ChangeDirectory #( const char * dir ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> checkCollisionBoxSphere: box center: center radius: radius [
	"Check collision between box and sphere"

	^ self ffiCall:
		  #( bool CheckCollisionBoxSphere #( BoundingBox box , Vector3
		        center , float radius ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> checkCollisionBoxes: box1 box2: box2 [
	"Check collision between two bounding boxes"

	^ self ffiCall:
		  #( bool CheckCollisionBoxes #( BoundingBox box1 , BoundingBox
		        box2 ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> checkCollisionCircleRec: center radius: radius rec: rec [
	"Check collision between circle and rectangle"

	^ self ffiCall:
		  #( bool CheckCollisionCircleRec #( Vector2 center , float radius
		        , Rectangle rec ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> checkCollisionCircles: center1 radius1: radius1 center2: center2 radius2: radius2 [
	"Check collision between two circles"

	^ self ffiCall:
		  #( bool CheckCollisionCircles #( Vector2 center1 , float radius1
		        , Vector2 center2 , float radius2 ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> checkCollisionLines: startPos1 endPos1: endPos1 startPos2: startPos2 endPos2: endPos2 collisionPoint: collisionPoint [
	"Check the collision between two lines defined by two points each, returns collision point by reference"

	^ self ffiCall:
		  #( bool CheckCollisionLines #( Vector2 startPos1 , Vector2 endPos1
		        , Vector2 startPos2 , Vector2 endPos2 , Vector2 * collisionPoint ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> checkCollisionPointCircle: point center: center radius: radius [
	"Check if point is inside circle"

	^ self ffiCall:
		  #( bool CheckCollisionPointCircle #( Vector2 point , Vector2
		        center , float radius ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> checkCollisionPointRec: point rec: rec [
	"Check if point is inside rectangle"

	^ self ffiCall:
		  #( bool CheckCollisionPointRec #( Vector2 point , Rectangle
		        rec ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> checkCollisionPointTriangle: point p1: p1 p2: p2 p3: p3 [
	"Check if point is inside a triangle"

	^ self ffiCall:
		  #( bool CheckCollisionPointTriangle #( Vector2 point , Vector2
		        p1 , Vector2 p2 , Vector2 p3 ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> checkCollisionRecs: rec1 rec2: rec2 [
	"Check collision between two rectangles"

	^ self ffiCall:
		  #( bool CheckCollisionRecs #( Rectangle rec1 , Rectangle rec2 ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> checkCollisionSpheres: center radius1: radius1 center2: center2 radius2: radius2 [
	"Check collision between two spheres"

	^ self ffiCall:
		  #( bool CheckCollisionSpheres #( Vector3 center1 , float radius1
		        , Vector3 center2 , float radius2 ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> clearBackground: color [
	"Set background color (framebuffer clear color)"

	self ffiCall: #( void ClearBackground #( Color color ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> clearDirectoryFiles [
	"Clear directory files paths buffers (free memory)"

	self ffiCall: #( void ClearDirectoryFiles #( void ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> clearDroppedFiles [
	"Clear dropped files paths buffer (free memory)"

	self ffiCall: #( void ClearDroppedFiles #( void ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> clearWindowState: flags [
	"Clear window configuration state flags"

	self ffiCall: #( void ClearWindowState #( unsigned int flags ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> closeAudioDevice [
	"Close the audio device and context"

	self ffiCall: #( void CloseAudioDevice #( void ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> closeWindow [
	"Close window and unload OpenGL context"

	self ffiCall: #( void CloseWindow #( void ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> codepointToUtf8: codepoint byteLength: byteLength [
	"Encode codepoint into utf8 text (char array length returned as parameter)"

	^ self ffiCall:
		  #( const char * CodepointToUtf8 #( int codepoint , int * byteLength ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> colorAlpha: color alpha: alpha [
	"Get color with alpha applied, alpha goes from 0.0f to 1.0f"

	^ self ffiCall: #( Color ColorAlpha #( Color color , float alpha ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> colorAlphaBlend: dst src: src tint: tint [
	"Get src alpha-blended into dst color with tint"

	^ self ffiCall:
		  #( Color ColorAlphaBlend #( Color dst , Color src , Color tint ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> colorFromHSV: hue saturation: saturation value: value [
	"Get a Color from HSV values, hue [0..360], saturation/value [0..1]"

	^ self ffiCall:
		  #( Color ColorFromHSV #( float hue , float saturation , float
		        value ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> colorFromNormalized: normalized [
	"Get Color from normalized values [0..1]"

	^ self ffiCall:
		  #( Color ColorFromNormalized #( Vector4 normalized ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> colorNormalize: color [
	"Get Color normalized as float [0..1]"

	^ self ffiCall: #( Vector4 ColorNormalize #( Color color ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> colorToHSV: color [
	"Get HSV values for a Color, hue [0..360], saturation/value [0..1]"

	^ self ffiCall: #( Vector3 ColorToHSV #( Color color ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> colorToInt: color [
	"Get hexadecimal value for a Color"

	^ self ffiCall: #( int ColorToInt #( Color color ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> compressData: data dataLength: dataLength compDataLength: compDataLength [
	"Compress data (DEFLATE algorithm)"

	^ self ffiCall:
		  #( unsigned char * CompressData #( unsigned char * data , int dataLength
		        , int * compDataLength ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> decompressData: compData compDataLength: compDataLength dataLength: dataLength [
	"Decompress data (DEFLATE algorithm)"

	^ self ffiCall:
		  #( unsigned char * DecompressData #( unsigned char * compData
		        , int compDataLength , int * dataLength ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> directoryExists: dirPath [
	"Check if a directory path exists"

	^ self ffiCall: #( bool DirectoryExists #( const char * dirPath ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> disableCursor [
	"Disables cursor (lock cursor)"

	self ffiCall: #( void DisableCursor #( void ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawBillboard: camera texture: texture position: position size: size tint: tint [
	"Draw a billboard texture"

	self ffiCall:
		#( void DrawBillboard #( Camera camera , Texture2D texture , Vector3
		      position , float size , Color tint ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawBillboardPro: camera texture: texture source: source position: position size: size origin: origin rotation: rotation tint: tint [
	"Draw a billboard texture defined by source and rotation"

	self ffiCall:
		#( void DrawBillboardPro #( Camera camera , Texture2D texture
		      , Rectangle source , Vector3 position , Vector2 size , Vector2
		      origin , float rotation , Color tint ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawBillboardRec: camera texture: texture source: source position: position size: size tint: tint [
	"Draw a billboard texture defined by source"

	self ffiCall:
		#( void DrawBillboardRec #( Camera camera , Texture2D texture
		      , Rectangle source , Vector3 position , Vector2 size , Color
		      tint ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawBoundingBox: box color: color [
	"Draw bounding box (wires)"

	self ffiCall:
		#( void DrawBoundingBox #( BoundingBox box , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawCircle3D: center radius: radius rotationAxis: rotationAxis rotationAngle: rotationAngle color: color [
	"Draw a circle in 3D world space"

	self ffiCall:
		#( void DrawCircle3D #( Vector3 center , float radius , Vector3
		      rotationAxis , float rotationAngle , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawCircle: centerX centerY: centerY radius: radius color: color [
	"Draw a color-filled circle"

	self ffiCall:
		#( void DrawCircle #( int centerX , int centerY , float radius
		      , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawCircleGradient: centerX centerY: centerY radius: radius color1: color1 color2: color2 [
	"Draw a gradient-filled circle"

	self ffiCall:
		#( void DrawCircleGradient #( int centerX , int centerY , float
		      radius , Color color1 , Color color2 ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawCircleLines: centerX centerY: centerY radius: radius color: color [
	"Draw circle outline"

	self ffiCall:
		#( void DrawCircleLines #( int centerX , int centerY , float radius
		      , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawCircleSector: center radius: radius startAngle: startAngle endAngle: endAngle segments: segments color: color [
	"Draw a piece of a circle"

	self ffiCall:
		#( void DrawCircleSector #( Vector2 center , float radius , float
		      startAngle , float endAngle , int segments , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawCircleSectorLines: center radius: radius startAngle: startAngle endAngle: endAngle segments: segments color: color [
	"Draw circle sector outline"

	self ffiCall:
		#( void DrawCircleSectorLines #( Vector2 center , float radius
		      , float startAngle , float endAngle , int segments , Color
		      color ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawCircleV: center radius: radius color: color [
	"Draw a color-filled circle (Vector version)"

	self ffiCall:
		#( void DrawCircleV #( Vector2 center , float radius , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawCube: position width: width height: height length: length color: color [
	"Draw cube"

	self ffiCall:
		#( void DrawCube #( Vector3 position , float width , float height
		      , float length , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawCubeTexture: texture position: position width: width height: height length: length color: color [
	"Draw cube textured"

	self ffiCall:
		#( void DrawCubeTexture #( Texture2D texture , Vector3 position
		      , float width , float height , float length , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawCubeV: position size: size color: color [
	"Draw cube (Vector version)"

	self ffiCall:
		#( void DrawCubeV #( Vector3 position , Vector3 size , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawCubeWires: position width: width height: height length: length color: color [
	"Draw cube wires"

	self ffiCall:
		#( void DrawCubeWires #( Vector3 position , float width , float
		      height , float length , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawCubeWiresV: position size: size color: color [
	"Draw cube wires (Vector version)"

	self ffiCall:
		#( void DrawCubeWiresV #( Vector3 position , Vector3 size , Color
		      color ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawCylinder: position radiusTop: radiusTop radiusBottom: radiusBottom height: height slices: slices color: color [
	"Draw a cylinder/cone"

	self ffiCall:
		#( void DrawCylinder #( Vector3 position , float radiusTop , float
		      radiusBottom , float height , int slices , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawCylinderWires: position radiusTop: radiusTop radiusBottom: radiusBottom height: height slices: slices color: color [
	"Draw a cylinder/cone wires"

	self ffiCall:
		#( void DrawCylinderWires #( Vector3 position , float radiusTop
		      , float radiusBottom , float height , int slices , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawEllipse: centerX centerY: centerY radiusH: radiusH radiusV: radiusV color: color [
	"Draw ellipse"

	self ffiCall:
		#( void DrawEllipse #( int centerX , int centerY , float radiusH
		      , float radiusV , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawEllipseLines: centerX centerY: centerY radiusH: radiusH radiusV: radiusV color: color [
	"Draw ellipse outline"

	self ffiCall:
		#( void DrawEllipseLines #( int centerX , int centerY , float radiusH
		      , float radiusV , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawFPS: posX posY: posY [
	"Draw current FPS"

	self ffiCall: #( void DrawFPS #( int posX , int posY ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawGrid: slices spacing: spacing [
	"Draw a grid (centered at (0, 0, 0))"

	self ffiCall: #( void DrawGrid #( int slices , float spacing ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawLine3D: startPos endPos: endPos color: color [
	"Draw a line in 3D world space"

	self ffiCall:
		#( void DrawLine3D #( Vector3 startPos , Vector3 endPos , Color
		      color ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawLine: startPosX startPosY: startPosY endPosX: endPosX endPosY: endPosY color: color [
	"Draw a line"

	self ffiCall:
		#( void DrawLine #( int startPosX , int startPosY , int endPosX
		      , int endPosY , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawLineBezier: startPos endPos: endPos thick: thick color: color [
	"Draw a line using cubic-bezier curves in-out"

	self ffiCall:
		#( void DrawLineBezier #( Vector2 startPos , Vector2 endPos , float
		      thick , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawLineBezierQuad: startPos endPos: endPos controlPos: controlPos thick: thick color: color [
	"Draw line using quadratic bezier curves with a control point"

	self ffiCall:
		#( void DrawLineBezierQuad #( Vector2 startPos , Vector2 endPos
		      , Vector2 controlPos , float thick , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawLineEx: startPos endPos: endPos thick: thick color: color [
	"Draw a line defining thickness"

	self ffiCall:
		#( void DrawLineEx #( Vector2 startPos , Vector2 endPos , float
		      thick , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawLineStrip: points pointsCount: pointsCount color: color [
	"Draw lines sequence"

	self ffiCall:
		#( void DrawLineStrip #( Vector2 * points , int pointsCount
		      , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawLineV: startPos endPos: endPos color: color [
	"Draw a line (Vector version)"

	self ffiCall:
		#( void DrawLineV #( Vector2 startPos , Vector2 endPos , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawMesh: mesh material: material transform: transform [
	"Draw a 3d mesh with material and transform"

	self ffiCall:
		#( void DrawMesh #( Mesh mesh , Material material , Matrix transform ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawMeshInstanced: mesh material: material transforms: transforms instances: instances [
	"Draw multiple mesh instances with material and different transforms"

	self ffiCall:
		#( void DrawMeshInstanced #( Mesh mesh , Material material , Matrix
		      * transforms , int instances ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawModel: model position: position scale: scale tint: tint [
	"Draw a model (with texture if set)"

	self ffiCall:
		#( void DrawModel #( Model model , Vector3 position , float scale
		      , Color tint ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawModelEx: model position: position rotationAxis: rotationAxis rotationAngle: rotationAngle scale: scale tint: tint [
	"Draw a model with extended parameters"

	self ffiCall:
		#( void DrawModelEx #( Model model , Vector3 position , Vector3
		      rotationAxis , float rotationAngle , Vector3 scale , Color
		      tint ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawModelWires: model position: position scale: scale tint: tint [
	"Draw a model wires (with texture if set)"

	self ffiCall:
		#( void DrawModelWires #( Model model , Vector3 position , float
		      scale , Color tint ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawModelWiresEx: model position: position rotationAxis: rotationAxis rotationAngle: rotationAngle scale: scale tint: tint [
	"Draw a model wires (with texture if set) with extended parameters"

	self ffiCall:
		#( void DrawModelWiresEx #( Model model , Vector3 position , Vector3
		      rotationAxis , float rotationAngle , Vector3 scale , Color
		      tint ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawPixel: posX posY: posY color: color [
	"Draw a pixel"

	self ffiCall:
		#( void DrawPixel #( int posX , int posY , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawPixelV: position color: color [
	"Draw a pixel (Vector version)"

	self ffiCall:
		#( void DrawPixelV #( Vector2 position , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawPlane: centerPos size: size color: color [
	"Draw a plane XZ"

	self ffiCall:
		#( void DrawPlane #( Vector3 centerPos , Vector2 size , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawPoint3D: position color: color [
	"Draw a point in 3D space, actually a small line"

	self ffiCall:
		#( void DrawPoint3D #( Vector3 position , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawPoly: center sides: sides radius: radius rotation: rotation color: color [
	"Draw a regular polygon (Vector version)"

	self ffiCall:
		#( void DrawPoly #( Vector2 center , int sides , float radius , float
		      rotation , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawPolyLines: center sides: sides radius: radius rotation: rotation color: color [
	"Draw a polygon outline of n sides"

	self ffiCall:
		#( void DrawPolyLines #( Vector2 center , int sides , float radius
		      , float rotation , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawPolyLinesEx: center sides: sides radius: radius rotation: rotation lineThick: lineThick color: color [
	"Draw a polygon outline of n sides with extended parameters"

	self ffiCall:
		#( void DrawPolyLinesEx #( Vector2 center , int sides , float radius
		      , float rotation , float lineThick , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawRay: ray color: colore [
	"Draw a ray line"

	self ffiCall: #( void DrawRay #( Ray ray , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawRectangle: posX posY: posY width: width height: height color: color [
	"Draw a color-filled rectangle"

	self ffiCall:
		#( void DrawRectangle #( int posX , int posY , int width , int height
		      , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawRectangleGradientEx: rec col1: col1 col2: col2 col3: col3 col4: col4 [
	"Draw a gradient-filled rectangle with custom vertex colors"

	self ffiCall:
		#( void DrawRectangleGradientEx #( Rectangle rec , Color col1 , Color
		      col2 , Color col3 , Color col4 ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawRectangleGradientH: posX posY: posY width: width height: height color1: color1 color2: color2 [
	"Draw a horizontal-gradient-filled rectangle"

	self ffiCall:
		#( void DrawRectangleGradientH #( int posX , int posY , int width
		      , int height , Color color1 , Color color2 ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawRectangleGradientV: posX posY: posY width: width height: height color1: color1 color2: color2 [
	"Draw a vertical-gradient-filled rectangle"

	self ffiCall:
		#( void DrawRectangleGradientV #( int posX , int posY , int width
		      , int height , Color color1 , Color color2 ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawRectangleLines: posX posY: posY width: width height: height color: color [
	"Draw rectangle outline"

	self ffiCall:
		#( void DrawRectangleLines #( int posX , int posY , int width , int
		      height , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawRectangleLinesEx: rec lineThick: lineThick color: color [
	"Draw rectangle outline with extended parameters"

	self ffiCall:
		#( void DrawRectangleLinesEx #( Rectangle rec , float lineThick
		      , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawRectanglePro: rec origin: origin rotation: rotation color: color [
	"Draw a color-filled rectangle with pro parameters"

	self ffiCall:
		#( void DrawRectanglePro #( Rectangle rec , Vector2 origin , float
		      rotation , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawRectangleRec: rec color: color [
	"Draw a color-filled rectangle"

	self ffiCall:
		#( void DrawRectangleRec #( Rectangle rec , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawRectangleRounded: rec roundness: roundness segments: segments color: color [
	"Draw rectangle with rounded edges"

	self ffiCall:
		#( void DrawRectangleRounded #( Rectangle rec , float roundness
		      , int segments , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawRectangleRoundedLines: rec roundness: roundness segments: segments lineThick: lineThick color: color [
	"Draw rectangle with rounded edges outline"

	self ffiCall:
		#( void DrawRectangleRoundedLines #( Rectangle rec , float roundness
		      , int segments , float lineThick , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawRectangleV: position size: size color: color [
	"Draw rectangle within an image (Vector version)"

	self ffiCall:
		#( void DrawRectangleV #( Vector2 position , Vector2 size , Color
		      color ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawRing: center innerRadius: innerRadius outerRadius: outerRadius startAngle: startAngle endAngle: endAngle segments: segments color: color [
	"Draw ring"

	self ffiCall:
		#( void DrawRing #( Vector2 center , float innerRadius , float outerRadius
		      , float startAngle , float endAngle , int segments , Color
		      color ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawRingLines: center innerRadius: innerRadius outerRadius: outerRadius startAngle: startAngle endAngle: endAngle segments: segments color: color [
	"Draw ring outline"

	self ffiCall:
		#( void DrawRingLines #( Vector2 center , float innerRadius
		      , float outerRadius , float startAngle , float endAngle
		      , int segments , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawSphere: centerPos radius: radius color: color [
	"Draw sphere"

	self ffiCall:
		#( void DrawSphere #( Vector3 centerPos , float radius , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawSphereEx: centerPos radius: radius rings: rings slices: slices color: color [
	"Draw sphere with extended parameters"

	self ffiCall:
		#( void DrawSphereEx #( Vector3 centerPos , float radius , int rings
		      , int slices , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawSphereWires: centerPos radius: radius rings: rings slices: slices color: color [
	"Draw sphere wires"

	self ffiCall:
		#( void DrawSphereWires #( Vector3 centerPos , float radius , int
		      rings , int slices , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawText: text posX: posX posY: posY fontSize: fontSize color: color [
	"Draw text (using default font) within an image (destination)"

	self ffiCall:
		#( void DrawText #( const char * text , int posX , int posY , int
		      fontSize , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawTextCodepoint: font codepoint: codepoint position: position fontSize: fontSize tint: tint [
	"Draw one character (codepoint)"

	self ffiCall:
		#( void DrawTextCodepoint #( Font font , int codepoint , Vector2
		      position , float fontSize , Color tint ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawTextEx: font text: text position: position fontSize: fontSize spacing: spacing tint: tint [
	"Draw text using font and additional parameters"

	self ffiCall:
		#( void DrawTextEx #( Font font , const char * text , Vector2
		      position , float fontSize , float spacing , Color tint ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawTextRec: font text: text rec: rec fontSize: fontSize spacing: spacing wordWrap: wordWrap tint: tint [
	"Draw text using font inside rectangle limits"

	self ffiCall:
		#( void DrawTextRec #( Font font , const char * text , Rectangle
		      rec , float fontSize , float spacing , bool wordWrap , Color
		      tint ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawTextRecEx: font text: text rec: rec fontSize: fontSize spacing: spacing wordWrap: wordWrap tint: tint selectStart: selectStart selectLength: selectLength selectTint: selectTint selectBackTint: selectBackTint [
	"Draw text using font inside rectangle limits with support for text selection"

	self ffiCall:
		#( void DrawTextRecEx #( Font font , const char * text , Rectangle
		      rec , float fontSize , float spacing , bool wordWrap , Color
		      tint , int selectStart , int selectLength , Color selectTint
		      , Color selectBackTint ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawTexture: texture posX: posX posY: posY tint: tint [
	"Draw a Texture2D"

	self ffiCall:
		#( void DrawTexture #( Texture2D texture , int posX , int posY , Color
		      tint ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawTextureEx: texture position: position rotation: rotation scale: scale tint: tint [
	"Draw a Texture2D with extended parameters"

	self ffiCall:
		#( void DrawTextureEx #( Texture2D texture , Vector2 position
		      , float rotation , float scale , Color tint ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawTextureNPatch: texture nPatchInfo: nPatchInfo dest: dest origin: origin rotation: rotation tint: tint [
	"Draws a texture (or part of it) that stretches or shrinks nicely"

	self ffiCall:
		#( void DrawTextureNPatch #( Texture2D texture , NPatchInfo
		      nPatchInfo , Rectangle dest , Vector2 origin , float rotation
		      , Color tint ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawTexturePoly: texture center: center points: points texcoords: texcoords pointsCount: pointsCount tint: tint [
	"Draw a textured polygon"

	self ffiCall:
		#( void DrawTexturePoly #( Texture2D texture , Vector2 center , Vector2
		      * points , Vector2 * texcoords , int pointsCount , Color tint ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawTexturePro: texture source: source dest: dest origin: origin rotation: rotation tint: tint [
	"Draw a part of a texture defined by a rectangle with 'pro' parameters"

	self ffiCall:
		#( void DrawTexturePro #( Texture2D texture , Rectangle source
		      , Rectangle dest , Vector2 origin , float rotation , Color
		      tint ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawTextureQuad: texture tiling: tiling offset: offset quad: quad tint: tint [
	"Draw texture quad with tiling and offset parameters"

	self ffiCall:
		#( void DrawTextureQuad #( Texture2D texture , Vector2 tiling , Vector2
		      offset , Rectangle quad , Color tint ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawTextureRec: texture source: source position: position tint: tint [
	"Draw a part of a texture defined by a rectangle"

	self ffiCall:
		#( void DrawTextureRec #( Texture2D texture , Rectangle source
		      , Vector2 position , Color tint ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawTextureTiled: texture source: source dest: dest origin: origin rotation: rotation scale: scale tint: tint [
	"Draw part of a texture (defined by a rectangle) with rotation and scale tiled into dest."

	self ffiCall:
		#( void DrawTextureTiled #( Texture2D texture , Rectangle source
		      , Rectangle dest , Vector2 origin , float rotation , float
		      scale , Color tint ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawTextureV: texture position: position tint: tint [
	"Draw a Texture2D with position defined as Vector2"

	self ffiCall:
		#( void DrawTextureV #( Texture2D texture , Vector2 position
		      , Color tint ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawTriangle3D: v1 v2: v2 v3: v3 color: color [
	"Draw a color-filled triangle (vertex in counter-clockwise order!)"

	self ffiCall:
		#( void DrawTriangle3D #( Vector3 v1 , Vector3 v2 , Vector3 v3 , Color
		      color ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawTriangle: v1 v2: v2 v3: v3 color: color [
	"Draw a color-filled triangle (vertex in counter-clockwise order!)"

	self ffiCall:
		#( void DrawTriangle #( Vector2 v1 , Vector2 v2 , Vector2 v3 , Color
		      color ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawTriangleFan: points pointsCount: pointsCount color: color [
	"Draw a triangle fan defined by points (first vertex is the center)"

	self ffiCall:
		#( void DrawTriangleFan #( Vector2 * points , int pointsCount
		      , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawTriangleLines: v1 v2: v2 v3: v3 color: color [
	"Draw triangle outline (vertex in counter-clockwise order!)"

	self ffiCall:
		#( void DrawTriangleLines #( Vector2 v1 , Vector2 v2 , Vector2
		      v3 , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawTriangleStrip3D: points pointsCount: pointsCount color: color [
	"Draw a triangle strip defined by points"

	self ffiCall:
		#( void DrawTriangleStrip3D #( Vector3 * points , int pointsCount
		      , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> drawTriangleStrip: points pointsCount: pointsCount color: color [
	"Draw a triangle strip defined by points"

	self ffiCall:
		#( void DrawTriangleStrip #( Vector2 * points , int pointsCount
		      , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> enableCursor [
	"Enables cursor (unlock cursor)"

	self ffiCall: #( void EnableCursor #( void ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> endBlendMode [
	"End blending mode (reset to default: alpha blending)"

	self ffiCall: #( void EndBlendMode #( void ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> endDrawing [
	"End canvas drawing and swap buffers (double buffering)"

	self ffiCall: #( void EndDrawing #( void ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> endMode2D [
	"Ends 2D mode with custom camera"

	self ffiCall: #( void EndMode2D #( void ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> endMode3D [
	"Ends 3D mode and returns to default 2D orthographic mode"

	self ffiCall: #( void EndMode3D #( void ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> endScissorMode [
	"End scissor mode"

	self ffiCall: #( void EndScissorMode #( void ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> endShaderMode [
	"End custom shader drawing (use default shader)"

	self ffiCall: #( void EndShaderMode #( void ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> endTextureMode [
	"Ends drawing to render texture"

	self ffiCall: #( void EndTextureMode #( void ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> endVrStereoMode [
	"End stereo rendering (requires VR simulator)"

	self ffiCall: #( void EndVrStereoMode #( void ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> exportImage: image fileName: fileName [
	"Export image data to file, returns true on success"

	^ self ffiCall:
		  #( bool ExportImage #( Image image , const char * fileName ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> exportImageAsCode: image fileName: fileName [
	"Export image as code file defining an array of bytes, returns true on success"

	^ self ffiCall:
		  #( bool ExportImageAsCode #( Image image , const char * fileName ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> exportMesh: mesh fileName: fileName [
	"Export mesh data to file, returns true on success"

	^ self ffiCall:
		  #( bool ExportMesh #( Mesh mesh , const char * fileName ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> exportWave: wave fileName: fileName [
	"Export wave data to file, returns true on success"

	^ self ffiCall:
		  #( bool ExportWave #( Wave wave , const char * fileName ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> exportWaveAsCode: wave fileName: fileName [
	"Export wave sample data to code (.h), returns true on success"

	^ self ffiCall:
		  #( bool ExportWaveAsCode #( Wave wave , const char * fileName ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> fade: color alpha: alpha [
	"Get color with alpha applied, alpha goes from 0.0f to 1.0f"

	^ self ffiCall: #( Color Fade #( Color color , float alpha ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> fileExists: fileName [
	"Check if file exists"

	^ self ffiCall: #( bool FileExists #( const char * fileName ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> genImageCellular: width height: height tileSize: tileSize [
	"Generate image: cellular algorithm. Bigger tileSize means bigger cells"

	^ self ffiCall:
		  #( Image GenImageCellular #( int width , int height , int tileSize ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> genImageChecked: width height: height checksX: checksX checksY: checksY col1: col1 col2: col2 [
	"Generate image: checked"

	^ self ffiCall:
		  #( Image GenImageChecked #( int width , int height , int checksX
		        , int checksY , Color col1 , Color col2 ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> genImageColor: width height: height color: color [
	"Generate image: plain color"

	^ self ffiCall:
		  #( Image GenImageColor #( int width , int height , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> genImageFontAtlas: chars recs: recs charsCount: charsCount [
	"Generate image font atlas using chars info"

	^ self ffiCall:
		  #( Image GenImageFontAtlas #( const CharInfo * chars , Rectangle
		        ** recs , int charsCount , int fontSize , int padding
		        , int packMethod ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> genImageGradientH: width height: height left: left right: right [
	"Generate image: horizontal gradient"

	^ self ffiCall:
		  #( Image GenImageGradientH #( int width , int height , Color left
		        , Color right ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> genImageGradientRadial: width height: height density: density inner: inner outer: outer [
	"Generate image: radial gradient"

	^ self ffiCall:
		  #( Image GenImageGradientRadial #( int width , int height , float
		        density , Color inner , Color outer ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> genImageGradientV: width height: height top: top bottom: bottom [
	"Generate image: vertical gradient"

	^ self ffiCall:
		  #( Image GenImageGradientV #( int width , int height , Color top
		        , Color bottom ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> genImagePerlinNoise: width height: height offsetX: offsetX offsetY: offsetY scale: scale [
	"Generate image: perlin noise"

	^ self ffiCall:
		  #( Image GenImagePerlinNoise #( int width , int height , int offsetX
		        , int offsetY , float scale ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> genImageWhiteNoise: width height: height factor: factor [
	"Generate image: white noise"

	^ self ffiCall:
		  #( Image GenImageWhiteNoise #( int width , int height , float
		        factor ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> genMeshBinormals: mesh [
	"Compute mesh binormals"

	self ffiCall: #( void GenMeshBinormals #( Mesh * mesh ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> genMeshCube: width height: height length: length [
	"Generate cuboid mesh"

	^ self ffiCall:
		  #( Mesh GenMeshCube #( float width , float height , float length ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> genMeshCubicmap: cubicmap cubeSize: cubeSize [
	"Generate cubes-based map mesh from image data"

	^ self ffiCall:
		  #( Mesh GenMeshCubicmap #( Image cubicmap , Vector3 cubeSize ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> genMeshCylinder: radius height: height slices: slices [
	"Generate cylinder mesh"

	^ self ffiCall:
		  #( Mesh GenMeshCylinder #( float radius , float height , int slices ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> genMeshHeightmap: heightmap size: size [
	"Generate heightmap mesh from image data"

	^ self ffiCall:
		  #( Mesh GenMeshHeightmap #( Image heightmap , Vector3 size ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> genMeshHemiSphere: radius rings: rings slices: slices [
	"Generate half-sphere mesh (no bottom cap)"

	^ self ffiCall:
		  #( Mesh GenMeshHemiSphere #( float radius , int rings , int slices ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> genMeshKnot: radius size: size radSeg: radSeg sides: sides [
	"Generate trefoil knot mesh"

	^ self ffiCall:
		  #( Mesh GenMeshKnot #( float radius , float size , int radSeg
		        , int sides ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> genMeshPlane: width length: length resX: resX resZ: resZ [
	"Generate plane mesh (with subdivisions)"

	^ self ffiCall:
		  #( Mesh GenMeshPlane #( float width , float length , int resX , int
		        resZ ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> genMeshPoly: sides radius: radius [
	"Generate polygonal mesh"

	^ self ffiCall: #( Mesh GenMeshPoly #( int sides , float radius ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> genMeshSphere: radius rings: rings slices: slices [
	"Generate sphere mesh (standard sphere)"

	^ self ffiCall:
		  #( Mesh GenMeshSphere #( float radius , int rings , int slices ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> genMeshTangents: mesh [
	"Compute mesh tangents"

	self ffiCall: #( void GenMeshTangents #( Mesh * mesh ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> genMeshTorus: radius size: size radSeg: radSeg sides: sides [
	"Generate torus mesh"

	^ self ffiCall:
		  #( Mesh GenMeshTorus #( float radius , float size , int radSeg
		        , int sides ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> genTextureMipmaps: texture [
	"Generate GPU mipmaps for a texture"

	self ffiCall: #( void GenTextureMipmaps #( Texture2D * texture ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getCameraMatrix2D: camera [
	"Get camera 2d transform matrix"

	^ self ffiCall: #( Matrix GetCameraMatrix2D #( Camera2D camera ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getCameraMatrix: camera [
	"Get camera transform matrix (view matrix)"

	^ self ffiCall: #( Matrix GetCameraMatrix #( Camera camera ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getCharPressed [
	"Get char pressed (unicode), call it multiple times for chars queued"

	^ self ffiCall: #( int GetCharPressed #( void ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getClipboardText [
	"Get clipboard text content"

	^ self ffiCall: #( const char * GetClipboardText #( void ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getCodepoint: text bytesProcessed: bytesProcessed [
	"Get next codepoint in a UTF8 encoded string, 0x3f('?') is returned on failure"

	^ self ffiCall:
		  #( int GetCodepoint #( const char * text , int * bytesProcessed ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getCodepointsCount: text [
	"Get total number of characters (codepoints) in a UTF8 encoded string"

	^ self ffiCall: #( int GetCodepointsCount #( const char * text ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getCollisionRec: rec1 rec2: rec2 [
	"Get collision rectangle for two rectangles collision"

	^ self ffiCall:
		  #( Rectangle GetCollisionRec #( Rectangle rec1 , Rectangle
		        rec2 ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getColor: hexValue [
	"Get Color structure from hexadecimal value"

	^ self ffiCall: #( Color GetColor #( int hexValue ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getCurrentMonitor [
	"Get current connected monitor"

	^ self ffiCall: #( int GetCurrentMonitor #( void ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getDirectoryFiles: dirPath count: count [
	"Get filenames in a directory path (memory should be freed)"

	^ self ffiCall:
		  #( char ** GetDirectoryFiles #( const char * dirPath , int * count ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getDirectoryPath: filePath [
	"Get full path for a given fileName with path (uses static string)"

	^ self ffiCall:
		  #( const char * GetDirectoryPath #( const char * filePath ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getDroppedFiles: count [
	"Get dropped files names (memory should be freed)"

	^ self ffiCall: #( char ** GetDroppedFiles #( int * count ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getFPS [
	"Get current FPS"

	^ self ffiCall: #( int GetFPS #( void ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getFileExtension: fileName [
	"Get pointer to extension for a filename string (includes dot: '.png')"

	^ self ffiCall:
		  #( const char * GetFileExtension #( const char * fileName ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getFileModTime: fileName [
	"Get file modification time (last write time)"

	^ self ffiCall: #( long GetFileModTime #( const char * fileName ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getFileName: filePath [
	"Get pointer to filename for a path string"

	^ self ffiCall:
		  #( const char * GetFileName #( const char * filePath ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getFileNameWithoutExt: filePath [
	"Get filename string without extension (uses static string)"

	^ self ffiCall:
		  #( const char * GetFileNameWithoutExt #( const char * filePath ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getFontDefault [
	"Get the default Font"

	^ self ffiCall: #( Font GetFontDefault #( void ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getFrameTime [
	"Get time in seconds for last frame drawn (delta time)"

	^ self ffiCall: #( float GetFrameTime #( void ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getGamepadAxisCount: gamepad [
	"Get gamepad axis count for a gamepad"

	^ self ffiCall: #( int GetGamepadAxisCount #( int gamepad ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getGamepadAxisMovement: gamepad axis: axis [
	"Get axis movement value for a gamepad axis"

	^ self ffiCall:
		  #( float GetGamepadAxisMovement #( int gamepad , int axis ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getGamepadButtonPressed [
	"Get the last gamepad button pressed"

	^ self ffiCall: #( int GetGamepadButtonPressed
	     #( void ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getGamepadName: gamepad [
	"Get gamepad internal name id"

	^ self ffiCall: #( const char * GetGamepadName #( int gamepad ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getGestureDetected [
	"Get latest detected gesture"

	^ self ffiCall: #( int GetGestureDetected #( void ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getGestureDragAngle [
	"Get gesture drag angle"

	^ self ffiCall: #( float GetGestureDragAngle #( void ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getGestureDragVector [
	"Get gesture pinch delta"

	^ self ffiCall: #( Vector2 GetGestureDragVector #( void ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getGestureHoldDuration [
	"Get gesture hold time in milliseconds"

	^ self ffiCall: #( float GetGestureHoldDuration
	     #( void ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getGesturePinchAngle [
	"Get gesture pinch angle"

	^ self ffiCall: #( float GetGesturePinchAngle #( void ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getGesturePinchVector [
	"Get gesture pinch delta"

	^ self ffiCall: #( Vector2 GetGesturePinchVector
	     #( void ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getGlyphIndex: font codepoint: codepoint [
	"Get index position for a unicode character on font"

	^ self ffiCall: #( int GetGlyphIndex #( Font font , int codepoint ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getImageAlphaBorder: image threshold: threshold [
	"Get image alpha border rectangle"

	^ self ffiCall:
		  #( Rectangle GetImageAlphaBorder #( Image image , float threshold ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getKeyPressed [
	"Get key pressed (keycode), call it multiple times for keys queued"

	^ self ffiCall: #( int GetKeyPressed #( void ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getMeshBoundingBox: mesh [
	"Compute mesh bounding box limits"

	^ self ffiCall: #( BoundingBox GetMeshBoundingBox #( Mesh mesh ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getMonitorCount [
	"Get number of connected monitors"

	^ self ffiCall: #( int GetMonitorCount #( void ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getMonitorHeight: monitor [
	"Get specified monitor height (max available by monitor)"

	^ self ffiCall: #( int GetMonitorHeight #( int monitor ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getMonitorName: monitor [
	"Get the human-readable, UTF-8 encoded name of the primary monitor"

	^ self ffiCall: #( const char * GetMonitorName #( int monitor ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getMonitorPhysicalHeight: monitor [
	"Get specified monitor physical height in millimetres"

	^ self ffiCall: #( int GetMonitorPhysicalHeight
	     #( int monitor ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getMonitorPhysicalWidth: monitor [
	"Get specified monitor physical width in millimetres"

	^ self ffiCall: #( int GetMonitorPhysicalWidth
	     #( int monitor ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getMonitorPosition: monitor [
	"Get specified monitor position"

	^ self ffiCall: #( Vector2 GetMonitorPosition #( int monitor ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getMonitorRefreshRate: monitor [
	"Get specified monitor refresh rate"

	^ self ffiCall: #( int GetMonitorRefreshRate #( int monitor ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getMonitorWidth: monitor [
	"Get specified monitor width (max available by monitor)"

	^ self ffiCall: #( int GetMonitorWidth #( int monitor ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getMouseDelta [
	"Get mouse delta between frames"

	^ self ffiCall: #( Vector2 GetMouseDelta #( void ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getMousePosition [
	"Get mouse position XY"

	^ self ffiCall: #( Vector2 GetMousePosition #( void ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getMouseRay: mousePosition camera: camera [
	"Get a ray trace from mouse position"

	^ self ffiCall:
		  #( Ray GetMouseRay #( Vector2 mousePosition , Camera camera ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getMouseWheelMove [
	"Get mouse wheel movement Y"

	^ self ffiCall: #( float GetMouseWheelMove #( void ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getMouseX [
	"Get mouse position X"

	^ self ffiCall: #( int GetMouseX #( void ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getMouseY [
	"Get mouse position Y"

	^ self ffiCall: #( int GetMouseY #( void ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getMusicTimeLength: music [
	"Get music time length (in seconds)"

	^ self ffiCall: #( float GetMusicTimeLength #( Music music ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getMusicTimePlayed: music [
	"Get current music time played (in seconds)"

	^ self ffiCall: #( float GetMusicTimePlayed #( Music music ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getPixelColor: srcPtr type: type [
	"Get Color from a source pixel pointer of certain format"

	^ self ffiCall:
		  #( Color GetPixelColor #( void * srcPtr , int type ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getPixelDataSize: width height: height type: type [
	"Get pixel data size in bytes for certain format"

	self ffiCall:
		#( int GetPixelDataSize #( int width , int height , int type ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getPrevDirectoryPath: dirPath [
	"Get previous directory path for a given path (uses static string)"

	^ self ffiCall:
		  #( const char * GetPrevDirectoryPath #( const char * dirPath ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getRandomValue: min max: max [
	"Get a random value between min and max (both included)"

	^ self ffiCall: #( int GetRandomValue #( int min , int max ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getRayCollisionBox: ray box: box [
	"Get collision info between ray and box"

	^ self ffiCall:
		  #( RayCollision GetRayCollisionBox #( Ray ray , BoundingBox
		        box ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getRayCollisionMesh: ray mesh: mesh transform: transform [
	"Get collision info between ray and mesh"

	^ self ffiCall:
		  #( RayCollision GetRayCollisionMesh #( Ray ray , Mesh mesh , Matrix
		        transform ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getRayCollisionModel: ray model: model [
	"Get collision info between ray and model"

	^ self ffiCall:
		  #( RayCollision GetRayCollisionModel #( Ray ray , Model model ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getRayCollisionQuad: ray p1: p1 p2: p2 p3: p3 p4: p4 [
	"Get collision info between ray and quad"

	^ self ffiCall:
		  #( RayCollision GetRayCollisionQuad #( Ray ray , Vector3 p1 , Vector3
		        p2 , Vector3 p3 , Vector3 p4 ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getRayCollisionSphere: ray center: center radius: radius [
	"Get collision info between ray and sphere"

	^ self ffiCall:
		  #( RayCollision GetRayCollisionSphere #( Ray ray , Vector3 center
		        , float radius ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getRayCollisionTriangle: ray p1: p1 p2: p2 p3: p3 [
	"Get collision info between ray and triangle"

	^ self ffiCall:
		  #( RayCollision GetRayCollisionTriangle #( Ray ray , Vector3
		        p1 , Vector3 p2 , Vector3 p3 ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getScreenHeight [
	"Get current screen height"

	^ self ffiCall: #( int GetScreenHeight #( void ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getScreenToWorld2D: position camera: camera [
	"Get the world space position for a 2d camera screen space position"

	^ self ffiCall:
		  #( Vector2 GetScreenToWorld2D #( Vector2 position , Camera2D
		        camera ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getScreenWidth [
	"Get current screen width"

	^ self ffiCall: #( int GetScreenWidth #( void ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getShaderLocation: shader uniformName: uniformName [
	"Get shader uniform location"

	^ self ffiCall:
		  #( int GetShaderLocation #( Shader shader , const char * uniformName ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getShaderLocationAttrib: shader attribName: attribName [
	"Get shader attribute location"

	^ self ffiCall:
		  #( int GetShaderLocationAttrib #( Shader shader , const char * attribName ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getSoundsPlaying [
	"Get number of sounds playing in the multichannel"

	^ self ffiCall: #( int GetSoundsPlaying #( void ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getTime [
	"Get elapsed time in seconds since InitWindow()"

	^ self ffiCall: #( double GetTime #( void ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getTouchPointsCount [
	"Get touch points count"

	^ self ffiCall: #( int GetTouchPointsCount #( void ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getTouchPosition: index [
	"Get touch position XY for a touch point index (relative to screen size)"

	^ self ffiCall: #( Vector2 GetTouchPosition #( int index ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getTouchX [
	"Get touch position X for touch point 0 (relative to screen size)"

	^ self ffiCall: #( int GetTouchX #( void ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getTouchY [
	"Get touch position Y for touch point 0 (relative to screen size)"

	^ self ffiCall: #( int GetTouchY #( void ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getWindowHandle [
	"Get native window handle"

	^ self ffiCall: #( void * GetWindowHandle #( void ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getWindowPosition [
	"Get window position XY on monitor"

	^ self ffiCall: #( Vector2 GetWindowPosition #( void ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getWindowScaleDPI [
	"Get window scale DPI factor"

	^ self ffiCall: #( Vector2 GetWindowScaleDPI #( void ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getWorkingDirectory [
	"Get current working directory (uses static string)"

	^ self ffiCall: #( const char * GetWorkingDirectory
	     #( void ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getWorldToScreen2D: position camera: camera [
	"Get the screen space position for a 2d camera world space position"

	^ self ffiCall:
		  #( Vector2 GetWorldToScreen2D #( Vector2 position , Camera2D
		        camera ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getWorldToScreen: position camera: camera [
	"Get the screen space position for a 3d world space position"

	^ self ffiCall:
		  #( Vector2 GetWorldToScreen #( Vector3 position , Camera camera ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> getWorldToScreenEx: position camera: camera width: width height: height [
	"Get size position for a 3d world space position"

	^ self ffiCall:
		  #( Vector2 GetWorldToScreenEx #( Vector3 position , Camera camera
		        , int width , int height ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> hideCursor [
	"Hides cursor"

	self ffiCall: #( void HideCursor #( void ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> imageAlphaClear: image color: color threshold: threshold [
	"Clear alpha channel to desired color"

	self ffiCall:
		#( void ImageAlphaClear #( Image * image , Color color , float threshold ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> imageAlphaCrop: image threshold: threshold [
	"Crop image depending on alpha value"

	self ffiCall:
		#( void ImageAlphaCrop #( Image * image , float threshold ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> imageAlphaMask: image alphaMask: alphaMask [
	"Apply alpha mask to image"

	self ffiCall:
		#( void ImageAlphaMask #( Image * image , Image alphaMask ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> imageAlphaPremultiply: image [
	"Premultiply alpha channel"

	self ffiCall: #( void ImageAlphaPremultiply #( Image * image ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> imageClearBackground: dst color: color [
	"Clear image background with given color"

	self ffiCall:
		#( void ImageClearBackground #( Image * dst , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> imageColorBrightness: image brightness: brightness [
	"Modify image color: brightness (-255 to 255)"

	self ffiCall:
		#( void ImageColorBrightness #( Image * image , int brightness ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> imageColorContrast: image contrast: contrast [
	"Modify image color: contrast (-100 to 100)"

	self ffiCall:
		#( void ImageColorContrast #( Image * image , float contrast ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> imageColorGrayscale: image [
	"Modify image color: grayscale"

	self ffiCall: #( void ImageColorGrayscale #( Image * image ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> imageColorInvert: image [
	"Modify image color: invert"

	self ffiCall: #( void ImageColorInvert #( Image * image ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> imageColorReplace: image color: color replace: replace [
	"Modify image color: replace color"

	self ffiCall:
		#( void ImageColorReplace #( Image * image , Color color , Color
		      replace ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> imageColorTint: image color: color [
	"Modify image color: tint"

	self ffiCall:
		#( void ImageColorTint #( Image * image , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> imageCopy: image [
	"Create an image duplicate (useful for transformations)"

	^ self ffiCall: #( Image ImageCopy #( Image image ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> imageCrop: image crop: crop [
	"Crop an image to a defined rectangle"

	self ffiCall: #( void ImageCrop #( Image * image , Rectangle
	      crop ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> imageDither: image rBpp: rBpp gBpp: gBpp bBpp: bBpp aBpp: aBpp [
	"Dither image data to 16bpp or lower (Floyd-Steinberg dithering)"

	self ffiCall:
		#( void ImageDither #( Image * image , int rBpp , int gBpp , int bBpp
		      , int aBpp ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> imageDraw: dst src: src srcRec: srcRec dstRec: dstRec tint: tint [
	"Draw a source image within a destination image (tint applied to source)"

	self ffiCall:
		#( void ImageDraw #( Image * dst , Image src , Rectangle srcRec
		      , Rectangle dstRec , Color tint ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> imageDrawCircle: dst centerX: centerX centerY: centerY radius: radius color: color [
	"Draw circle within an image"

	self ffiCall:
		#( void ImageDrawCircle #( Image * dst , int centerX , int centerY
		      , int radius , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> imageDrawCircleV: dst center: center radius: radius color: color [
	"Draw line within an image (Vector version)"

	self ffiCall:
		#( void ImageDrawCircleV #( Image * dst , Vector2 center , int radius
		      , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> imageDrawLine: dst startPosX: startPosX startPosY: startPosY endPosX: endPosY color: color [
	"Draw line within an image"

	self ffiCall:
		#( void ImageDrawLine #( Image * dst , int startPosX , int startPosY
		      , int endPosX , int endPosY , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> imageDrawLineV: dst start: start end: end color: color [
	"Draw line within an image (Vector version)"

	self ffiCall:
		#( void ImageDrawLineV #( Image * dst , Vector2 start , Vector2
		      end , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> imageDrawPixel: dst posX: posX posY: posY color: color [
	"Draw pixel within an image"

	self ffiCall:
		#( void ImageDrawPixel #( Image * dst , int posX , int posY , Color
		      color ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> imageDrawPixelV: dst position: position color: color [
	"Draw pixel within an image (Vector version)"

	self ffiCall:
		#( void ImageDrawPixelV #( Image * dst , Vector2 position , Color
		      color ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> imageDrawRectangle: dst posX: posX posY: posY width: width height: height color: color [
	"Draw rectangle within an image"

	self ffiCall:
		#( void ImageDrawRectangle #( Image * dst , int posX , int posY , int
		      width , int height , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> imageDrawRectangleLines: dst rec: rec thick: thick color: color [
	"Draw rectangle lines within an image"

	self ffiCall:
		#( void ImageDrawRectangleLines #( Image * dst , Rectangle rec , int
		      thick , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> imageDrawRectangleRec: dst rec: rec color: color [
	"Draw rectangle within an image"

	self ffiCall:
		#( void ImageDrawRectangleRec #( Image * dst , Rectangle rec , Color
		      color ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> imageDrawRectangleV: dst position: position size: size color: color [
	"Draw rectangle within an image (Vector version)"

	self ffiCall:
		#( void ImageDrawRectangleV #( Image * dst , Vector2 position
		      , Vector2 size , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> imageDrawText: dst text: text posX: posX posY: posY fontSize: fontSize color: color [
	"Create an image from text (default font)"

	self ffiCall:
		#( void ImageDrawText #( Image * dst , const char * text , int posX
		      , int posY , int fontSize , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> imageDrawTextEx: dst font: font text: text position: position fontSize: fontSize spacing: spacing tint: tint [
	"Create an image from text (custom sprite font)"

	self ffiCall:
		#( void ImageDrawTextEx #( Image * dst , Font font , const char * text
		      , Vector2 position , float fontSize , float spacing , Color
		      tint ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> imageFlipHorizontal: image [
	"Flip image horizontally"

	self ffiCall: #( void ImageFlipHorizontal #( Image * image ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> imageFlipVertical: image [
	"Flip image vertically"

	self ffiCall: #( void ImageFlipVertical #( Image * image ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> imageFormat: image newFormat: newFormat [
	"Convert image data to desired format"

	self ffiCall:
		#( void ImageFormat #( Image * image , int newFormat ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> imageFromImage: image rec: rec [
	"Create an image from another image piece"

	^ self ffiCall:
		  #( Image ImageFromImage #( Image image , Rectangle rec ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> imageMipmaps: image [
	"Compute all mipmap levels for a provided image"

	self ffiCall: #( void ImageMipmaps #( Image * image ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> imageResize: image newWidth: newWidth newHeight: newHeight [
	"Bicubic scaling algorithm"

	self ffiCall:
		#( void ImageResize #( Image * image , int newWidth , int newHeight ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> imageResizeCanvas: image newWidth: newWidth newHeight: newHeight offsetX: offsetX offsetY: offsetY fill: fill [
	"Resize canvas and fill with color"

	self ffiCall:
		#( void ImageResizeCanvas #( Image * image , int newWidth , int newHeight
		      , int offsetX , int offsetY , Color fill ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> imageResizeNN: image newWidth: newWidth newHeight: newHeight [
	"Nearest-Neighbor scaling algorithm"

	self ffiCall:
		#( void ImageResizeNN #( Image * image , int newWidth , int newHeight ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> imageRotateCCW: image [
	"Rotate image counter-clockwise 90deg"

	self ffiCall: #( void ImageRotateCCW #( Image * image ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> imageRotateCW: image [
	"Rotate image clockwise 90deg"

	self ffiCall: #( void ImageRotateCW #( Image * image ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> imageText: text fontSize: fontSize color: color [
	"Create an image from text (default font)"

	^ self ffiCall:
		  #( Image ImageText #( const char * text , int fontSize , Color
		        color ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> imageTextEx: font text: text fontSize: fontSize spacing: spacing tint: tint [
	"Create an image from text (custom sprite font)"

	^ self ffiCall:
		  #( Image ImageTextEx #( Font font , const char * text , float
		        fontSize , float spacing , Color tint ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> imageToPOT: image fill: fill [
	"Convert image to POT (power-of-two)"

	self ffiCall: #( void ImageToPOT #( Image * image , Color fill ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> initAudioDevice [
	"Initialize audio device and context"

	self ffiCall: #( void InitAudioDevice #( void ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> initWindow: width height: height title: title [
	"Initialize window and OpenGL context"

	self ffiCall:
		#( void InitWindow #( int width , int height , const char * title ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> isAudioDeviceReady [
	"Check if audio device has been initialized successfully"

	^ self ffiCall: #( bool IsAudioDeviceReady #( void ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> isAudioStreamPlaying: stream [
	"Check if audio stream is playing"

	^ self ffiCall:
		  #( bool IsAudioStreamPlaying #( AudioStream stream ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> isAudioStreamProcessed: stream [
	"Check if any audio stream buffers requires refill"

	^ self ffiCall:
		  #( bool IsAudioStreamProcessed #( AudioStream stream ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> isCursorHidden [
	"Check if cursor is not visible"

	^ self ffiCall: #( bool IsCursorHidden #( void ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> isCursorOnScreen [
	"Check if cursor is on the screen"

	^ self ffiCall: #( bool IsCursorOnScreen #( void ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> isFileDropped [
	"Check if a file has been dropped into window"

	^ self ffiCall: #( bool IsFileDropped #( void ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> isFileExtension: fileName ext: ext [
	"Check file extension (including point: .png, .wav)"

	^ self ffiCall:
		  #( bool IsFileExtension #( const char * fileName , const char * ext ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> isGamepadAvailable: gamepad [
	"Check if a gamepad is available"

	^ self ffiCall: #( bool IsGamepadAvailable #( int gamepad ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> isGamepadButtonDown: gamepad button: button [
	"Check if a gamepad button is being pressed"

	^ self ffiCall:
		  #( bool IsGamepadButtonDown #( int gamepad , int button ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> isGamepadButtonPressed: gamepad button: button [
	"Check if a gamepad button has been pressed once"

	^ self ffiCall:
		  #( bool IsGamepadButtonPressed #( int gamepad , int button ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> isGamepadButtonReleased: gamepad button: button [
	"Check if a gamepad button has been released once"

	^ self ffiCall:
		  #( bool IsGamepadButtonReleased #( int gamepad , int button ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> isGamepadButtonUp: gamepad button: button [
	"Check if a gamepad button is NOT being pressed"

	^ self ffiCall:
		  #( bool IsGamepadButtonUp #( int gamepad , int button ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> isGamepadName: gamepad gamepadname: gamepadname [
	"Get gamepad internal name id"

	^ self ffiCall:
		  #( bool IsGamepadName #( int gamepad , const char * gamepadname ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> isGestureDetected: gesture [
	"Check if a gesture have been detected"

	^ self ffiCall: #( bool IsGestureDetected #( int gesture ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> isKeyDown: key [
	"Check if a key is being pressed"

	^ self ffiCall: #( bool IsKeyDown #( int key ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> isKeyPressed: key [
	"Check if a key has been pressed once"

	^ self ffiCall: #( bool IsKeyPressed #( int key ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> isKeyReleased: key [
	"Check if a key has been released once"

	^ self ffiCall: #( bool IsKeyReleased #( int key ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> isKeyUp: key [
	"Check if a key is NOT being pressed"

	^ self ffiCall: #( bool IsKeyUp #( int key ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> isModelAnimationValid: model anim: anim [
	"Check model animation skeleton match"

	^ self ffiCall:
		  #( bool IsModelAnimationValid #( Model model , ModelAnimation
		        anim ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> isMouseButtonDown: button [
	"Check if a mouse button is being pressed"

	^ self ffiCall: #( bool IsMouseButtonDown #( int button ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> isMouseButtonPressed: button [
	"Check if a mouse button has been pressed once"

	^ self ffiCall: #( bool IsMouseButtonPressed #( int button ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> isMouseButtonReleased: button [
	"Check if a mouse button has been released once"

	^ self ffiCall: #( bool IsMouseButtonReleased #( int button ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> isMouseButtonUp: button [
	"Check if a mouse button is NOT being pressed"

	^ self ffiCall: #( bool IsMouseButtonUp #( int button ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> isMusicStreamPlaying: music [
	"Check if music is playing"

	^ self ffiCall: #( bool IsMusicStreamPlaying #( Music music ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> isSoundPlaying: sound [
	"Check if a sound is currently playing"

	^ self ffiCall: #( bool IsSoundPlaying #( Sound sound ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> isWindowFocused [
	"Check if window is currently focused (only PLATFORM_DESKTOP)"

	^ self ffiCall: #( bool IsWindowFocused #( void ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> isWindowFullscreen [
	"Check if window is currently fullscreen"

	^ self ffiCall: #( bool IsWindowFullscreen #( void ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> isWindowHidden [
	"Check if window is currently hidden (only PLATFORM_DESKTOP)"

	^ self ffiCall: #( bool IsWindowHidden #( void ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> isWindowMaximized [
	"Check if window is currently maximized (only PLATFORM_DESKTOP)"

	^ self ffiCall: #( bool IsWindowMaximized #( void ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> isWindowMinimized [
	"Check if window is currently minimized (only PLATFORM_DESKTOP)"

	^ self ffiCall: #( bool IsWindowMinimized #( void ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> isWindowReady [
	"Check if window has been initialized successfully"

	^ self ffiCall: #( bool IsWindowReady #( void ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> isWindowResized [
	"Check if window has been resized last frame"

	^ self ffiCall: #( bool IsWindowResized #( void ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> isWindowState: flag [
	"Check if one specific window flag is enabled"

	^ self ffiCall: #( bool IsWindowState #( unsigned int flag ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> loadAudioStream: sampleRate sampleSize: sampleSize channels: channels [
	"Load audio stream (to stream raw audio pcm data)"

	^ self ffiCall:
		  #( AudioStream LoadAudioStream #( unsigned int sampleRate
		        , unsigned int sampleSize , unsigned int channels ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> loadCodepoints: text count: count [
	"Load all codepoints from a UTF8 text string, codepoints count returned by parameter"

	^ self ffiCall:
		  #( int * LoadCodepoints #( const char * text , int * count ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> loadFileData: fileName bytesRead: bytesRead [
	"Load file data as byte array (read)"

	^ self ffiCall:
		  #( unsigned char * LoadFileData #( const char * fileName , unsigned
		        int * bytesRead ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> loadFileText: fileName [
	"Load text data from file (read), returns a '\0' terminated string"

	^ self ffiCall: #( char * LoadFileText #( const char * fileName ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> loadFont: fileName [
	"Load font from file into GPU memory (VRAM)"

	^ self ffiCall: #( Font LoadFont #( const char * fileName ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> loadFontData: fileData dataSize: dataSize fontSize: fontSize fontChars: fontChars charsCount: charsCount type: type [
	"Load font data for further use"

	^ self ffiCall:
		  #( CharInfo * LoadFontData #( const unsigned char * fileData
		        , int dataSize , int fontSize , int * fontChars , int charsCount
		        , int type ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> loadFontEx: fileName fontSize: fontSize fontChars: fontChars charsCount: charsCount [
	"Load font from file with extended parameters"

	^ self ffiCall:
		  #( Font LoadFontEx #( const char * fileName , int fontSize
		        , int * fontChars , int charsCount ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> loadFontFromImage: image key: key firstChar: firstChar [
	"Load font from Image (XNA style)"

	^ self ffiCall:
		  #( Font LoadFontFromImage #( Image image , Color key , int firstChar ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> loadFontFromMemory: fileType fileData: fileData dataSize: dataSize fontSize: fontSize fontChars: fontChars charsCount: charsCount [
	"Load font from memory buffer, fileType refers to extension: i.e. '.ttf'"

	^ self ffiCall:
		  #( Font LoadFontFromMemory #( const char * fileType , const unsigned
		        char * fileData , int dataSize , int fontSize , int * fontChars
		        , int charsCount ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> loadImage: fileName [
	"Load image from file into CPU memory (RAM)"

	^ self ffiCall: #( Image LoadImage #( const char * fileName ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> loadImageAnim: fileName frames: frames [
	"Load image sequence from file (frames appended to image.data)"

	^ self ffiCall:
		  #( Image LoadImageAnim #( const char * fileName , int * frames ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> loadImageColors: image [
	"Load color data from image as a Color array (RGBA - 32bit)"

	^ self ffiCall: #( Color * LoadImageColors #( Image image ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> loadImageFromMemory: fileType fileData: fileData dataSize: dataSize [
	"Load image from memory buffer, fileType refers to extension: i.e. '.png'"

	^ self ffiCall:
		  #( Image LoadImageFromMemory #( const char * fileType , const
		        unsigned char * fileData , int dataSize ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> loadImageFromScreen [
	"Load image from screen buffer and (screenshot)"

	^ self ffiCall: #( Image LoadImageFromScreen #( void ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> loadImageFromTexture: texture [
	"Load image from GPU texture data"

	^ self ffiCall:
		  #( Image LoadImageFromTexture #( Texture2D texture ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> loadImagePalette: image maxPaletteSize: maxPaletteSize colorsCount: colorsCount [
	"Load colors palette from image as a Color array (RGBA - 32bit)"

	^ self ffiCall:
		  #( Color * LoadImagePalette #( Image image , int maxPaletteSize
		        , int * colorsCount ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> loadImageRaw: fileName width: width height: height type: type headerSize: headerSize [
	"Load image from RAW file data"

	^ self ffiCall:
		  #( Image LoadImageRaw #( const char * fileName , int width , int
		        height , int type , int headerSize ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> loadMaterials: fileName materialCount: materialCount [
	"Load materials from model file"

	^ self ffiCall:
		  #( Material * LoadMaterials #( const char * fileName , int * materialCount ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> loadModel: fileName [
	"Load model from files (meshes and materials)"

	^ self ffiCall: #( Model LoadModel #( const char * fileName ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> loadModelAnimations: fileName animsCount: animsCount [
	"Load model animations from file"

	^ self ffiCall:
		  #( ModelAnimation * LoadModelAnimations #( const char * fileName
		        , int * animsCount ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> loadModelFromMesh: mesh [
	"Load model from generated mesh (default material)"

	^ self ffiCall: #( Model LoadModelFromMesh #( Mesh mesh ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> loadMusicStream: fileName [
	"Load music stream from file"

	^ self ffiCall: #( Music LoadMusicStream #( const char * fileName ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> loadMusicStreamFromMemory: fileType data: data dataSize: dataSize [
	"Load music stream from data"

	^ self ffiCall:
		  #( Music LoadMusicStreamFromMemory #( const char * fileType
		        , unsigned char * data , int dataSize ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> loadRenderTexture: width height: height [
	"Load texture for rendering (framebuffer)"

	^ self ffiCall:
		  #( RenderTexture2D LoadRenderTexture #( int width , int height ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> loadShader: vsFileName fsFileName: fsFileName [
	"Load shader from files and bind default locations"

	^ self ffiCall:
		  #( Shader LoadShader #( const char * vsFileName , const char * fsFileName ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> loadShaderFromMemory: vsCode fsCode: fsCode [
	"Load shader from code strings and bind default locations"

	^ self ffiCall:
		  #( Shader LoadShaderFromMemory #( const char * vsCode , const
		        char * fsCode ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> loadSound: fileName [
	"Load sound from file"

	^ self ffiCall: #( Sound LoadSound #( const char * fileName ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> loadSoundFromWave: wave [
	"Load sound from wave data"

	^ self ffiCall: #( Sound LoadSoundFromWave #( Wave wave ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> loadStorageValue: position [
	"Load integer value from storage file (from defined position)"

	^ self ffiCall: #( int LoadStorageValue #( unsigned int position ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> loadTexture: fileName [
	"Load texture from file into GPU memory (VRAM)"

	^ self ffiCall: #( Texture2D LoadTexture #( const char * fileName ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> loadTextureCubemap: image cubeLayout: cubeLayout [
	"Load cubemap from image, multiple image cubemap layouts supported"

	^ self ffiCall:
		  #( TextureCubemap LoadTextureCubemap #( Image image , int cubeLayout ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> loadTextureCubemap: image layout: cubeLayout [
	"Load cubemap from image, multiple image cubemap layouts supported"

	^ self ffiCall:
		  #( TextureCubemap LoadTextureCubemap #( Image image , int layout ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> loadTextureFromImage: image [
	"Load texture from image data"

	^ self ffiCall: #( Texture2D LoadTextureFromImage
	     #( Image image ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> loadVrStereoConfig: device [
	"Load VR stereo config for VR simulator device parameters"

	^ self ffiCall:
		  #( VrStereoConfig LoadVrStereoConfig #( VrDeviceInfo device ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> loadWave: fileName [
	"Load wave data from file"

	^ self ffiCall: #( Wave LoadWave #( const char * fileName ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> loadWaveFromMemory: fileType fileData: fileData dataSize: dataSize [
	"Load wave from memory buffer, fileType refers to extension: i.e. '.wav'"

	^ self ffiCall:
		  #( Wave LoadWaveFromMemory #( const char * fileType , const unsigned
		        char * fileData , int dataSize ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> loadWaveSamples: wave [
	"Load samples data from wave as a floats array"

	^ self ffiCall: #( float * LoadWaveSamples #( Wave wave ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> maximizeWindow [
	"Set window state: maximized, if resizable (only PLATFORM_DESKTOP)"

	self ffiCall: #( void MaximizeWindow #( void ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> measureText: text fontSize: fontSize [
	"Measure string width for default font"

	^ self ffiCall:
		  #( int MeasureText #( const char * text , int fontSize ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> measureTextEx: font text: text fontSize: fontSize spacing: spacing [
	"Measure string size for Font"

	^ self ffiCall:
		  #( Vector2 MeasureTextEx #( Font font , const char * text , float
		        fontSize , float spacing ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> memAlloc: size [
	"Internal memory allocator"

	^ self ffiCall: #( void * MemAlloc #( int size ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> memFree: ptr [
	"Internal memory free"

	self ffiCall: #( void MemFree #( void * ptr ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> memRealloc: ptr size: size [
	"Internal memory reallocator"

	^ self ffiCall: #( void * MemRealloc #( void * ptr , int size ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> minimizeWindow [
	"Set window state: minimized, if resizable (only PLATFORM_DESKTOP)"

	self ffiCall: #( void MinimizeWindow #( void ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> openURL: url [
	"Open URL with default system browser (if available)"

	self ffiCall: #( void OpenURL #( const char * url ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> pauseAudioStream: stream [
	"Pause audio stream"

	self ffiCall: #( void PauseAudioStream #( AudioStream stream ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> pauseMusicStream: music [
	"Pause music playing"

	self ffiCall: #( void PauseMusicStream #( Music music ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> pauseSound: sound [
	"Pause a sound"

	self ffiCall: #( void PauseSound #( Sound sound ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> playAudioStream: stream [
	"Play audio stream"

	self ffiCall: #( void PlayAudioStream #( AudioStream stream ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> playMusicStream: music [
	"Start music playing"

	self ffiCall: #( void PlayMusicStream #( Music music ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> playSound: sound [
	"Play a sound"

	self ffiCall: #( void PlaySound #( Sound sound ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> playSoundMulti: sound [
	"Play a sound (using multichannel buffer pool)"

	self ffiCall: #( void PlaySoundMulti #( Sound sound ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> pollInputEvents [
	"Register all input events"

	self ffiCall: #( void PollInputEvents #( void ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> restoreWindow [
	"Set window state: not minimized/maximized (only PLATFORM_DESKTOP)"

	self ffiCall: #( void RestoreWindow #( void ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> resumeAudioStream: stream [
	"Resume audio stream"

	self ffiCall: #( void ResumeAudioStream #( AudioStream stream ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> resumeMusicStream: music [
	"Resume playing paused music"

	self ffiCall: #( void ResumeMusicStream #( Music music ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> resumeSound: sound [
	"Resume a paused sound"

	self ffiCall: #( void ResumeSound #( Sound sound ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> saveFileData: fileName data: data bytesToWrite: bytesToWrite [
	"Save data to file from byte array (write), returns true on success"

	^ self ffiCall:
		  #( bool SaveFileData #( const char * fileName , void * data , unsigned
		        int bytesToWrite ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> saveFileText: fileName text: text [
	"Save text data to file (write), string must be '\0' terminated, returns true on success"

	^ self ffiCall:
		  #( bool SaveFileText #( const char * fileName , char * text ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> saveStorageValue: position value: value [
	"Save integer value to storage file (to defined position), returns true on success"

	^ self ffiCall:
		  #( bool SaveStorageValue #( unsigned int position , int value ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> setAudioStreamBufferSizeDefault: size [
	"Default size for new audio streams"

	self ffiCall: #( void SetAudioStreamBufferSizeDefault
		   #( int size ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> setAudioStreamPitch: stream pitch: pitch [
	"Set pitch for audio stream (1.0 is base level)"

	self ffiCall:
		#( void SetAudioStreamPitch #( AudioStream stream , float pitch ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> setAudioStreamVolume: stream volume: volume [
	"Set volume for audio stream (1.0 is max level)"

	self ffiCall:
		#( void SetAudioStreamVolume #( AudioStream stream , float volume ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> setCameraAltControl: keyAlt [
	"Set camera alt key to combine with mouse movement (free camera)"

	self ffiCall: #( void SetCameraAltControl #( int keyAlt ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> setCameraMode: camera mode: mode [
	"Set camera mode (multiple camera modes available)"

	self ffiCall: #( void SetCameraMode #( Camera camera , int mode ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> setCameraMoveControls: keyFront keyBack: keyBack keyRight: keyRight keyLeft: keyLeft keyUp: keyUp keyDown: keyDown [
	"Set camera move controls (1st person and 3rd person cameras)"

	self ffiCall:
		#( void SetCameraMoveControls #( int keyFront , int keyBack , int
		      keyRight , int keyLeft , int keyUp , int keyDown ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> setCameraPanControl: keyPan [
	"Set camera pan key to combine with mouse movement (free camera)"

	self ffiCall: #( void SetCameraPanControl #( int keyPan ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> setCameraSmoothZoomControl: keySmoothZoom [
	"Set camera smooth zoom key to combine with mouse (free camera)"

	self ffiCall:
		#( void SetCameraSmoothZoomControl #( int keySmoothZoom ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> setClipboardText: text [
	"Set clipboard text content"

	self ffiCall: #( void SetClipboardText #( const char * text ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> setConfigFlags: flags [
	"Setup init configuration flags (view FLAGS)"

	self ffiCall: #( void SetConfigFlags #( unsigned int flags ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> setExitKey: key [
	"Set a custom key to exit program (default is ESC)"

	self ffiCall: #( void SetExitKey #( int key ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> setGamepadMappings: mappings [
	"Set internal gamepad mappings (SDL_GameControllerDB)"

	^ self ffiCall:
		  #( int SetGamepadMappings #( const char * mappings ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> setGesturesEnabled: flags [
	"Enable a set of gestures using flags"

	self ffiCall: #( void SetGesturesEnabled #( unsigned int flags ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> setLoadFileDataCallback: callback [
	"Set custom file binary data loader"

	self ffiCall:
		#( void SetLoadFileDataCallback #( LoadFileDataCallback
		      callback ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> setLoadFileTextCallback: callback [
	"Set custom file text data loader"

	self ffiCall:
		#( void SetLoadFileTextCallback #( LoadFileTextCallback
		      callback ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> setMasterVolume: volume [
	"Set master volume (listener)"

	self ffiCall: #( void SetMasterVolume #( float volume ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> setMaterialTexture: material mapType: mapType texture: texture [
	"Set texture for a material map type (MATERIAL_MAP_DIFFUSE, MATERIAL_MAP_SPECULAR...)"

	self ffiCall:
		#( void SetMaterialTexture #( Material * material , int mapType
		      , Texture2D texture ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> setModelMeshMaterial: model meshId: meshId materialId: materialId [
	"Set material for a mesh"

	self ffiCall:
		#( void SetModelMeshMaterial #( Model * model , int meshId , int materialId ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> setMouseCursor: cursor [
	"Set mouse cursor"

	self ffiCall: #( void SetMouseCursor #( int cursor ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> setMouseOffset: offsetX offsetY: offsetY [
	"Set mouse offset"

	self ffiCall: #( void SetMouseOffset #( int offsetX , int offsetY ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> setMousePosition: x y: y [
	"Set mouse position XY"

	self ffiCall: #( void SetMousePosition #( int x , int y ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> setMouseScale: scaleX scaleY: scaleY [
	"Set mouse scaling"

	self ffiCall:
		#( void SetMouseScale #( float scaleX , float scaleY ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> setMusicPitch: music pitch: pitch [
	"Set pitch for a music (1.0 is base level)"

	self ffiCall: #( void SetMusicPitch #( Music music , float pitch ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> setMusicVolume: music volume: volume [
	"Set volume for music (1.0 is max level)"

	self ffiCall:
		#( void SetMusicVolume #( Music music , float volume ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> setPixelColor: dstPtr color: color type: type [
	"Set color formatted into destination pixel pointer"

	self ffiCall:
		#( void SetPixelColor #( void * dstPtr , Color color , int type ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> setSaveFileDataCallback: callback [
	"Set custom file binary data saver"

	self ffiCall:
		#( void SetSaveFileDataCallback #( SaveFileDataCallback
		      callback ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> setSaveFileTextCallback: callback [
	"Set custom file text data loader"

	self ffiCall:
		#( void SetSaveFileTextCallback #( SaveFileTextCallback
		      callback ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> setShaderValue: shader locIndex: locIndex value: value uniformType: uniformType [
	"Set shader uniform value"

	self ffiCall:
		#( void SetShaderValue #( Shader shader , int locIndex , const void
		      * value , int uniformType ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> setShaderValueMatrix: shader locIndex: locIndex mat: mat [
	"Set shader uniform value (matrix 4x4)"

	self ffiCall:
		#( void SetShaderValueMatrix #( Shader shader , int locIndex
		      , Matrix mat ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> setShaderValueTexture: shader locIndex: locIndex texture: texture [
	"Set shader uniform value for texture (sampler2d)"

	self ffiCall:
		#( void SetShaderValueTexture #( Shader shader , int locIndex
		      , Texture2D texture ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> setShaderValueV: shader locIndex: locIndex value: value uniformType: uniformType count: count [
	"Set shader uniform value vector"

	self ffiCall:
		#( void SetShaderValueV #( Shader shader , int locIndex , const
		      void * value , int uniformType , int count ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> setShapesTexture: texture source: source [
	"Set texture and rectangle to be used on shapes drawing"

	self ffiCall:
		#( void SetShapesTexture #( Texture2D texture , Rectangle source ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> setSoundPitch: sound pitch: pitch [
	"Set pitch for a sound (1.0 is base level)"

	self ffiCall: #( void SetSoundPitch #( Sound sound , float pitch ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> setSoundVolume: sound volume: volume [
	"Set volume for a sound (1.0 is max level)"

	self ffiCall:
		#( void SetSoundVolume #( Sound sound , float volume ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> setTargetFPS: fps [
	"Set target FPS (maximum)"

	self ffiCall: #( void SetTargetFPS #( int fps ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> setTextureFilter: texture filter: filter [
	"Set texture scaling filter mode"

	self ffiCall:
		#( void SetTextureFilter #( Texture2D texture , int filter ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> setTextureWrap: texture wrap: wrap [
	"Set texture wrapping mode"

	self ffiCall:
		#( void SetTextureWrap #( Texture2D texture , int wrap ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> setTraceLogCallback: callback [
	"Set custom trace log"

	self ffiCall:
		#( void SetTraceLogCallback #( TraceLogCallback callback ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> setTraceLogLevel: logLevel [
	"Set the current threshold (minimum) log level"

	self ffiCall: #( void SetTraceLogLevel #( int logLevel ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> setWindowIcon: image [
	"Set icon for window (only PLATFORM_DESKTOP)"

	self ffiCall: #( void SetWindowIcon #( Image image ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> setWindowMinSize: widht height: height [
	"Set window minimum dimensions (for FLAG_WINDOW_RESIZABLE)"

	self ffiCall: #( void SetWindowMinSize #( int width , int height ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> setWindowMonitor: monitor [
	"Set monitor for the current window (fullscreen mode)"

	self ffiCall: #( void SetWindowMonitor #( int monitor ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> setWindowPosition: x y: y [
	"Set window position on screen (only PLATFORM_DESKTOP)"

	self ffiCall: #( void SetWindowPosition #( int x , int y ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> setWindowSize: widht height: height [
	"Set window minimum dimensions (for FLAG_WINDOW_RESIZABLE)"

	self ffiCall: #( void SetWindowSize #( int width , int height ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> setWindowState: flags [
	"Set window configuration state using flags"

	self ffiCall: #( void SetWindowState #( unsigned int flags ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> setWindowTitle [
	"Set title for window (only PLATFORM_DESKTOP)"

	self ffiCall: #( void SetWindowTitle #( const char * title ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> showCursor [
	"Shows cursor"

	self ffiCall: #( void ShowCursor #( void ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> stopAudioStream: stream [
	"Stop audio stream"

	self ffiCall: #( void StopAudioStream #( AudioStream stream ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> stopMusicStream: music [
	"Stop music playing"

	self ffiCall: #( void StopMusicStream #( Music music ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> stopSound: sound [
	"Stop playing a sound"

	self ffiCall: #( void StopSound #( Sound sound ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> stopSoundMulti [
	"Stop any sound playing (using multichannel buffer pool)"

	self ffiCall: #( void StopSoundMulti #( void ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> swapScreenBuffer [
	"Swap back buffer with front buffer (screen drawing)"

	self ffiCall: #( void SwapScreenBuffer #( void ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> takeScreenshot: fileName [
	"Takes a screenshot of current screen (filename extension defines format)"

	self ffiCall: #( void TakeScreenshot #( const char * fileName ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> textAppend: text append: append position: position [
	"Append text at specific position and move cursor!"

	self ffiCall:
		#( void TextAppend #( char * text , const char * append , int * position ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> textCopy: dst src: src [
	"Copy one string to another, returns bytes copied"

	^ self ffiCall: #( int TextCopy #( char * dst , const char * src ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> textFindIndex: text find: find [
	"Find first text occurrence within a string"

	^ self ffiCall:
		  #( int TextFindIndex #( const char * text , const char * find ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> textInsert: text insert: insert position: position [
	"Insert text in a position (memory must be freed!)"

	^ self ffiCall:
		  #( char * TextInsert #( const char * text , const char * insert
		        , int position ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> textIsEqual: text1 text2: text2 [
	"Check if two text string are equal"

	^ self ffiCall:
		  #( bool TextIsEqual #( const char * text1 , const char * text2 ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> textJoin: textList count: count delimiter: delimiter [
	"Join text strings with delimiter"

	^ self ffiCall:
		  #( const char * TextJoin #( const char ** textList , int count
		        , const char * delimiter ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> textLength: text [
	"Get text length, checks for '\0' ending"

	^ self ffiCall: #( unsigned int TextLength #( const char * text ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> textReplace: text replace: replace by: by [
	"Replace text string (memory must be freed!)"

	^ self ffiCall:
		  #( char * TextReplace #( char * text , const char * replace
		        , const char * by ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> textSplit: text delimiter: delimiter count: count [
	"Split text into multiple strings"

	^ self ffiCall:
		  #( const char ** TextSplit #( const char * text , char delimiter
		        , int * count ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> textSubtext: text position: position length: length [
	"Get a piece of a text string"

	^ self ffiCall:
		  #( const char * TextSubtext #( const char * text , int position
		        , int length ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> textToInteger: text [
	"Get integer value from text (negative values not supported)"

	^ self ffiCall: #( int TextToInteger #( const char * text ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> textToLower: text [
	"Get lower case version of provided string"

	^ self ffiCall: #( const char * TextToLower #( const char * text ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> textToPascal: text [
	"Get Pascal case notation version of provided string"

	^ self ffiCall: #( const char * TextToPascal #( const char * text ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> textToUpper: text [
	"Get upper case version of provided string"

	^ self ffiCall: #( const char * TextToUpper #( const char * text ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> textToUtf8: codepoints length: length [
	"Encode text codepoint into utf8 text (memory must be freed!)"

	^ self ffiCall:
		  #( char * TextToUtf8 #( int * codepoints , int length ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> toggleFullscreen [
	"Toggle window state: fullscreen/windowed (only PLATFORM_DESKTOP)"

	self ffiCall: #( void ToggleFullscreen #( void ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> unloadAudioStream: stream [
	"Unload audio stream and free memory"

	self ffiCall: #( void UnloadAudioStream #( AudioStream stream ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> unloadCodepoints: codepoints [
	"Unload codepoints data from memory"

	self ffiCall: #( void UnloadCodepoints #( int * codepoints ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> unloadFileData: data [
	"Unload file data allocated by LoadFileData()"

	self ffiCall: #( void UnloadFileData #( unsigned char * data ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> unloadFileText: text [
	"Unload file text data allocated by LoadFileText()"

	self ffiCall: #( void UnloadFileText #( char * text ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> unloadFont: font [
	"Unload Font from GPU memory (VRAM)"

	self ffiCall: #( void UnloadFont #( Font font ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> unloadFontData: chars charsCount: charsCount [
	"Unload font chars info data (RAM)"

	self ffiCall:
		#( void UnloadFontData #( CharInfo * chars , int charsCount ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> unloadImage: image [
	"Unload image from CPU memory (RAM)"

	^ self ffiCall: #( void UnloadImage #( Image image ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> unloadImageColors: colors [
	"Unload color data loaded with LoadImageColors()"

	self ffiCall: #( void UnloadImageColors #( Color * colors ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> unloadImagePalette: colors [
	"Unload colors palette loaded with LoadImagePalette()"

	self ffiCall: #( void UnloadImagePalette #( Color * colors ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> unloadMaterial: material [
	"Unload material from GPU memory (VRAM)"

	self ffiCall: #( void UnloadMaterial #( Material material ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> unloadMesh: mesh [
	"Unload mesh data from CPU and GPU"

	self ffiCall: #( void UnloadMesh #( Mesh mesh ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> unloadModel: model [
	"Unload model (including meshes) from memory (RAM and/or VRAM)"

	self ffiCall: #( void UnloadModel #( Model model ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> unloadModelAnimation: anim [
	"Unload animation data"

	self ffiCall: #( void UnloadModelAnimation #( ModelAnimation
	      anim ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> unloadModelAnimations: animation count: count [
	"Unload animation array data"

	self ffiCall:
		#( void UnloadModelAnimations #( ModelAnimation * animations
		      , unsigned int count ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> unloadModelKeepMeshes: model [
	"Unload model (but not meshes) from memory (RAM and/or VRAM)"

	self ffiCall: #( void UnloadModelKeepMeshes #( Model model ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> unloadMusicStream: music [
	"Unload music stream"

	self ffiCall: #( void UnloadMusicStream #( Music music ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> unloadRenderTexture: target [
	"Unload render texture from GPU memory (VRAM)"

	self ffiCall:
		#( void UnloadRenderTexture #( RenderTexture2D target ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> unloadShader: shader [
	"Unload shader from GPU memory (VRAM)"

	self ffiCall: #( void UnloadShader #( Shader shader ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> unloadSound: sound [
	"Unload sound"

	self ffiCall: #( void UnloadSound #( Sound sound ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> unloadTexture: texture [
	"Unload texture from GPU memory (VRAM)"

	self ffiCall: #( void UnloadTexture #( Texture2D texture ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> unloadVrStereoConfig: config [
	"Unload VR stereo config"

	self ffiCall:
		#( void UnloadVrStereoConfig #( VrStereoConfig config ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> unloadWave: wave [
	"Unload wave data"

	self ffiCall: #( void UnloadWave #( Wave wave ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> unloadWaveSamples: samples [
	"Unload samples data loaded with LoadWaveSamples()"

	self ffiCall: #( void UnloadWaveSamples #( float * samples ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> updateAudioStream: stream data: data samplesCount: samplesCount [
	"Update audio stream buffers with data"

	self ffiCall:
		#( void UpdateAudioStream #( AudioStream stream , const void * data
		      , int samplesCount ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> updateCamera: camera [
	"Update camera position for selected mode"

	self ffiCall: #( void UpdateCamera #( Camera * camera ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> updateMeshBuffer: mesh index: index data: data dataSize: dataSize offset: offset [
	"Update mesh vertex data in GPU for a specific buffer index"

	self ffiCall:
		#( void UpdateMeshBuffer #( Mesh mesh , int index , void * data , int
		      dataSize , int offset ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> updateModelAnimation: model anim: anim frame: frame [
	"Update model animation pose"

	self ffiCall:
		#( void UpdateModelAnimation #( Model model , ModelAnimation
		      anim , int frame ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> updateMusicStream: music [
	"Updates buffers for music streaming"

	self ffiCall: #( void UpdateMusicStream #( Music music ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> updateSound: sound data: data samplesCount: samplesCount [
	"Update sound buffer with new data"

	self ffiCall:
		#( void UpdateSound #( Sound sound , const void * data , int samplesCount ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> updateTexture: texture pixels: pixels [
	"Update GPU texture with new data"

	self ffiCall:
		#( void UpdateTexture #( Texture2D texture , const void * pixels ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> updateTextureRec: texture rec: rec pixels: pixels [
	"Update GPU texture rectangle with new data"

	self ffiCall:
		#( void UpdateTextureRec #( Texture2D texture , Rectangle rec , const
		      void * pixels ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> uploadMesh: mesh dynamic: dynamic [
	"Upload mesh vertex data in GPU and provide VAO/VBO ids"

	self ffiCall: #( void UploadMesh #( Mesh * mesh , bool dynamic ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> waitTime: ms [
	"Wait for some milliseconds (halt program execution)"

	self ffiCall: #( void WaitTime #( float ms ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> waveCopy: wave [
	"Copy a wave to a new wave"

	^ self ffiCall: #( Wave WaveCopy #( Wave wave ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> waveCrop: wave initSample: initSample finalSample: finalSample [
	"Crop a wave to defined samples range"

	self ffiCall:
		#( void WaveCrop #( Wave * wave , int initSample , int finalSample ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> waveFormat: wave sampleRate: sampleRate sampleSize: sampleSize channels: channels [
	"Convert wave data to desired format"

	self ffiCall:
		#( void WaveFormat #( Wave * wave , int sampleRate , int sampleSize
		      , int channels ) )
]

{ #category : #'ffi-calls' }
Raylib_Functions class >> windowShouldClose [
	"Check if KEY_ESCAPE pressed or Close icon pressed"

	^ self ffiCall: #( bool WindowShouldClose #( void ) )
]
