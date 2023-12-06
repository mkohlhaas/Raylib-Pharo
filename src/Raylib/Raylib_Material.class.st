"
Shader shader;          // Material shader
MaterialMap *maps;      // Material maps array (MAX_MATERIAL_MAPS)
float params[4];        // Material generic parameters (if required)

"
Class {
	#name : #'Raylib_Material',
	#superclass : #RaylibStructures,
	#category : #Raylib
}

{ #category : #'field definition' }
Raylib_Material class >> fieldsDesc [

	^ #(
        Raylib_Shader shader;
        Raylib_MaterialMap *maps;
        float4array params;
	   )
	

]
