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
	#name : #Raylib,
	#superclass : #Object,
	#category : #Raylib
}

{ #category : #'ffi-calls' }
Raylib class >> GenMeshPoly: sides radius: radius [
	"Generate polygonal mesh"

	^ self ffiCall: #( Mesh GenMeshPoly #( int sides , float radius ) )
]

{ #category : #'ffi-calls' }
Raylib class >> beginBlendMode: mode [

	self ffiCall: #( void BeginBlendMode #( int mode ) )
]

{ #category : #'ffi-calls' }
Raylib class >> beginDrawing [

	self ffiCall: #( void BeginDrawing #( void ) )
]

{ #category : #'ffi-calls' }
Raylib class >> beginMode2D: camera [

	self ffiCall: #( void BeginMode2D #( Camera2D camera ) )
]

{ #category : #'ffi-calls' }
Raylib class >> beginMode3D: camera [

	self ffiCall: #( void BeginMode3D #( Camera3D camera ) )
]

{ #category : #'ffi-calls' }
Raylib class >> beginScissorMode: x y: y width: width height: height [

	self ffiCall:
		#( void BeginScissorMode #( int x , int y , int width , int height ) )
]

{ #category : #'ffi-calls' }
Raylib class >> beginShaderMode: shader [

	self ffiCall: #( void BeginShaderMode #( Shader shader ) )
]

{ #category : #'ffi-calls' }
Raylib class >> beginTextureMode: target [

	self ffiCall: #( void BeginTextureMode #( RenderTexture2D
	      target ) )
]

{ #category : #'ffi-calls' }
Raylib class >> beginVrStereoMode: config [

	self ffiCall: #( void BeginVrStereoMode #( VrStereoConfig
	      config ) )
]

{ #category : #'ffi-calls' }
Raylib class >> changeDirectory: dir [

	^ self ffiCall: #( bool ChangeDirectory #( const char * dir ) )
]

{ #category : #'ffi-calls' }
Raylib class >> checkCollisionBoxSphere: box center: center radius: radius [
	"Check collision between box and sphere"

	^ self ffiCall:
		  #( bool CheckCollisionBoxSphere #( BoundingBox box , Vector3
		        center , float radius ) )
]

{ #category : #'ffi-calls' }
Raylib class >> checkCollisionBoxes: box1 box2: box2 [
	"Check collision between two bounding boxes"

	^ self ffiCall:
		  #( bool CheckCollisionBoxes #( BoundingBox box1 , BoundingBox
		        box2 ) )
]

{ #category : #'ffi-calls' }
Raylib class >> checkCollisionCircleRec: center radius: radius rec: rec [

	^ self ffiCall:
		  #( bool CheckCollisionCircleRec #( Vector2 center , float radius
		        , Rectangle rec ) )
]

{ #category : #'ffi-calls' }
Raylib class >> checkCollisionCircles: center1 radius1: radius1 center2: center2 radius2: radius2 [

	^ self ffiCall:
		  #( bool CheckCollisionCircles #( Vector2 center1 , float radius1
		        , Vector2 center2 , float radius2 ) )
]

{ #category : #'ffi-calls' }
Raylib class >> checkCollisionLines: startPos1 endPos1: endPos1 startPos2: startPos2 endPos2: endPos2 collisionPoint: collisionPoint [

	^ self ffiCall:
		  #( bool CheckCollisionLines #( Vector2 startPos1 , Vector2 endPos1
		        , Vector2 startPos2 , Vector2 endPos2 , Vector2 * collisionPoint ) )
]

{ #category : #'ffi-calls' }
Raylib class >> checkCollisionPointCircle: point center: center radius: radius [

	^ self ffiCall:
		#( bool CheckCollisionPointCircle #( Vector2 point , Vector2 center
		      , float radius ) )
]

{ #category : #'ffi-calls' }
Raylib class >> checkCollisionPointRec: point rec: rec [

	^ self ffiCall:
		  #( bool CheckCollisionPointRec #( Vector2 point , Rectangle
		        rec ) )
]

{ #category : #'ffi-calls' }
Raylib class >> checkCollisionPointTriangle: point p1: p1 p2: p2 p3: p3 [

	^ self ffiCall:
		  #( bool CheckCollisionPointTriangle #( Vector2 point , Vector2
		        p1 , Vector2 p2 , Vector2 p3 ) )
]

{ #category : #'ffi-calls' }
Raylib class >> checkCollisionRecs: rec1 rec2: rec2 [

	^ self ffiCall:
		  #( bool CheckCollisionRecs #( Rectangle rec1 , Rectangle rec2 ) )
]

{ #category : #'ffi-calls' }
Raylib class >> checkCollisionSpheres: center radius1: radius1 center2: center2 radius2: radius2 [
	"Check collision between two spheres"

	^ self ffiCall:
		  #( bool CheckCollisionSpheres #( Vector3 center1 , float radius1
		        , Vector3 center2 , float radius2 ) )
]

