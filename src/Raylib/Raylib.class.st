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
"
Class {
	#name : #Raylib,
	#superclass : #Object,
	#category : #Raylib
}

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
Raylib class >> closeWindow [

	self ffiCall: #( void CloseWindow #( void ) )
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
Raylib class >> fileExists: fileName [

	^ self ffiCall: #( bool FileExists #( const char * fileName ) )
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
Raylib class >> getCollisionRec: rec1 rec2: rec2 [

	^ self ffiCall:
		  #( Rectangle GetCollisionRec #( Rectangle rec1 , Rectangle
		        rec2 ) )
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
Raylib class >> getKeyPressed [

	^ self ffiCall: #( int GetKeyPressed #( void ) )
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
Raylib class >> getPrevDirectoryPath: dirPath [

	^ self ffiCall:
		  #( const char * GetPrevDirectoryPath #( const char * dirPath ) )
]

{ #category : #'ffi-calls' }
Raylib class >> getRandomValue: min max: max [

	^ self ffiCall: #( int GetRandomValue #( int min , int max ) )
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
Raylib class >> initWindow: width height: height title: title [

	self ffiCall:
		#( void InitWindow #( int width , int height , const char * title ) )
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
Raylib class >> loadStorageValue: position [

	^ self ffiCall: #( int LoadStorageValue #( unsigned int position ) )
]

{ #category : #'ffi-calls' }
Raylib class >> loadVrStereoConfig: device [

	^ self ffiCall:
		  #( VrStereoConfig LoadVrStereoConfig #( VrDeviceInfo device ) )
]

{ #category : #'ffi-calls' }
Raylib class >> maximizeWindow [

	self ffiCall: #( void MaximizeWindow #( void ) )
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
Raylib class >> pollInputEvents [

	self ffiCall: #( void PollInputEvents #( void ) )
]

{ #category : #'ffi-calls' }
Raylib class >> restoreWindow [

	self ffiCall: #( void RestoreWindow #( void ) )
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
Raylib class >> setTargetFPS: fps [

	self ffiCall: #( void SetTargetFPS #( int fps ) )
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
Raylib class >> swapScreenBuffer [

	self ffiCall: #( void SwapScreenBuffer #( void ) )
]

{ #category : #'ffi-calls' }
Raylib class >> takeScreenshot: fileName [

	self ffiCall: #( void TakeScreenshot #( const char * fileName ) )
]

{ #category : #'ffi-calls' }
Raylib class >> toggleFullscreen [

	self ffiCall: #( void ToggleFullscreen #( void ) )
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
Raylib class >> unloadShader: shader [

	self ffiCall: #( void UnloadShader #( Shader shader ) )
]

{ #category : #'ffi-calls' }
Raylib class >> unloadVrStereoConfig: config [

	self ffiCall:
		#( void UnloadVrStereoConfig #( VrStereoConfig config ) )
]

{ #category : #'ffi-calls' }
Raylib class >> updateCamera: camera [

	self ffiCall: #( void UpdateCamera #( Camera * camera ) )
]

{ #category : #'ffi-calls' }
Raylib class >> waitTime: ms [

	self ffiCall: #( void WaitTime #( float ms ) )
]

{ #category : #'ffi-calls' }
Raylib class >> windowShouldClose [

	^ self ffiCall: #( bool WindowShouldClose #( void ) )
]