{ #category : #'ffi-calls' }
Raylib class >> clearBackground: color [

	self ffiCall: #( void ClearBackground #( Color color ) )
]

{ #category : #'ffi-calls' }
Raylib class >> clearDirectoryFiles [

	self ffiCall: #( void ClearDirectoryFiles #( void ) )
]

{ #category : #'ffi-calls' }
Raylib class >> clearDroppedFiles [

	self ffiCall: #( void ClearDroppedFiles #( void ) )
]

{ #category : #'ffi-calls' }
Raylib class >> clearWindowState: flags [

	self ffiCall: #( void ClearWindowState #( unsigned int flags ) )
]

{ #category : #'ffi-calls' }
Raylib class >> closeAudioDevice [
	"Close the audio device and context"

	self ffiCall: #( void CloseAudioDevice #( void ) )
]

{ #category : #'ffi-calls' }
Raylib class >> closeWindow [

	self ffiCall: #( void CloseWindow #( void ) )
]

{ #category : #'ffi-calls' }
Raylib class >> codepointToUtf8: codepoint byteLength: byteLength [

	^ self ffiCall:
		  #( const char * CodepointToUtf8 #( int codepoint , int * byteLength ) )
]

{ #category : #'ffi-calls' }
Raylib class >> colorAlpha: color alpha: alpha [

	^ self ffiCall: #( Color ColorAlpha #( Color color , float alpha ) )
]

{ #category : #'ffi-calls' }
Raylib class >> colorAlphaBlend: dst src: src tint: tint [

	^ self ffiCall:
		  #( Color ColorAlphaBlend #( Color dst , Color src , Color tint ) )
]

{ #category : #'ffi-calls' }
Raylib class >> colorFromHSV: hue saturation: saturation value: value [

	^ self ffiCall:
		  #( Color ColorFromHSV #( float hue , float saturation , float
		        value ) )
]

{ #category : #'ffi-calls' }
Raylib class >> colorFromNormalized: normalized [

	^ self ffiCall:
		  #( Color ColorFromNormalized #( Vector4 normalized ) )
]

{ #category : #'ffi-calls' }
Raylib class >> colorNormalize: color [

	^ self ffiCall: #( Vector4 ColorNormalize #( Color color ) )
]

{ #category : #'ffi-calls' }
Raylib class >> colorToHSV: color [

	^ self ffiCall: #( Vector3 ColorToHSV #( Color color ) )
]

{ #category : #'ffi-calls' }
Raylib class >> colorToInt: color [

	^ self ffiCall: #( int ColorToInt #( Color color ) )
]

{ #category : #'ffi-calls' }
Raylib class >> compressData: data dataLength: dataLength compDataLength: compDataLength [

	^ self ffiCall:
		  #( unsigned char * CompressData #( unsigned char * data , int dataLength
		        , int * compDataLength ) )
]

{ #category : #'ffi-calls' }
Raylib class >> decompressData: compData compDataLength: compDataLength dataLength: dataLength [

	^ self ffiCall:
		  #( unsigned char * DecompressData #( unsigned char * compData
		        , int compDataLength , int * dataLength ) )
]

{ #category : #'ffi-calls' }
Raylib class >> directoryExists: dirPath [

	^ self ffiCall: #( bool DirectoryExists #( const char * dirPath ) )
]

{ #category : #'ffi-calls' }
Raylib class >> disableCursor [

	self ffiCall: #( void DisableCursor #( void ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawBillboard: camera texture: texture position: position size: size tint: tint [
	"Draw a billboard texture"

	self ffiCall:
		#( void DrawBillboard #( Camera camera , Texture2D texture , Vector3
		      position , float size , Color tint ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawBillboardPro: camera texture: texture source: source position: position size: size origin: origin rotation: rotation tint: tint [
	"Draw a billboard texture defined by source and rotation"

	self ffiCall:
		#( void DrawBillboardPro #( Camera camera , Texture2D texture
		      , Rectangle source , Vector3 position , Vector2 size , Vector2
		      origin , float rotation , Color tint ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawBillboardRec: camera texture: texture source: source position: position size: size tint: tint [
	"Draw a billboard texture defined by source"

	self ffiCall:
		#( void DrawBillboardRec #( Camera camera , Texture2D texture
		      , Rectangle source , Vector3 position , Vector2 size , Color
		      tint ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawBoundingBox: box color: color [
	"Draw bounding box (wires)"

	self ffiCall:
		#( void DrawBoundingBox #( BoundingBox box , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawCircle3D: center radius: radius rotationAxis: rotationAxis rotationAngle: rotationAngle color: color [

	self ffiCall:
		#( void DrawCircle3D #( Vector3 center , float radius , Vector3
		      rotationAxis , float rotationAngle , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawCircle: centerX centerY: centerY radius: radius color: color [

	self ffiCall:
		#( void DrawCircle #( int centerX , int centerY , float radius
		      , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawCircleGradient: centerX centerY: centerY radius: radius color1: color1 color2: color2 [

	self ffiCall:
		#( void DrawCircleGradient #( int centerX , int centerY , float
		      radius , Color color1 , Color color2 ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawCircleLines: centerX centerY: centerY radius: radius color: color [

	self ffiCall:
		#( void DrawCircleLines #( int centerX , int centerY , float radius
		      , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawCircleSector: center radius: radius startAngle: startAngle endAngle: endAngle segments: segments color: color [

	self ffiCall:
		#( void DrawCircleSector #( Vector2 center , float radius , float
		      startAngle , float endAngle , int segments , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawCircleSectorLines: center radius: radius startAngle: startAngle endAngle: endAngle segments: segments color: color [

	self ffiCall:
		#( void DrawCircleSectorLines #( Vector2 center , float radius
		      , float startAngle , float endAngle , int segments , Color
		      color ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawCircleV: center radius: radius color: color [

	self ffiCall:
		#( void DrawCircleV #( Vector2 center , float radius , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawCube: position width: width height: height length: length color: color [

	self ffiCall:
		#( void DrawCube #( Vector3 position , float width , float height
		      , float length , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawCubeTexture: texture position: position width: width height: height length: length color: color [

	self ffiCall:
		#( void DrawCubeTexture #( Texture2D texture , Vector3 position
		      , float width , float height , float length , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawCubeV: position size: size color: color [

	self ffiCall:
		#( void DrawCubeV #( Vector3 position , Vector3 size , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawCubeWires: position width: width height: height length: length color: color [

	self ffiCall:
		#( void DrawCubeWires #( Vector3 position , float width , float
		      height , float length , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawCubeWiresV: position size: size color: color [

	self ffiCall:
		#( void DrawCubeWiresV #( Vector3 position , Vector3 size , Color
		      color ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawCylinder: position radiusTop: radiusTop radiusBottom: radiusBottom height: height slices: slices color: color [

	self ffiCall:
		#( void DrawCylinder #( Vector3 position , float radiusTop , float
		      radiusBottom , float height , int slices , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawCylinderWires: position radiusTop: radiusTop radiusBottom: radiusBottom height: height slices: slices color: color [

	self ffiCall:
		#( void DrawCylinderWires #( Vector3 position , float radiusTop
		      , float radiusBottom , float height , int slices , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawEllipse: centerX centerY: centerY radiusH: radiusH radiusV: radiusV color: color [

	self ffiCall:
		#( void DrawEllipse #( int centerX , int centerY , float radiusH
		      , float radiusV , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawEllipseLines: centerX centerY: centerY radiusH: radiusH radiusV: radiusV color: color [

	self ffiCall:
		#( void DrawEllipseLines #( int centerX , int centerY , float radiusH
		      , float radiusV , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawFPS: posX posY: posY [

	self ffiCall: #( void DrawFPS #( int posX , int posY ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawGrid: slices spacing: spacing [

	self ffiCall: #( void DrawGrid #( int slices , float spacing ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawLine3D: startPos endPos: endPos color: color [

	self ffiCall:
		#( void DrawLine3D #( Vector3 startPos , Vector3 endPos , Color
		      color ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawLine: startPosX startPosY: startPosY endPosX: endPosX endPosY: endPosY color: color [

	self ffiCall:
		#( void DrawLine #( int startPosX , int startPosY , int endPosX
		      , int endPosY , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawLineBezier: startPos endPos: endPos thick: thick color: color [

	self ffiCall:
		#( void DrawLineBezier #( Vector2 startPos , Vector2 endPos , float
		      thick , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawLineBezierQuad: startPos endPos: endPos controlPos: controlPos thick: thick color: color [

	self ffiCall:
		#( void DrawLineBezierQuad #( Vector2 startPos , Vector2 endPos
		      , Vector2 controlPos , float thick , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawLineEx: startPos endPos: endPos thick: thick color: color [

	self ffiCall:
		#( void DrawLineEx #( Vector2 startPos , Vector2 endPos , float
		      thick , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawLineStrip: points pointsCount: pointsCount color: color [

	self ffiCall:
		#( void DrawLineStrip #( Vector2 * points , int pointsCount
		      , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawLineV: startPos endPos: endPos color: color [

	self ffiCall:
		#( void DrawLineV #( Vector2 startPos , Vector2 endPos , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawMesh: mesh material: material transform: transform [
	"Draw a 3d mesh with material and transform"

	self ffiCall:
		#( void DrawMesh #( Mesh mesh , Material material , Matrix transform ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawMeshInstanced: mesh material: material transforms: transforms instances: instances [
	"Draw multiple mesh instances with material and different transforms"

	self ffiCall:
		#( void DrawMeshInstanced #( Mesh mesh , Material material , Matrix
		      * transforms , int instances ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawModel: model position: position scale: scale tint: tint [
	"Draw a model (with texture if set)"

	self ffiCall:
		#( void DrawModel #( Model model , Vector3 position , float scale
		      , Color tint ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawModelEx: model position: position rotationAxis: rotationAxis rotationAngle: rotationAngle scale: scale tint: tint [
	"Draw a model with extended parameters"

	self ffiCall:
		#( void DrawModelEx #( Model model , Vector3 position , Vector3
		      rotationAxis , float rotationAngle , Vector3 scale , Color
		      tint ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawModelWires: model position: position scale: scale tint: tint [
	"Draw a model wires (with texture if set)"

	self ffiCall:
		#( void DrawModelWires #( Model model , Vector3 position , float
		      scale , Color tint ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawModelWiresEx: model position: position rotationAxis: rotationAxis rotationAngle: rotationAngle scale: scale tint: tint [
	"Draw a model wires (with texture if set) with extended parameters"

	self ffiCall:
		#( void DrawModelWiresEx #( Model model , Vector3 position , Vector3
		      rotationAxis , float rotationAngle , Vector3 scale , Color
		      tint ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawPixel: posX posY: posY color: color [

	self ffiCall:
		#( void DrawPixel #( int posX , int posY , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawPixelV: position color: color [

	self ffiCall:
		#( void DrawPixelV #( Vector2 position , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawPlane: centerPos size: size color: color [

	self ffiCall:
		#( void DrawPlane #( Vector3 centerPos , Vector2 size , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawPoint3D: position color: color [

	self ffiCall:
		#( void DrawPoint3D #( Vector3 position , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawPoly: center sides: sides radius: radius rotation: rotation color: color [

	self ffiCall:
		#( void DrawPoly #( Vector2 center , int sides , float radius , float
		      rotation , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawPolyLines: center sides: sides radius: radius rotation: rotation color: color [

	self ffiCall:
		#( void DrawPolyLines #( Vector2 center , int sides , float radius
		      , float rotation , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawPolyLinesEx: center sides: sides radius: radius rotation: rotation lineThick: lineThick color: color [

	self ffiCall:
		#( void DrawPolyLinesEx #( Vector2 center , int sides , float radius
		      , float rotation , float lineThick , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawRay: ray color: colore [

	self ffiCall: #( void DrawRay #( Ray ray , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawRectangle: posX posY: posY width: width height: height color: color [

	self ffiCall:
		#( void DrawRectangle #( int posX , int posY , int width , int height
		      , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawRectangleGradientEx: rec col1: col1 col2: col2 col3: col3 col4: col4 [

	self ffiCall:
		#( void DrawRectangleGradientEx #( Rectangle rec , Color col1 , Color
		      col2 , Color col3 , Color col4 ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawRectangleGradientH: posX posY: posY width: width height: height color1: color1 color2: color2 [

	self ffiCall:
		#( void DrawRectangleGradientH #( int posX , int posY , int width
		      , int height , Color color1 , Color color2 ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawRectangleGradientV: posX posY: posY width: width height: height color1: color1 color2: color2 [

	self ffiCall:
		#( void DrawRectangleGradientV #( int posX , int posY , int width
		      , int height , Color color1 , Color color2 ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawRectangleLines: posX posY: posY width: width height: height color: color [

	self ffiCall:
		#( void DrawRectangleLines #( int posX , int posY , int width , int
		      height , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawRectangleLinesEx: rec lineThick: lineThick color: color [

	self ffiCall:
		#( void DrawRectangleLinesEx #( Rectangle rec , float lineThick
		      , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawRectanglePro: rec origin: origin rotation: rotation color: color [

	self ffiCall:
		#( void DrawRectanglePro #( Rectangle rec , Vector2 origin , float
		      rotation , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawRectangleRec: rec color: color [

	self ffiCall:
		#( void DrawRectangleRec #( Rectangle rec , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawRectangleRounded: rec roundness: roundness segments: segments color: color [

	self ffiCall:
		#( void DrawRectangleRounded #( Rectangle rec , float roundness
		      , int segments , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawRectangleRoundedLines: rec roundness: roundness segments: segments lineThick: lineThick color: color [

	self ffiCall:
		#( void DrawRectangleRoundedLines #( Rectangle rec , float roundness
		      , int segments , float lineThick , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawRectangleV: position size: size color: color [

	self ffiCall:
		#( void DrawRectangleV #( Vector2 position , Vector2 size , Color
		      color ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawRing: center innerRadius: innerRadius outerRadius: outerRadius startAngle: startAngle endAngle: endAngle segments: segments color: color [

	self ffiCall:
		#( void DrawRing #( Vector2 center , float innerRadius , float outerRadius
		      , float startAngle , float endAngle , int segments , Color
		      color ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawRingLines: center innerRadius: innerRadius outerRadius: outerRadius startAngle: startAngle endAngle: endAngle segments: segments color: color [

	self ffiCall:
		#( void DrawRingLines #( Vector2 center , float innerRadius
		      , float outerRadius , float startAngle , float endAngle
		      , int segments , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawSphere: centerPos radius: radius color: color [

	self ffiCall:
		#( void DrawSphere #( Vector3 centerPos , float radius , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawSphereEx: centerPos radius: radius rings: rings slices: slices color: color [

	self ffiCall:
		#( void DrawSphereEx #( Vector3 centerPos , float radius , int rings
		      , int slices , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawSphereWires: centerPos radius: radius rings: rings slices: slices color: color [

	self ffiCall:
		#( void DrawSphereWires #( Vector3 centerPos , float radius , int
		      rings , int slices , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawText: text posX: posX posY: posY fontSize: fontSize color: color [

	self ffiCall:
		#( void DrawText #( const char * text , int posX , int posY , int
		      fontSize , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawTextCodepoint: font codepoint: codepoint position: position fontSize: fontSize tint: tint [

	self ffiCall:
		#( void DrawTextCodepoint #( Font font , int codepoint , Vector2
		      position , float fontSize , Color tint ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawTextEx: font text: text position: position fontSize: fontSize spacing: spacing tint: tint [

	self ffiCall:
		#( void DrawTextEx #( Font font , const char * text , Vector2
		      position , float fontSize , float spacing , Color tint ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawTextRec: font text: text rec: rec fontSize: fontSize spacing: spacing wordWrap: wordWrap tint: tint [

	self ffiCall:
		#( void DrawTextRec #( Font font , const char * text , Rectangle
		      rec , float fontSize , float spacing , bool wordWrap , Color
		      tint ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawTextRecEx: font text: text rec: rec fontSize: fontSize spacing: spacing wordWrap: wordWrap tint: tint selectStart: selectStart selectLength: selectLength selectTint: selectTint selectBackTint: selectBackTint [

	self ffiCall:
		#( void DrawTextRecEx #( Font font , const char * text , Rectangle
		      rec , float fontSize , float spacing , bool wordWrap , Color
		      tint , int selectStart , int selectLength , Color selectTint
		      , Color selectBackTint ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawTexture: texture posX: posX posY: posY tint: tint [

	self ffiCall:
		#( void DrawTexture #( Texture2D texture , int posX , int posY , Color
		      tint ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawTextureEx: texture position: position rotation: rotation scale: scale tint: tint [

	self ffiCall:
		#( void DrawTextureEx #( Texture2D texture , Vector2 position
		      , float rotation , float scale , Color tint ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawTextureNPatch: texture nPatchInfo: nPatchInfo dest: dest origin: origin rotation: rotation tint: tint [

	self ffiCall:
		#( void DrawTextureNPatch #( Texture2D texture , NPatchInfo
		      nPatchInfo , Rectangle dest , Vector2 origin , float rotation
		      , Color tint ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawTexturePoly: texture center: center points: points texcoords: texcoords pointsCount: pointsCount tint: tint [

	self ffiCall:
		#( void DrawTexturePoly #( Texture2D texture , Vector2 center , Vector2
		      * points , Vector2 * texcoords , int pointsCount , Color tint ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawTexturePro: texture source: source dest: dest origin: origin rotation: rotation tint: tint [

	self ffiCall:
		#( void DrawTexturePro #( Texture2D texture , Rectangle source
		      , Rectangle dest , Vector2 origin , float rotation , Color
		      tint ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawTextureQuad: texture tiling: tiling offset: offset quad: quad tint: tint [

	self ffiCall:
		#( void DrawTextureQuad #( Texture2D texture , Vector2 tiling , Vector2
		      offset , Rectangle quad , Color tint ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawTextureRec: texture source: source position: position tint: tint [

	self ffiCall:
		#( void DrawTextureRec #( Texture2D texture , Rectangle source
		      , Vector2 position , Color tint ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawTextureTiled: texture source: source dest: dest origin: origin rotation: rotation scale: scale tint: tint [

	self ffiCall:
		#( void DrawTextureTiled #( Texture2D texture , Rectangle source
		      , Rectangle dest , Vector2 origin , float rotation , float
		      scale , Color tint ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawTextureV: texture position: position tint: tint [

	self ffiCall:
		#( void DrawTextureV #( Texture2D texture , Vector2 position
		      , Color tint ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawTriangle3D: v1 v2: v2 v3: v3 color: color [

	self ffiCall:
		#( void DrawTriangle3D #( Vector3 v1 , Vector3 v2 , Vector3 v3 , Color
		      color ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawTriangle: v1 v2: v2 v3: v3 color: color [

	self ffiCall:
		#( void DrawTriangle #( Vector2 v1 , Vector2 v2 , Vector2 v3 , Color
		      color ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawTriangleFan: points pointsCount: pointsCount color: color [

	self ffiCall:
		#( void DrawTriangleFan #( Vector2 * points , int pointsCount
		      , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawTriangleLines: v1 v2: v2 v3: v3 color: color [

	self ffiCall:
		#( void DrawTriangleLines #( Vector2 v1 , Vector2 v2 , Vector2
		      v3 , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawTriangleStrip3D: points pointsCount: pointsCount color: color [

	self ffiCall:
		#( void DrawTriangleStrip3D #( Vector3 * points , int pointsCount
		      , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib class >> drawTriangleStrip: points pointsCount: pointsCount color: color [

	self ffiCall:
		#( void DrawTriangleStrip #( Vector2 * points , int pointsCount
		      , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib class >> enableCursor [

	self ffiCall: #( void EnableCursor #( void ) )
]

{ #category : #'ffi-calls' }
Raylib class >> endBlendMode [

	self ffiCall: #( void EndBlendMode #( void ) )
]

{ #category : #'ffi-calls' }
Raylib class >> endDrawing [

	self ffiCall: #( void EndDrawing #( void ) )
]

{ #category : #'ffi-calls' }
Raylib class >> endMode2D [

	self ffiCall: #( void EndMode2D #( void ) )
]

{ #category : #'ffi-calls' }
Raylib class >> endMode3D [

	self ffiCall: #( void EndMode3D #( void ) )
]

{ #category : #'ffi-calls' }
Raylib class >> endScissorMode [

	self ffiCall: #( void EndScissorMode #( void ) )
]

{ #category : #'ffi-calls' }
Raylib class >> endShaderMode [

	self ffiCall: #( void EndShaderMode #( void ) )
]

{ #category : #'ffi-calls' }
Raylib class >> endTextureMode [

	self ffiCall: #( void EndTextureMode #( void ) )
]

{ #category : #'ffi-calls' }
Raylib class >> endVrStereoMode [

	self ffiCall: #( void EndVrStereoMode #( void ) )
]

{ #category : #'ffi-calls' }
Raylib class >> exportImage: image fileName: fileName [

	^ self ffiCall:
		  #( bool ExportImage #( Image image , const char * fileName ) )
]

{ #category : #'ffi-calls' }
Raylib class >> exportImageAsCode: image fileName: fileName [

	^ self ffiCall:
		  #( bool ExportImageAsCode #( Image image , const char * fileName ) )
]

{ #category : #'ffi-calls' }
Raylib class >> exportMesh: mesh fileName: fileName [
	"Export mesh data to file, returns true on success"

	^ self ffiCall:
		  #( bool ExportMesh #( Mesh mesh , const char * fileName ) )
]

{ #category : #'ffi-calls' }
Raylib class >> exportWave: wave fileName: fileName [
	"Export wave data to file, returns true on success"

	^ self ffiCall:
		  #( bool ExportWave #( Wave wave , const char * fileName ) )
]

{ #category : #'ffi-calls' }
Raylib class >> exportWaveAsCode: wave fileName: fileName [
	"Export wave sample data to code (.h), returns true on success"

	^ self ffiCall:
		  #( bool ExportWaveAsCode #( Wave wave , const char * fileName ) )
]

{ #category : #'ffi-calls' }
Raylib class >> fade: color alpha: alpha [

	^ self ffiCall: #( Color Fade #( Color color , float alpha ) )
]

{ #category : #'ffi-calls' }
Raylib class >> fileExists: fileName [

	^ self ffiCall: #( bool FileExists #( const char * fileName ) )
]

{ #category : #'ffi-calls' }
Raylib class >> genImageCellular: width height: height tileSize: tileSize [

	^ self ffiCall:
		  #( Image GenImageCellular #( int width , int height , int tileSize ) )
]

{ #category : #'ffi-calls' }
Raylib class >> genImageChecked: width height: height checksX: checksX checksY: checksY col1: col1 col2: col2 [

	^ self ffiCall:
		  #( Image GenImageChecked #( int width , int height , int checksX
		        , int checksY , Color col1 , Color col2 ) )
]

{ #category : #'ffi-calls' }
Raylib class >> genImageColor: width height: height color: color [

	^ self ffiCall:
		  #( Image GenImageColor #( int width , int height , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib class >> genImageFontAtlas: chars recs: recs charsCount: charsCount [

	^ self ffiCall:
		  #( Image GenImageFontAtlas #( const CharInfo * chars , Rectangle
		        ** recs , int charsCount , int fontSize , int padding
		        , int packMethod ) )
]

{ #category : #'ffi-calls' }
Raylib class >> genImageGradientH: width height: height left: left right: right [

	^ self ffiCall:
		  #( Image GenImageGradientH #( int width , int height , Color left
		        , Color right ) )
]

{ #category : #'ffi-calls' }
Raylib class >> genImageGradientRadial: width height: height density: density inner: inner outer: outer [

	^ self ffiCall:
		  #( Image GenImageGradientRadial #( int width , int height , float
		        density , Color inner , Color outer ) )
]

{ #category : #'ffi-calls' }
Raylib class >> genImageGradientV: width height: height top: top bottom: bottom [

	^ self ffiCall:
		  #( Image GenImageGradientV #( int width , int height , Color top
		        , Color bottom ) )
]

{ #category : #'ffi-calls' }
Raylib class >> genImagePerlinNoise: width height: height offsetX: offsetX offsetY: offsetY scale: scale [

	^ self ffiCall:
		  #( Image GenImagePerlinNoise #( int width , int height , int offsetX
		        , int offsetY , float scale ) )
]

{ #category : #'ffi-calls' }
Raylib class >> genImageWhiteNoise: width height: height factor: factor [

	^ self ffiCall:
		  #( Image GenImageWhiteNoise #( int width , int height , float
		        factor ) )
]

{ #category : #'ffi-calls' }
Raylib class >> genMeshBinormals: mesh [
	"Compute mesh binormals"

	self ffiCall: #( void GenMeshBinormals #( Mesh * mesh ) )
]

{ #category : #'ffi-calls' }
Raylib class >> genMeshCube: width height: height length: length [
	"Generate cuboid mesh"

	^ self ffiCall:
		  #( Mesh GenMeshCube #( float width , float height , float length ) )
]

{ #category : #'ffi-calls' }
Raylib class >> genMeshCubicmap: cubicmap cubeSize: cubeSize [
	"Generate cubes-based map mesh from image data"

	^ self ffiCall:
		  #( Mesh GenMeshCubicmap #( Image cubicmap , Vector3 cubeSize ) )
]

{ #category : #'ffi-calls' }
Raylib class >> genMeshCylinder: radius height: height slices: slices [
	"Generate cylinder mesh"

	^ self ffiCall:
		  #( Mesh GenMeshCylinder #( float radius , float height , int slices ) )
]

{ #category : #'ffi-calls' }
Raylib class >> genMeshHeightmap: heightmap size: size [
	"Generate heightmap mesh from image data"

	^ self ffiCall:
		  #( Mesh GenMeshHeightmap #( Image heightmap , Vector3 size ) )
]

{ #category : #'ffi-calls' }
Raylib class >> genMeshHemiSphere: radius rings: rings slices: slices [
	"Generate half-sphere mesh (no bottom cap)"

	^ self ffiCall:
		  #( Mesh GenMeshHemiSphere #( float radius , int rings , int slices ) )
]

{ #category : #'ffi-calls' }
Raylib class >> genMeshKnot: radius size: size radSeg: radSeg sides: sides [
	"Generate trefoil knot mesh"

	^ self ffiCall:
		  #( Mesh GenMeshKnot #( float radius , float size , int radSeg
		        , int sides ) )
]

{ #category : #'ffi-calls' }
Raylib class >> genMeshPlane: width length: length resX: resX resZ: resZ [
	"Generate plane mesh (with subdivisions)"

	^ self ffiCall:
		  #( Mesh GenMeshPlane #( float width , float length , int resX , int
		        resZ ) )
]

{ #category : #'ffi-calls' }
Raylib class >> genMeshSphere: radius rings: rings slices: slices [
	"Generate sphere mesh (standard sphere)"

	^ self ffiCall:
		  #( Mesh GenMeshSphere #( float radius , int rings , int slices ) )
]

{ #category : #'ffi-calls' }
Raylib class >> genMeshTangents: mesh [
	"Compute mesh tangents"

	self ffiCall: #( void GenMeshTangents #( Mesh * mesh ) )
]

{ #category : #'ffi-calls' }
Raylib class >> genMeshTorus: radius size: size radSeg: radSeg sides: sides [
	"Generate torus mesh"

	^ self ffiCall:
		  #( Mesh GenMeshTorus #( float radius , float size , int radSeg
		        , int sides ) )
]

{ #category : #'ffi-calls' }
Raylib class >> genTextureMipmaps: texture [

	self ffiCall: #( void GenTextureMipmaps #( Texture2D * texture ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getCameraMatrix2D: camera [

	^ self ffiCall: #( Matrix GetCameraMatrix2D #( Camera2D camera ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getCameraMatrix: camera [

	^ self ffiCall: #( Matrix GetCameraMatrix #( Camera camera ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getCharPressed [

	^ self ffiCall: #( int GetCharPressed #( void ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getClipboardText [

	^ self ffiCall: #( const char * GetClipboardText #( void ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getCodepoint: text bytesProcessed: bytesProcessed [

	^ self ffiCall:
		  #( int GetCodepoint #( const char * text , int * bytesProcessed ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getCodepointsCount: text [

	^ self ffiCall: #( int GetCodepointsCount #( const char * text ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getCollisionRec: rec1 rec2: rec2 [

	^ self ffiCall:
		  #( Rectangle GetCollisionRec #( Rectangle rec1 , Rectangle
		        rec2 ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getColor: hexValue [

	^ self ffiCall: #( Color GetColor #( int hexValue ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getCurrentMonitor [

	^ self ffiCall: #( int GetCurrentMonitor #( void ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getDirectoryFiles: dirPath count: count [

	^ self ffiCall:
		  #( char ** GetDirectoryFiles #( const char * dirPath , int * count ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getDirectoryPath: filePath [

	^ self ffiCall:
		  #( const char * GetDirectoryPath #( const char * filePath ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getDroppedFiles: count [

	^ self ffiCall: #( char ** GetDroppedFiles #( int * count ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getFPS [

	^ self ffiCall: #( int GetFPS #( void ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getFileExtension: fileName [

	^ self ffiCall:
		  #( const char * GetFileExtension #( const char * fileName ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getFileModTime: fileName [

	^ self ffiCall: #( long GetFileModTime #( const char * fileName ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getFileName: filePath [

	^ self ffiCall:
		  #( const char * GetFileName #( const char * filePath ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getFileNameWithoutExt: filePath [

	^ self ffiCall:
		  #( const char * GetFileNameWithoutExt #( const char * filePath ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getFontDefault [

	^ self ffiCall: #( Font GetFontDefault #( void ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getFrameTime [

	^ self ffiCall: #( float GetFrameTime #( void ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getGamepadAxisCount: gamepad [

	^ self ffiCall: #( int GetGamepadAxisCount #( int gamepad ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getGamepadAxisMovement: gamepad axis: axis [

	^ self ffiCall:
		  #( float GetGamepadAxisMovement #( int gamepad , int axis ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getGamepadButtonPressed [

	^ self ffiCall: #( int GetGamepadButtonPressed
	     #( void ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getGamepadName: gamepad [

	^ self ffiCall: #( const char * GetGamepadName #( int gamepad ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getGestureDetected [

	^ self ffiCall: #( int GetGestureDetected #( void ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getGestureDragAngle [

	^ self ffiCall: #( float GetGestureDragAngle #( void ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getGestureDragVector [

	^ self ffiCall: #( Vector2 GetGestureDragVector #( void ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getGestureHoldDuration [

	^ self ffiCall: #( float GetGestureHoldDuration
	     #( void ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getGesturePinchAngle [

	^ self ffiCall: #( float GetGesturePinchAngle #( void ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getGesturePinchVector [

	^ self ffiCall: #( Vector2 GetGesturePinchVector
	     #( void ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getGlyphIndex: font codepoint: codepoint [

	^ self ffiCall: #( int GetGlyphIndex #( Font font , int codepoint ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getImageAlphaBorder: image threshold: threshold [

	^ self ffiCall:
		  #( Rectangle GetImageAlphaBorder #( Image image , float threshold ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getKeyPressed [

	^ self ffiCall: #( int GetKeyPressed #( void ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getMeshBoundingBox: mesh [
	"Compute mesh bounding box limits"

	^ self ffiCall: #( BoundingBox GetMeshBoundingBox #( Mesh mesh ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getMonitorCount [

	^ self ffiCall: #( int GetMonitorCount #( void ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getMonitorHeight: monitor [

	^ self ffiCall: #( int GetMonitorHeight #( int monitor ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getMonitorName: monitor [

	^ self ffiCall: #( const char * GetMonitorName #( int monitor ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getMonitorPhysicalHeight: monitor [

	^ self ffiCall: #( int GetMonitorPhysicalHeight
	     #( int monitor ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getMonitorPhysicalWidth: monitor [

	^ self ffiCall: #( int GetMonitorPhysicalWidth
	     #( int monitor ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getMonitorPosition: monitor [

	^ self ffiCall: #( Vector2 GetMonitorPosition #( int monitor ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getMonitorRefreshRate: monitor [

	^ self ffiCall: #( int GetMonitorRefreshRate #( int monitor ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getMonitorWidth: monitor [

	^ self ffiCall: #( int GetMonitorWidth #( int monitor ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getMouseDelta [

	^ self ffiCall: #( Vector2 GetMouseDelta #( void ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getMousePosition [

	^ self ffiCall: #( Vector2 GetMousePosition #( void ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getMouseRay: mousePosition camera: camera [

	^ self ffiCall:
		  #( Ray GetMouseRay #( Vector2 mousePosition , Camera camera ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getMouseWheelMove [

	^ self ffiCall: #( float GetMouseWheelMove #( void ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getMouseX [

	^ self ffiCall: #( int GetMouseX #( void ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getMouseY [

	^ self ffiCall: #( int GetMouseY #( void ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getMusicTimeLength: music [
	"Get music time length (in seconds)"

	^ self ffiCall: #( float GetMusicTimeLength #( Music music ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getMusicTimePlayed: music [
	"Get current music time played (in seconds)"

	^ self ffiCall: #( float GetMusicTimePlayed #( Music music ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getPixelColor: srcPtr type: type [

	^ self ffiCall:
		  #( Color GetPixelColor #( void * srcPtr , int type ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getPixelDataSize: width height: height type: type [

	self ffiCall:
		#( int GetPixelDataSize #( int width , int height , int type ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getPrevDirectoryPath: dirPath [

	^ self ffiCall:
		  #( const char * GetPrevDirectoryPath #( const char * dirPath ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getRandomValue: min max: max [

	^ self ffiCall: #( int GetRandomValue #( int min , int max ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getRayCollisionBox: ray box: box [
	"Get collision info between ray and box"

	^ self ffiCall:
		  #( RayCollision GetRayCollisionBox #( Ray ray , BoundingBox
		        box ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getRayCollisionMesh: ray mesh: mesh transform: transform [
	"Get collision info between ray and mesh"

	^ self ffiCall:
		  #( RayCollision GetRayCollisionMesh #( Ray ray , Mesh mesh , Matrix
		        transform ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getRayCollisionModel: ray model: model [
	"Get collision info between ray and model"

	^ self ffiCall:
		  #( RayCollision GetRayCollisionModel #( Ray ray , Model model ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getRayCollisionQuad: ray p1: p1 p2: p2 p3: p3 p4: p4 [
	"Get collision info between ray and quad"

	^ self ffiCall:
		  #( RayCollision GetRayCollisionQuad #( Ray ray , Vector3 p1 , Vector3
		        p2 , Vector3 p3 , Vector3 p4 ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getRayCollisionSphere: ray center: center radius: radius [
	"Get collision info between ray and sphere"

	^ self ffiCall:
		  #( RayCollision GetRayCollisionSphere #( Ray ray , Vector3 center
		        , float radius ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getRayCollisionTriangle: ray p1: p1 p2: p2 p3: p3 [
	"Get collision info between ray and triangle"

	^ self ffiCall:
		  #( RayCollision GetRayCollisionTriangle #( Ray ray , Vector3
		        p1 , Vector3 p2 , Vector3 p3 ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getScreenHeight [

	^ self ffiCall: #( int GetScreenHeight #( void ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getScreenToWorld2D: position camera: camera [

	^ self ffiCall:
		  #( Vector2 GetScreenToWorld2D #( Vector2 position , Camera2D
		        camera ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getScreenWidth [

	^ self ffiCall: #( int GetScreenWidth #( void ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getShaderLocation: shader uniformName: uniformName [

	^ self ffiCall:
		  #( int GetShaderLocation #( Shader shader , const char * uniformName ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getShaderLocationAttrib: shader attribName: attribName [

	^ self ffiCall:
		  #( int GetShaderLocationAttrib #( Shader shader , const char * attribName ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getSoundsPlaying [
	"Get number of sounds playing in the multichannel"

	^ self ffiCall: #( int GetSoundsPlaying #( void ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getTime [

	^ self ffiCall: #( double GetTime #( void ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getTouchPointsCount [

	^ self ffiCall: #( int GetTouchPointsCount #( void ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getTouchPosition: index [

	^ self ffiCall: #( Vector2 GetTouchPosition #( int index ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getTouchX [

	^ self ffiCall: #( int GetTouchX #( void ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getTouchY [

	^ self ffiCall: #( int GetTouchY #( void ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getWindowHandle [

	^ self ffiCall: #( void * GetWindowHandle #( void ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getWindowPosition [

	^ self ffiCall: #( Vector2 GetWindowPosition #( void ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getWindowScaleDPI [

	^ self ffiCall: #( Vector2 GetWindowScaleDPI #( void ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getWorkingDirectory [

	^ self ffiCall: #( const char * GetWorkingDirectory
	     #( void ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getWorldToScreen2D: position camera: camera [

	^ self ffiCall:
		  #( Vector2 GetWorldToScreen2D #( Vector2 position , Camera2D
		        camera ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getWorldToScreen: position camera: camera [

	^ self ffiCall:
		  #( Vector2 GetWorldToScreen #( Vector3 position , Camera camera ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getWorldToScreenEx: position camera: camera width: width height: height [

	^ self ffiCall:
		  #( Vector2 GetWorldToScreenEx #( Vector3 position , Camera camera
		        , int width , int height ) )
]

{ #category : #'ffi-calls' }
Raylib class >> hideCursor [

	self ffiCall: #( void HideCursor #( void ) )
]

{ #category : #'ffi-calls' }
Raylib class >> imageAlphaClear: image color: color threshold: threshold [

	self ffiCall:
		#( void ImageAlphaClear #( Image * image , Color color , float threshold ) )
]

{ #category : #'ffi-calls' }
Raylib class >> imageAlphaCrop: image threshold: threshold [

	self ffiCall:
		#( void ImageAlphaCrop #( Image * image , float threshold ) )
]

{ #category : #'ffi-calls' }
Raylib class >> imageAlphaMask: image alphaMask: alphaMask [

	self ffiCall:
		#( void ImageAlphaMask #( Image * image , Image alphaMask ) )
]

{ #category : #'ffi-calls' }
Raylib class >> imageAlphaPremultiply: image [

	self ffiCall: #( void ImageAlphaPremultiply #( Image * image ) )
]

{ #category : #'ffi-calls' }
Raylib class >> imageClearBackground: dst color: color [

	self ffiCall:
		#( void ImageClearBackground #( Image * dst , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib class >> imageColorBrightness: image brightness: brightness [

	self ffiCall:
		#( void ImageColorBrightness #( Image * image , int brightness ) )
]

{ #category : #'ffi-calls' }
Raylib class >> imageColorContrast: image contrast: contrast [

	self ffiCall:
		#( void ImageColorContrast #( Image * image , float contrast ) )
]

{ #category : #'ffi-calls' }
Raylib class >> imageColorGrayscale: image [

	self ffiCall: #( void ImageColorGrayscale #( Image * image ) )
]

{ #category : #'ffi-calls' }
Raylib class >> imageColorInvert: image [

	self ffiCall: #( void ImageColorInvert #( Image * image ) )
]

{ #category : #'ffi-calls' }
Raylib class >> imageColorReplace: image color: color replace: replace [

	self ffiCall:
		#( void ImageColorReplace #( Image * image , Color color , Color
		      replace ) )
]

{ #category : #'ffi-calls' }
Raylib class >> imageColorTint: image color: color [

	self ffiCall:
		#( void ImageColorTint #( Image * image , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib class >> imageCopy: image [

	^ self ffiCall: #( Image ImageCopy #( Image image ) )
]

{ #category : #'ffi-calls' }
Raylib class >> imageCrop: image crop: crop [

	self ffiCall: #( void ImageCrop #( Image * image , Rectangle
	      crop ) )
]

{ #category : #'ffi-calls' }
Raylib class >> imageDither: image rBpp: rBpp gBpp: gBpp bBpp: bBpp aBpp: aBpp [

	self ffiCall:
		#( void ImageDither #( Image * image , int rBpp , int gBpp , int bBpp
		      , int aBpp ) )
]

{ #category : #'ffi-calls' }
Raylib class >> imageDraw: dst src: src srcRec: srcRec dstRec: dstRec tint: tint [

	self ffiCall:
		#( void ImageDraw #( Image * dst , Image src , Rectangle srcRec
		      , Rectangle dstRec , Color tint ) )
]

{ #category : #'ffi-calls' }
Raylib class >> imageDrawCircle: dst centerX: centerX centerY: centerY radius: radius color: color [

	self ffiCall:
		#( void ImageDrawCircle #( Image * dst , int centerX , int centerY
		      , int radius , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib class >> imageDrawCircleV: dst center: center radius: radius color: color [

	self ffiCall:
		#( void ImageDrawCircleV #( Image * dst , Vector2 center , int radius
		      , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib class >> imageDrawLine: dst startPosX: startPosX startPosY: startPosY endPosX: endPosY color: color [

	self ffiCall:
		#( void ImageDrawLine #( Image * dst , int startPosX , int startPosY
		      , int endPosX , int endPosY , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib class >> imageDrawLineV: dst start: start end: end color: color [

	self ffiCall:
		#( void ImageDrawLineV #( Image * dst , Vector2 start , Vector2
		      end , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib class >> imageDrawPixel: dst posX: posX posY: posY color: color [

	self ffiCall:
		#( void ImageDrawPixel #( Image * dst , int posX , int posY , Color
		      color ) )
]

{ #category : #'ffi-calls' }
Raylib class >> imageDrawPixelV: dst position: position color: color [

	self ffiCall:
		#( void ImageDrawPixelV #( Image * dst , Vector2 position , Color
		      color ) )
]

{ #category : #'ffi-calls' }
Raylib class >> imageDrawRectangle: dst posX: posX posY: posY width: width height: height color: color [

	self ffiCall:
		#( void ImageDrawRectangle #( Image * dst , int posX , int posY , int
		      width , int height , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib class >> imageDrawRectangleLines: dst rec: rec thick: thick color: color [

	self ffiCall:
		#( void ImageDrawRectangleLines #( Image * dst , Rectangle rec , int
		      thick , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib class >> imageDrawRectangleRec: dst rec: rec color: color [

	self ffiCall:
		#( void ImageDrawRectangleRec #( Image * dst , Rectangle rec , Color
		      color ) )
]

{ #category : #'ffi-calls' }
Raylib class >> imageDrawRectangleV: dst position: position size: size color: color [

	self ffiCall:
		#( void ImageDrawRectangleV #( Image * dst , Vector2 position
		      , Vector2 size , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib class >> imageDrawText: dst text: text posX: posX posY: posY fontSize: fontSize color: color [

	self ffiCall:
		#( void ImageDrawText #( Image * dst , const char * text , int posX
		      , int posY , int fontSize , Color color ) )
]

{ #category : #'ffi-calls' }
Raylib class >> imageDrawTextEx: dst font: font text: text position: position fontSize: fontSize spacing: spacing tint: tint [

	self ffiCall:
		#( void ImageDrawTextEx #( Image * dst , Font font , const char * text
		      , Vector2 position , float fontSize , float spacing , Color
		      tint ) )
]

{ #category : #'ffi-calls' }
Raylib class >> imageFlipHorizontal: image [

	self ffiCall: #( void ImageFlipHorizontal #( Image * image ) )
]

{ #category : #'ffi-calls' }
Raylib class >> imageFlipVertical: image [

	self ffiCall: #( void ImageFlipVertical #( Image * image ) )
]

{ #category : #'ffi-calls' }
Raylib class >> imageFormat: image newFormat: newFormat [

	self ffiCall:
		#( void ImageFormat #( Image * image , int newFormat ) )
]

{ #category : #'ffi-calls' }
Raylib class >> imageFromImage: image rec: rec [

	^ self ffiCall:
		  #( Image ImageFromImage #( Image image , Rectangle rec ) )
]

{ #category : #'ffi-calls' }
Raylib class >> imageMipmaps: image [

	self ffiCall: #( void ImageMipmaps #( Image * image ) )
]

{ #category : #'ffi-calls' }
Raylib class >> imageResize: image newWidth: newWidth newHeight: newHeight [
	"Bicubic scaling algorithm"

	self ffiCall:
		#( void ImageResize #( Image * image , int newWidth , int newHeight ) )
]

{ #category : #'ffi-calls' }
Raylib class >> imageResizeCanvas: image newWidth: newWidth newHeight: newHeight offsetX: offsetX offsetY: offsetY fill: fill [

	self ffiCall:
		#( void ImageResizeCanvas #( Image * image , int newWidth , int newHeight
		      , int offsetX , int offsetY , Color fill ) )
]

{ #category : #'ffi-calls' }
Raylib class >> imageResizeNN: image newWidth: newWidth newHeight: newHeight [
	"Nearest-Neighbor scaling algorithm"

	self ffiCall:
		#( void ImageResizeNN #( Image * image , int newWidth , int newHeight ) )
]

{ #category : #'ffi-calls' }
Raylib class >> imageRotateCCW: image [
	"Rotate image counter-clockwise 90deg"

	self ffiCall: #( void ImageRotateCCW #( Image * image ) )
]

{ #category : #'ffi-calls' }
Raylib class >> imageRotateCW: image [
	"Rotate image clockwise 90deg"

	self ffiCall: #( void ImageRotateCW #( Image * image ) )
]

{ #category : #'ffi-calls' }
Raylib class >> imageText: text fontSize: fontSize color: color [

	^ self ffiCall:
		  #( Image ImageText #( const char * text , int fontSize , Color
		        color ) )
]

{ #category : #'ffi-calls' }
Raylib class >> imageTextEx: font text: text fontSize: fontSize spacing: spacing tint: tint [

	^ self ffiCall:
		  #( Image ImageTextEx #( Font font , const char * text , float
		        fontSize , float spacing , Color tint ) )
]

{ #category : #'ffi-calls' }
Raylib class >> imageToPOT: image fill: fill [

	self ffiCall: #( void ImageToPOT #( Image * image , Color fill ) )
]

{ #category : #'ffi-calls' }
Raylib class >> initAudioDevice [
	"Initialize audio device and context"

	self ffiCall: #( void InitAudioDevice #( void ) )
]

{ #category : #'ffi-calls' }
Raylib class >> initWindow: width height: height title: title [

	self ffiCall:
		#( void InitWindow #( int width , int height , const char * title ) )
]

{ #category : #'ffi-calls' }
Raylib class >> isAudioDeviceReady [
	"Check if audio device has been initialized successfully"

	^ self ffiCall: #( bool IsAudioDeviceReady #( void ) )
]

{ #category : #'ffi-calls' }
Raylib class >> isAudioStreamPlaying: stream [
	"Check if audio stream is playing"

	^ self ffiCall:
		  #( bool IsAudioStreamPlaying #( AudioStream stream ) )
]

{ #category : #'ffi-calls' }
Raylib class >> isAudioStreamProcessed: stream [
	"Check if any audio stream buffers requires refill"

	^ self ffiCall:
		  #( bool IsAudioStreamProcessed #( AudioStream stream ) )
]

{ #category : #'ffi-calls' }
Raylib class >> isCursorHidden [

	^ self ffiCall: #( bool IsCursorHidden #( void ) )
]

{ #category : #'ffi-calls' }
Raylib class >> isCursorOnScreen [

	^ self ffiCall: #( bool IsCursorOnScreen #( void ) )
]

{ #category : #'ffi-calls' }
Raylib class >> isFileDropped [

	^ self ffiCall: #( bool IsFileDropped #( void ) )
]

{ #category : #'ffi-calls' }
Raylib class >> isFileExtension: fileName ext: ext [
	"Check file extension (including point: .png, .wav)"

	^ self ffiCall:
		  #( bool IsFileExtension #( const char * fileName , const char * ext ) )
]

{ #category : #'ffi-calls' }
Raylib class >> isGamepadAvailable: gamepad [

	^ self ffiCall: #( bool IsGamepadAvailable #( int gamepad ) )
]

{ #category : #'ffi-calls' }
Raylib class >> isGamepadButtonDown: gamepad button: button [

	^ self ffiCall:
		  #( bool IsGamepadButtonDown #( int gamepad , int button ) )
]

{ #category : #'ffi-calls' }
Raylib class >> isGamepadButtonPressed: gamepad button: button [

	^ self ffiCall:
		  #( bool IsGamepadButtonPressed #( int gamepad , int button ) )
]

{ #category : #'ffi-calls' }
Raylib class >> isGamepadButtonReleased: gamepad button: button [

	^ self ffiCall:
		  #( bool IsGamepadButtonReleased #( int gamepad , int button ) )
]

{ #category : #'ffi-calls' }
Raylib class >> isGamepadButtonUp: gamepad button: button [

	^ self ffiCall:
		  #( bool IsGamepadButtonUp #( int gamepad , int button ) )
]

{ #category : #'ffi-calls' }
Raylib class >> isGamepadName: gamepad gamepadname: gamepadname [

	^ self ffiCall:
		  #( bool IsGamepadName #( int gamepad , const char * gamepadname ) )
]

{ #category : #'ffi-calls' }
Raylib class >> isGestureDetected: gesture [

	^ self ffiCall: #( bool IsGestureDetected #( int gesture ) )
]

{ #category : #'ffi-calls' }
Raylib class >> isKeyDown: key [

	^ self ffiCall: #( bool IsKeyDown #( int key ) )
]

{ #category : #'ffi-calls' }
Raylib class >> isKeyPressed: key [

	^ self ffiCall: #( bool IsKeyPressed #( int key ) )
]

{ #category : #'ffi-calls' }
Raylib class >> isKeyReleased: key [

	^ self ffiCall: #( bool IsKeyReleased #( int key ) )
]

{ #category : #'ffi-calls' }
Raylib class >> isKeyUp: key [

	^ self ffiCall: #( bool IsKeyUp #( int key ) )
]

{ #category : #'ffi-calls' }
Raylib class >> isModelAnimationValid: model anim: anim [
	"Check model animation skeleton match"

	^ self ffiCall:
		  #( bool IsModelAnimationValid #( Model model , ModelAnimation
		        anim ) )
]

{ #category : #'ffi-calls' }
Raylib class >> isMouseButtonDown: button [

	^ self ffiCall: #( bool IsMouseButtonDown #( int button ) )
]

{ #category : #'ffi-calls' }
Raylib class >> isMouseButtonPressed: button [

	^ self ffiCall: #( bool IsMouseButtonPressed #( int button ) )
]

{ #category : #'ffi-calls' }
Raylib class >> isMouseButtonReleased: button [

	^ self ffiCall: #( bool IsMouseButtonReleased #( int button ) )
]

{ #category : #'ffi-calls' }
Raylib class >> isMouseButtonUp: button [

	^ self ffiCall: #( bool IsMouseButtonUp #( int button ) )
]

{ #category : #'ffi-calls' }
Raylib class >> isMusicStreamPlaying: music [
	"Check if music is playing"

	^ self ffiCall: #( bool IsMusicStreamPlaying #( Music music ) )
]

{ #category : #'ffi-calls' }
Raylib class >> isSoundPlaying: sound [
	"Check if a sound is currently playing"

	^ self ffiCall: #( bool IsSoundPlaying #( Sound sound ) )
]

{ #category : #'ffi-calls' }
Raylib class >> isWindowFocused [

	^ self ffiCall: #( bool IsWindowFocused #( void ) )
]

{ #category : #'ffi-calls' }
Raylib class >> isWindowFullscreen [

	^ self ffiCall: #( bool IsWindowFullscreen #( void ) )
]

{ #category : #'ffi-calls' }
Raylib class >> isWindowHidden [

	^ self ffiCall: #( bool IsWindowHidden #( void ) )
]

{ #category : #'ffi-calls' }
Raylib class >> isWindowMaximized [

	^ self ffiCall: #( bool IsWindowMaximized #( void ) )
]

{ #category : #'ffi-calls' }
Raylib class >> isWindowMinimized [

	^ self ffiCall: #( bool IsWindowMinimized #( void ) )
]

{ #category : #'ffi-calls' }
Raylib class >> isWindowReady [

	^ self ffiCall: #( bool IsWindowReady #( void ) )
]

{ #category : #'ffi-calls' }
Raylib class >> isWindowResized [

	^ self ffiCall: #( bool IsWindowResized #( void ) )
]

{ #category : #'ffi-calls' }
Raylib class >> isWindowState [

	^ self ffiCall: #( bool IsWindowState #( unsigned int flag ) )
]

{ #category : #'ffi-calls' }
Raylib class >> loadAudioStream: sampleRate sampleSize: sampleSize channels: channels [
	"Load audio stream (to stream raw audio pcm data)"

	^ self ffiCall:
		  #( AudioStream LoadAudioStream #( unsigned int sampleRate
		        , unsigned int sampleSize , unsigned int channels ) )
]

{ #category : #'ffi-calls' }
Raylib class >> loadCodepoints: text count: count [

	^ self ffiCall:
		  #( int * LoadCodepoints #( const char * text , int * count ) )
]

{ #category : #'ffi-calls' }
Raylib class >> loadFileData: fileName bytesRead: bytesRead [

	^ self ffiCall:
		  #( unsigned char * LoadFileData #( const char * fileName , unsigned
		        int * bytesRead ) )
]

{ #category : #'ffi-calls' }
Raylib class >> loadFileText: fileName [

	^ self ffiCall: #( char * LoadFileText #( const char * fileName ) )
]

{ #category : #'ffi-calls' }
Raylib class >> loadFont: fileName [

	^ self ffiCall: #( Font LoadFont #( const char * fileName ) )
]

{ #category : #'ffi-calls' }
Raylib class >> loadFontData: fileData dataSize: dataSize fontSize: fontSize fontChars: fontChars charsCount: charsCount type: type [

	^ self ffiCall:
		  #( CharInfo * LoadFontData #( const unsigned char * fileData
		        , int dataSize , int fontSize , int * fontChars , int charsCount
		        , int type ) )
]

{ #category : #'ffi-calls' }
Raylib class >> loadFontEx: fileName fontSize: fontSize fontChars: fontChars charsCount: charsCount [

	^ self ffiCall:
		  #( Font LoadFontEx #( const char * fileName , int fontSize
		        , int * fontChars , int charsCount ) )
]

{ #category : #'ffi-calls' }
Raylib class >> loadFontFromImage: image key: key firstChar: firstChar [

	^ self ffiCall:
		  #( Font LoadFontFromImage #( Image image , Color key , int firstChar ) )
]

{ #category : #'ffi-calls' }
Raylib class >> loadFontFromMemory: fileType fileData: fileData dataSize: dataSize fontSize: fontSize fontChars: fontChars charsCount: charsCount [

	^ self ffiCall:
		  #( Font LoadFontFromMemory #( const char * fileType , const unsigned
		        char * fileData , int dataSize , int fontSize , int * fontChars
		        , int charsCount ) )
]

{ #category : #'ffi-calls' }
Raylib class >> loadImage: fileName [

	^ self ffiCall: #( Image LoadImage #( const char * fileName ) )
]

{ #category : #'ffi-calls' }
Raylib class >> loadImageAnim: fileName frames: frames [

	^ self ffiCall:
		  #( Image LoadImageAnim #( const char * fileName , int * frames ) )
]

{ #category : #'ffi-calls' }
Raylib class >> loadImageColors: image [

	^ self ffiCall: #( Color * LoadImageColors #( Image image ) )
]

{ #category : #'ffi-calls' }
Raylib class >> loadImageFromMemory: fileType fileData: fileData dataSize: dataSize [

	^ self ffiCall:
		  #( Image LoadImageFromMemory #( const char * fileType , const
		        unsigned char * fileData , int dataSize ) )
]

{ #category : #'ffi-calls' }
Raylib class >> loadImageFromScreen [

	^ self ffiCall: #( Image LoadImageFromScreen #( void ) )
]

{ #category : #'ffi-calls' }
Raylib class >> loadImageFromTexture: texture [

	^ self ffiCall:
		  #( Image LoadImageFromTexture #( Texture2D texture ) )
]

{ #category : #'ffi-calls' }
Raylib class >> loadImagePalette: image maxPaletteSize: maxPaletteSize colorsCount: colorsCount [

	^ self ffiCall:
		  #( Color * LoadImagePalette #( Image image , int maxPaletteSize
		        , int * colorsCount ) )
]

{ #category : #'ffi-calls' }
Raylib class >> loadImageRaw: fileName width: width height: height type: type headerSize: headerSize [

	^ self ffiCall:
		  #( Image LoadImageRaw #( const char * fileName , int width , int
		        height , int type , int headerSize ) )
]

{ #category : #'ffi-calls' }
Raylib class >> loadMaterials: fileName materialCount: materialCount [
	"Load materials from model file"

	^ self ffiCall:
		  #( Material * LoadMaterials #( const char * fileName , int * materialCount ) )
]

{ #category : #'ffi-calls' }
Raylib class >> loadModel: fileName [

	^ self ffiCall: #( Model LoadModel #( const char * fileName ) )
]

{ #category : #'ffi-calls' }
Raylib class >> loadModelAnimations: fileName animsCount: animsCount [
	"Load model animations from file"

	^ self ffiCall:
		  #( ModelAnimation * LoadModelAnimations #( const char * fileName
		        , int * animsCount ) )
]

{ #category : #'ffi-calls' }
Raylib class >> loadModelFromMesh: mesh [

	^ self ffiCall: #( Model LoadModelFromMesh #( Mesh mesh ) )
]

{ #category : #'ffi-calls' }
Raylib class >> loadMusicStream: fileName [
	"Load music stream from file"

	^ self ffiCall: #( Music LoadMusicStream #( const char * fileName ) )
]

{ #category : #'ffi-calls' }
Raylib class >> loadMusicStreamFromMemory: fileType data: data dataSize: dataSize [
	"Load music stream from data"

	^ self ffiCall:
		  #( Music LoadMusicStreamFromMemory #( const char * fileType
		        , unsigned char * data , int dataSize ) )
]

{ #category : #'ffi-calls' }
Raylib class >> loadRenderTexture: width height: height [

	^ self ffiCall:
		  #( RenderTexture2D LoadRenderTexture #( int width , int height ) )
]

{ #category : #'ffi-calls' }
Raylib class >> loadShader: vsFileName fsFileName: fsFileName [

	^ self ffiCall:
		  #( Shader LoadShader #( const char * vsFileName , const char * fsFileName ) )
]

{ #category : #'ffi-calls' }
Raylib class >> loadShaderFromMemory: vsCode fsCode: fsCode [

	^ self ffiCall:
		  #( Shader LoadShaderFromMemory #( const char * vsCode , const
		        char * fsCode ) )
]

{ #category : #'ffi-calls' }
Raylib class >> loadSound: fileName [
	"Load sound from file"

	^ self ffiCall: #( Sound LoadSound #( const char * fileName ) )
]

{ #category : #'ffi-calls' }
Raylib class >> loadSoundFromWave: wave [
	"Load sound from wave data"

	^ self ffiCall: #( Sound LoadSoundFromWave #( Wave wave ) )
]

{ #category : #'ffi-calls' }
Raylib class >> loadStorageValue: position [

	^ self ffiCall: #( int LoadStorageValue #( unsigned int position ) )
]

{ #category : #'ffi-calls' }
Raylib class >> loadTexture: fileName [

	^ self ffiCall: #( Texture2D LoadTexture #( const char * fileName ) )
]

{ #category : #'ffi-calls' }
Raylib class >> loadTextureCubemap: image cubeLayout: cubeLayout [
	"Load cubemap from image, multiple image cubemap layouts supported"

	^ self ffiCall:
		  #( TextureCubemap LoadTextureCubemap #( Image image , int cubeLayout ) )
]

{ #category : #'ffi-calls' }
Raylib class >> loadTextureCubemap: image layout: cubeLayout [
	"Load cubemap from image, multiple image cubemap layouts supported"

	^ self ffiCall:
		  #( TextureCubemap LoadTextureCubemap #( Image image , int layout ) )
]

{ #category : #'ffi-calls' }
Raylib class >> loadTextureFromImage: image [

	^ self ffiCall: #( Texture2D LoadTextureFromImage
	     #( Image image ) )
]

{ #category : #'ffi-calls' }
Raylib class >> loadVrStereoConfig: device [

	^ self ffiCall:
		  #( VrStereoConfig LoadVrStereoConfig #( VrDeviceInfo device ) )
]

{ #category : #'ffi-calls' }
Raylib class >> loadWave: fileName [
	"Load wave data from file"

	^ self ffiCall: #( Wave LoadWave #( const char * fileName ) )
]

{ #category : #'ffi-calls' }
Raylib class >> loadWaveFromMemory: fileType fileData: fileData dataSize: dataSize [
	"Load wave from memory buffer, fileType refers to extension: i.e. '.wav'"

	^ self ffiCall:
		  #( Wave LoadWaveFromMemory #( const char * fileType , const unsigned
		        char * fileData , int dataSize ) )
]

{ #category : #'ffi-calls' }
Raylib class >> loadWaveSamples: wave [
	"Load samples data from wave as a floats array"

	^ self ffiCall: #( float * LoadWaveSamples #( Wave wave ) )
]

{ #category : #'ffi-calls' }
Raylib class >> maximizeWindow [

	self ffiCall: #( void MaximizeWindow #( void ) )
]

{ #category : #'ffi-calls' }
Raylib class >> measureText: text fontSize: fontSize [

	^ self ffiCall:
		  #( int MeasureText #( const char * text , int fontSize ) )
]

{ #category : #'ffi-calls' }
Raylib class >> measureTextEx: font text: text fontSize: fontSize spacing: spacing [

	^ self ffiCall:
		  #( Vector2 MeasureTextEx #( Font font , const char * text , float
		        fontSize , float spacing ) )
]

{ #category : #'ffi-calls' }
Raylib class >> memAlloc: size [

	^ self ffiCall: #( void * MemAlloc #( int size ) )
]

{ #category : #'ffi-calls' }
Raylib class >> memFree: ptr [

	self ffiCall: #( void MemFree #( void * ptr ) )
]

{ #category : #'ffi-calls' }
Raylib class >> memRealloc: ptr size: size [

	^ self ffiCall: #( void * MemRealloc #( void * ptr , int size ) )
]

{ #category : #'ffi-calls' }
Raylib class >> minimizeWindow [

	self ffiCall: #( void MinimizeWindow #( void ) )
]

{ #category : #'ffi-calls' }
Raylib class >> openURL: url [

	self ffiCall: #( void OpenURL #( const char * url ) )
]

{ #category : #'ffi-calls' }
Raylib class >> pauseAudioStream: stream [
	"Pause audio stream"

	self ffiCall: #( void PauseAudioStream #( AudioStream stream ) )
]

{ #category : #'ffi-calls' }
Raylib class >> pauseMusicStream: music [
	"Pause music playing"

	self ffiCall: #( void PauseMusicStream #( Music music ) )
]

{ #category : #'ffi-calls' }
Raylib class >> pauseSound: sound [
	"Pause a sound"

	self ffiCall: #( void PauseSound #( Sound sound ) )
]

{ #category : #'ffi-calls' }
Raylib class >> playAudioStream: stream [
	"Play audio stream"

	self ffiCall: #( void PlayAudioStream #( AudioStream stream ) )
]

{ #category : #'ffi-calls' }
Raylib class >> playMusicStream: music [
	"Start music playing"

	self ffiCall: #( void PlayMusicStream #( Music music ) )
]

{ #category : #'ffi-calls' }
Raylib class >> playSound: sound [
	"Play a sound"

	self ffiCall: #( void PlaySound #( Sound sound ) )
]

{ #category : #'ffi-calls' }
Raylib class >> playSoundMulti: sound [
	"Play a sound (using multichannel buffer pool)"

	self ffiCall: #( void PlaySoundMulti #( Sound sound ) )
]

{ #category : #'ffi-calls' }
Raylib class >> pollInputEvents [

	self ffiCall: #( void PollInputEvents #( void ) )
]

{ #category : #'ffi-calls' }
Raylib class >> restoreWindow [

	self ffiCall: #( void RestoreWindow #( void ) )
]

{ #category : #'ffi-calls' }
Raylib class >> resumeAudioStream: stream [
	"Resume audio stream"

	self ffiCall: #( void ResumeAudioStream #( AudioStream stream ) )
]

{ #category : #'ffi-calls' }
Raylib class >> resumeMusicStream: music [
	"Resume playing paused music"

	self ffiCall: #( void ResumeMusicStream #( Music music ) )
]

{ #category : #'ffi-calls' }
Raylib class >> resumeSound: sound [
	"Resume a paused sound"

	self ffiCall: #( void ResumeSound #( Sound sound ) )
]

{ #category : #'ffi-calls' }
Raylib class >> saveFileData: fileName data: data bytesToWrite: bytesToWrite [

	^ self ffiCall:
		  #( bool SaveFileData #( const char * fileName , void * data , unsigned
		        int bytesToWrite ) )
]

{ #category : #'ffi-calls' }
Raylib class >> saveFileText: fileName text: text [

	^ self ffiCall:
		  #( bool SaveFileText #( const char * fileName , char * text ) )
]

{ #category : #'ffi-calls' }
Raylib class >> saveStorageValue: position value: value [

	^ self ffiCall:
		  #( bool SaveStorageValue #( unsigned int position , int value ) )
]

{ #category : #'ffi-calls' }
Raylib class >> setAudioStreamBufferSizeDefault: size [
	"Default size for new audio streams"

	self ffiCall: #( void SetAudioStreamBufferSizeDefault
		   #( int size ) )
]

{ #category : #'ffi-calls' }
Raylib class >> setAudioStreamPitch: stream pitch: pitch [
	"Set pitch for audio stream (1.0 is base level)"

	self ffiCall:
		#( void SetAudioStreamPitch #( AudioStream stream , float pitch ) )
]

{ #category : #'ffi-calls' }
Raylib class >> setAudioStreamVolume: stream volume: volume [
	"Set volume for audio stream (1.0 is max level)"

	self ffiCall:
		#( void SetAudioStreamVolume #( AudioStream stream , float volume ) )
]

{ #category : #'ffi-calls' }
Raylib class >> setCameraAltControl: keyAlt [

	self ffiCall: #( void SetCameraAltControl #( int keyAlt ) )
]

{ #category : #'ffi-calls' }
Raylib class >> setCameraMode: camera mode: mode [

	self ffiCall: #( void SetCameraMode #( Camera camera , int mode ) )
]

{ #category : #'ffi-calls' }
Raylib class >> setCameraMoveControls: keyFront keyBack: keyBack keyRight: keyRight keyLeft: keyLeft keyUp: keyUp keyDown: keyDown [

	self ffiCall:
		#( void SetCameraMoveControls #( int keyFront , int keyBack , int
		      keyRight , int keyLeft , int keyUp , int keyDown ) )
]

{ #category : #'ffi-calls' }
Raylib class >> setCameraPanControl: keyPan [

	self ffiCall: #( void SetCameraPanControl #( int keyPan ) )
]

{ #category : #'ffi-calls' }
Raylib class >> setCameraSmoothZoomControl: keySmoothZoom [

	self ffiCall:
		#( void SetCameraSmoothZoomControl #( int keySmoothZoom ) )
]

{ #category : #'ffi-calls' }
Raylib class >> setClipboardText: text [

	self ffiCall: #( void SetClipboardText #( const char * text ) )
]

{ #category : #'ffi-calls' }
Raylib class >> setConfigFlags: flags [

	self ffiCall: #( void SetConfigFlags #( unsigned int flags ) )
]

{ #category : #'ffi-calls' }
Raylib class >> setExitKey: key [

	self ffiCall: #( void SetExitKey #( int key ) )
]

{ #category : #'ffi-calls' }
Raylib class >> setGamepadMappings: mappings [

	^ self ffiCall:
		  #( int SetGamepadMappings #( const char * mappings ) )
]

{ #category : #'ffi-calls' }
Raylib class >> setGesturesEnabled: flags [

	self ffiCall: #( void SetGesturesEnabled #( unsigned int flags ) )
]

{ #category : #'ffi-calls' }
Raylib class >> setLoadFileDataCallback: callback [

	self ffiCall:
		#( void SetLoadFileDataCallback #( LoadFileDataCallback
		      callback ) )
]

{ #category : #'ffi-calls' }
Raylib class >> setLoadFileTextCallback: callback [

	self ffiCall:
		#( void SetLoadFileTextCallback #( LoadFileTextCallback
		      callback ) )
]

{ #category : #'ffi-calls' }
Raylib class >> setMasterVolume: volume [
	"Set master volume (listener)"

	self ffiCall: #( void SetMasterVolume #( float volume ) )
]

{ #category : #'ffi-calls' }
Raylib class >> setMaterialTexture: material mapType: mapType texture: texture [
	"Set texture for a material map type (MATERIAL_MAP_DIFFUSE, MATERIAL_MAP_SPECULAR...)"

	self ffiCall:
		#( void SetMaterialTexture #( Material * material , int mapType
		      , Texture2D texture ) )
]

{ #category : #'ffi-calls' }
Raylib class >> setModelMeshMaterial: model meshId: meshId materialId: materialId [
	"Set material for a mesh"

	self ffiCall:
		#( void SetModelMeshMaterial #( Model * model , int meshId , int materialId ) )
]

{ #category : #'ffi-calls' }
Raylib class >> setMouseCursor: cursor [

	self ffiCall: #( void SetMouseCursor #( int cursor ) )
]

{ #category : #'ffi-calls' }
Raylib class >> setMouseOffset: offsetX offsetY: offsetY [

	self ffiCall: #( void SetMouseOffset #( int offsetX , int offsetY ) )
]

{ #category : #'ffi-calls' }
Raylib class >> setMousePosition: x y: y [

	self ffiCall: #( void SetMousePosition #( int x , int y ) )
]

{ #category : #'ffi-calls' }
Raylib class >> setMouseScale: scaleX scaleY: scaleY [

	self ffiCall:
		#( void SetMouseScale #( float scaleX , float scaleY ) )
]

{ #category : #'ffi-calls' }
Raylib class >> setMusicPitch: music pitch: pitch [
	"Set pitch for a music (1.0 is base level)"

	self ffiCall: #( void SetMusicPitch #( Music music , float pitch ) )
]

{ #category : #'ffi-calls' }
Raylib class >> setMusicVolume: music volume: volume [
	"Set volume for music (1.0 is max level)"

	self ffiCall:
		#( void SetMusicVolume #( Music music , float volume ) )
]

{ #category : #'ffi-calls' }
Raylib class >> setPixelColor: dstPtr color: color type: type [

	self ffiCall:
		#( void SetPixelColor #( void * dstPtr , Color color , int type ) )
]

{ #category : #'ffi-calls' }
Raylib class >> setSaveFileDataCallback: callback [

	self ffiCall:
		#( void SetSaveFileDataCallback #( SaveFileDataCallback
		      callback ) )
]

{ #category : #'ffi-calls' }
Raylib class >> setSaveFileTextCallback: callback [

	self ffiCall:
		#( void SetSaveFileTextCallback #( SaveFileTextCallback
		      callback ) )
]

{ #category : #'ffi-calls' }
Raylib class >> setShaderValue: shader locIndex: locIndex value: value uniformType: uniformType [

	self ffiCall:
		#( void SetShaderValue #( Shader shader , int locIndex , const void
		      * value , int uniformType ) )
]

{ #category : #'ffi-calls' }
Raylib class >> setShaderValueMatrix: shader locIndex: locIndex mat: mat [

	self ffiCall:
		#( void SetShaderValueMatrix #( Shader shader , int locIndex
		      , Matrix mat ) )
]

{ #category : #'ffi-calls' }
Raylib class >> setShaderValueTexture: shader locIndex: locIndex texture: texture [

	self ffiCall:
		#( void SetShaderValueTexture #( Shader shader , int locIndex
		      , Texture2D texture ) )
]

{ #category : #'ffi-calls' }
Raylib class >> setShaderValueV: shader locIndex: locIndex value: value uniformType: uniformType count: count [

	self ffiCall:
		#( void SetShaderValueV #( Shader shader , int locIndex , const
		      void * value , int uniformType , int count ) )
]

{ #category : #'ffi-calls' }
Raylib class >> setShapesTexture: texture source: source [

	self ffiCall:
		#( void SetShapesTexture #( Texture2D texture , Rectangle source ) )
]

{ #category : #'ffi-calls' }
Raylib class >> setSoundPitch: sound pitch: pitch [
	"Set pitch for a sound (1.0 is base level)"

	self ffiCall: #( void SetSoundPitch #( Sound sound , float pitch ) )
]

{ #category : #'ffi-calls' }
Raylib class >> setSoundVolume: sound volume: volume [
	"Set volume for a sound (1.0 is max level)"

	self ffiCall:
		#( void SetSoundVolume #( Sound sound , float volume ) )
]

{ #category : #'ffi-calls' }
Raylib class >> setTargetFPS: fps [

	self ffiCall: #( void SetTargetFPS #( int fps ) )
]

{ #category : #'ffi-calls' }
Raylib class >> setTextureFilter: texture filter: filter [

	self ffiCall:
		#( void SetTextureFilter #( Texture2D texture , int filter ) )
]

{ #category : #'ffi-calls' }
Raylib class >> setTextureWrap: texture wrap: wrap [

	self ffiCall:
		#( void SetTextureWrap #( Texture2D texture , int wrap ) )
]

{ #category : #'ffi-calls' }
Raylib class >> setTraceLogCallback: callback [

	self ffiCall:
		#( void SetTraceLogCallback #( TraceLogCallback callback ) )
]

{ #category : #'ffi-calls' }
Raylib class >> setTraceLogLevel: logLevel [

	self ffiCall: #( void SetTraceLogLevel #( int logLevel ) )
]

{ #category : #'ffi-calls' }
Raylib class >> setWindowIcon: image [

	self ffiCall: #( void SetWindowIcon #( Image image ) )
]

{ #category : #'ffi-calls' }
Raylib class >> setWindowMinSize: widht height: height [

	self ffiCall: #( void SetWindowMinSize #( int width , int height ) )
]

{ #category : #'ffi-calls' }
Raylib class >> setWindowMonitor: monitor [

	self ffiCall: #( void SetWindowMonitor #( int monitor ) )
]

{ #category : #'ffi-calls' }
Raylib class >> setWindowPosition: x y: y [

	self ffiCall: #( void SetWindowPosition #( int x , int y ) )
]

{ #category : #'ffi-calls' }
Raylib class >> setWindowSize: widht height: height [

	self ffiCall: #( void SetWindowSize #( int width , int height ) )
]

{ #category : #'ffi-calls' }
Raylib class >> setWindowState: flags [

	self ffiCall: #( void SetWindowState #( unsigned int flags ) )
]

{ #category : #'ffi-calls' }
Raylib class >> setWindowTitle [

	self ffiCall: #( void SetWindowTitle #( const char * title ) )
]

{ #category : #'ffi-calls' }
Raylib class >> showCursor [

	self ffiCall: #( void ShowCursor #( void ) )
]

{ #category : #'ffi-calls' }
Raylib class >> stopAudioStream: stream [
	"Stop audio stream"

	self ffiCall: #( void StopAudioStream #( AudioStream stream ) )
]

{ #category : #'ffi-calls' }
Raylib class >> stopMusicStream: music [
	"Stop music playing"

	self ffiCall: #( void StopMusicStream #( Music music ) )
]

{ #category : #'ffi-calls' }
Raylib class >> stopSound: sound [
	"Stop playing a sound"

	self ffiCall: #( void StopSound #( Sound sound ) )
]

{ #category : #'ffi-calls' }
Raylib class >> stopSoundMulti [
	"Stop any sound playing (using multichannel buffer pool)"

	self ffiCall: #( void StopSoundMulti #( void ) )
]

{ #category : #'ffi-calls' }
Raylib class >> swapScreenBuffer [

	self ffiCall: #( void SwapScreenBuffer #( void ) )
]

{ #category : #'ffi-calls' }
Raylib class >> takeScreenshot: fileName [

	self ffiCall: #( void TakeScreenshot #( const char * fileName ) )
]

{ #category : #'ffi-calls' }
Raylib class >> textAppend: text append: append position: position [

	self ffiCall:
		#( void TextAppend #( char * text , const char * append , int * position ) )
]

{ #category : #'ffi-calls' }
Raylib class >> textCopy: dst src: src [
	"Copy one string to another, returns bytes copied"

	^ self ffiCall: #( int TextCopy #( char * dst , const char * src ) )
]

{ #category : #'ffi-calls' }
Raylib class >> textFindIndex: text find: find [

	^ self ffiCall:
		  #( int TextFindIndex #( const char * text , const char * find ) )
]

{ #category : #'ffi-calls' }
Raylib class >> textInsert: text insert: insert position: position [

	^ self ffiCall:
		  #( char * TextInsert #( const char * text , const char * insert
		        , int position ) )
]

{ #category : #'ffi-calls' }
Raylib class >> textIsEqual: text1 text2: text2 [

	^ self ffiCall:
		  #( bool TextIsEqual #( const char * text1 , const char * text2 ) )
]

{ #category : #'ffi-calls' }
Raylib class >> textJoin: textList count: count delimiter: delimiter [

	^ self ffiCall:
		  #( const char * TextJoin #( const char ** textList , int count
		        , const char * delimiter ) )
]

{ #category : #'ffi-calls' }
Raylib class >> textLength: text [

	^ self ffiCall: #( unsigned int TextLength #( const char * text ) )
]

{ #category : #'ffi-calls' }
Raylib class >> textReplace: text replace: replace by: by [

	^ self ffiCall:
		  #( char * TextReplace #( char * text , const char * replace
		        , const char * by ) )
]

{ #category : #'ffi-calls' }
Raylib class >> textSplit: text delimiter: delimiter count: count [

	^ self ffiCall:
		  #( const char ** TextSplit #( const char * text , char delimiter
		        , int * count ) )
]

{ #category : #'ffi-calls' }
Raylib class >> textSubtext: text position: position length: length [

	^ self ffiCall:
		  #( const char * TextSubtext #( const char * text , int position
		        , int length ) )
]

{ #category : #'ffi-calls' }
Raylib class >> textToInteger: text [

	^ self ffiCall: #( int TextToInteger #( const char * text ) )
]

{ #category : #'ffi-calls' }
Raylib class >> textToLower: text [

	^ self ffiCall: #( const char * TextToLower #( const char * text ) )
]

{ #category : #'ffi-calls' }
Raylib class >> textToPascal: text [
	"Get Pascal case notation version of provided string"

	^ self ffiCall: #( const char * TextToPascal #( const char * text ) )
]

{ #category : #'ffi-calls' }
Raylib class >> textToUpper: text [

	^ self ffiCall: #( const char * TextToUpper #( const char * text ) )
]

{ #category : #'ffi-calls' }
Raylib class >> textToUtf8: codepoints length: length [

	^ self ffiCall:
		  #( char * TextToUtf8 #( int * codepoints , int length ) )
]

{ #category : #'ffi-calls' }
Raylib class >> toggleFullscreen [

	self ffiCall: #( void ToggleFullscreen #( void ) )
]

{ #category : #'ffi-calls' }
Raylib class >> unloadAudioStream: stream [
	"Unload audio stream and free memory"

	self ffiCall: #( void UnloadAudioStream #( AudioStream stream ) )
]

{ #category : #'ffi-calls' }
Raylib class >> unloadCodepoints: codepoints [

	self ffiCall: #( void UnloadCodepoints #( int * codepoints ) )
]

{ #category : #'ffi-calls' }
Raylib class >> unloadFileData: data [

	self ffiCall: #( void UnloadFileData #( unsigned char * data ) )
]

{ #category : #'ffi-calls' }
Raylib class >> unloadFileText: text [

	self ffiCall: #( void UnloadFileText #( char * text ) )
]

{ #category : #'ffi-calls' }
Raylib class >> unloadFont: font [

	self ffiCall: #( void UnloadFont #( Font font ) )
]

{ #category : #'ffi-calls' }
Raylib class >> unloadFontData: chars charsCount: charsCount [

	self ffiCall:
		#( void UnloadFontData #( CharInfo * chars , int charsCount ) )
]

{ #category : #'ffi-calls' }
Raylib class >> unloadImage: image [

	^ self ffiCall: #( void UnloadImage #( Image image ) )
]

{ #category : #'ffi-calls' }
Raylib class >> unloadImageColors: colors [

	self ffiCall: #( void UnloadImageColors #( Color * colors ) )
]

{ #category : #'ffi-calls' }
Raylib class >> unloadImagePalette: colors [

	self ffiCall: #( void UnloadImagePalette #( Color * colors ) )
]

{ #category : #'ffi-calls' }
Raylib class >> unloadMaterial: material [
	"Unload material from GPU memory (VRAM)"

	self ffiCall: #( void UnloadMaterial #( Material material ) )
]

{ #category : #'ffi-calls' }
Raylib class >> unloadMesh: mesh [
	"Unload mesh data from CPU and GPU"

	self ffiCall: #( void UnloadMesh #( Mesh mesh ) )
]

{ #category : #'ffi-calls' }
Raylib class >> unloadModel: model [

	self ffiCall: #( void UnloadModel #( Model model ) )
]

{ #category : #'ffi-calls' }
Raylib class >> unloadModelAnimation: anim [
	"Unload animation data"

	self ffiCall: #( void UnloadModelAnimation #( ModelAnimation
	      anim ) )
]

{ #category : #'ffi-calls' }
Raylib class >> unloadModelAnimations: animation count: count [
	"Unload animation array data"

	self ffiCall:
		#( void UnloadModelAnimations #( ModelAnimation * animations
		      , unsigned int count ) )
]

{ #category : #'ffi-calls' }
Raylib class >> unloadModelKeepMeshes: model [

	self ffiCall: #( void UnloadModelKeepMeshes #( Model model ) )
]

{ #category : #'ffi-calls' }
Raylib class >> unloadMusicStream: music [
	"Unload music stream"

	self ffiCall: #( void UnloadMusicStream #( Music music ) )
]

{ #category : #'ffi-calls' }
Raylib class >> unloadRenderTexture: target [

	self ffiCall:
		#( void UnloadRenderTexture #( RenderTexture2D target ) )
]

{ #category : #'ffi-calls' }
Raylib class >> unloadShader: shader [

	self ffiCall: #( void UnloadShader #( Shader shader ) )
]

{ #category : #'ffi-calls' }
Raylib class >> unloadSound: sound [
	"Unload sound"

	self ffiCall: #( void UnloadSound #( Sound sound ) )
]

{ #category : #'ffi-calls' }
Raylib class >> unloadTexture: texture [

	self ffiCall: #( void UnloadTexture #( Texture2D texture ) )
]

{ #category : #'ffi-calls' }
Raylib class >> unloadVrStereoConfig: config [

	self ffiCall:
		#( void UnloadVrStereoConfig #( VrStereoConfig config ) )
]

{ #category : #'ffi-calls' }
Raylib class >> unloadWave: wave [
	"Unload wave data"

	self ffiCall: #( void UnloadWave #( Wave wave ) )
]

{ #category : #'ffi-calls' }
Raylib class >> unloadWaveSamples: samples [
	"Unload samples data loaded with LoadWaveSamples()"

	self ffiCall: #( void UnloadWaveSamples #( float * samples ) )
]

{ #category : #'ffi-calls' }
Raylib class >> updateAudioStream: stream data: data samplesCount: samplesCount [
	"Update audio stream buffers with data"

	self ffiCall:
		#( void UpdateAudioStream #( AudioStream stream , const void * data
		      , int samplesCount ) )
]

{ #category : #'ffi-calls' }
Raylib class >> updateCamera: camera [

	self ffiCall: #( void UpdateCamera #( Camera * camera ) )
]

{ #category : #'ffi-calls' }
Raylib class >> updateMeshBuffer: mesh index: index data: data dataSize: dataSize offset: offset [
	"Update mesh vertex data in GPU for a specific buffer index"

	self ffiCall:
		#( void UpdateMeshBuffer #( Mesh mesh , int index , void * data , int
		      dataSize , int offset ) )
]

{ #category : #'ffi-calls' }
Raylib class >> updateModelAnimation: model anim: anim frame: frame [
	"Update model animation pose"

	self ffiCall:
		#( void UpdateModelAnimation #( Model model , ModelAnimation
		      anim , int frame ) )
]

{ #category : #'ffi-calls' }
Raylib class >> updateMusicStream: music [
	"Updates buffers for music streaming"

	self ffiCall: #( void UpdateMusicStream #( Music music ) )
]

{ #category : #'ffi-calls' }
Raylib class >> updateSound: sound data: data samplesCount: samplesCount [
	"Update sound buffer with new data"

	self ffiCall:
		#( void UpdateSound #( Sound sound , const void * data , int samplesCount ) )
]

{ #category : #'ffi-calls' }
Raylib class >> updateTexture: texture pixels: pixels [

	self ffiCall:
		#( void UpdateTexture #( Texture2D texture , const void * pixels ) )
]

{ #category : #'ffi-calls' }
Raylib class >> updateTextureRec: texture rec: rec pixels: pixels [

	self ffiCall:
		#( void UpdateTextureRec #( Texture2D texture , Rectangle rec , const
		      void * pixels ) )
]

{ #category : #'ffi-calls' }
Raylib class >> uploadMesh: mesh dynamic: dynamic [
	"Upload mesh vertex data in GPU and provide VAO/VBO ids"

	self ffiCall: #( void UploadMesh #( Mesh * mesh , bool dynamic ) )
]

{ #category : #'ffi-calls' }
Raylib class >> waitTime: ms [

	self ffiCall: #( void WaitTime #( float ms ) )
]

{ #category : #'ffi-calls' }
Raylib class >> waveCopy: wave [
	"Copy a wave to a new wave"

	^ self ffiCall: #( Wave WaveCopy #( Wave wave ) )
]

{ #category : #'ffi-calls' }
Raylib class >> waveCrop: wave initSample: initSample finalSample: finalSample [
	"Crop a wave to defined samples range"

	self ffiCall:
		#( void WaveCrop #( Wave * wave , int initSample , int finalSample ) )
]

{ #category : #'ffi-calls' }
Raylib class >> waveFormat: wave sampleRate: sampleRate sampleSize: sampleSize channels: channels [
	"Convert wave data to desired format"

	self ffiCall:
		#( void WaveFormat #( Wave * wave , int sampleRate , int sampleSize
		      , int channels ) )
]

{ #category : #'ffi-calls' }
Raylib class >> windowShouldClose [

	^ self ffiCall: #( bool WindowShouldClose #( void ) )
]
