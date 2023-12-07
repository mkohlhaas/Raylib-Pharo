"
Custom Raylib color palette for amazing visuals on WHITE background.
"
Class {
	#name : #RLColors,
	#superclass : #RLConstants,
	#classVars : [
		'BEIGE',
		'BLACK',
		'BLANK',
		'BLUE',
		'BROWN',
		'DARKBLUE',
		'DARKBROWN',
		'DARKGRAY',
		'DARKGREEN',
		'DARKPURPLE',
		'GOLD',
		'GRAY',
		'GREEN',
		'LIGHTGRAY',
		'LIME',
		'MAGENTA',
		'MAROON',
		'ORANGE',
		'PINK',
		'PURPLE',
		'RAYWHITE',
		'RED',
		'SKYBLUE',
		'VIOLET',
		'WHITE',
		'YELLOW'
	],
	#category : #Raylib
}

{ #category : #'class initialization' }
RLColors class >> initialize [

	LIGHTGRAY := RLColor new
		             r: 200;
		             g: 200;
		             b: 200;
		             a: 255.
	GRAY := RLColor new
		        r: 130;
		        g: 130;
		        b: 130;
		        a: 255.
	DARKGRAY := RLColor new
		            r: 80;
		            g: 80;
		            b: 80;
		            a: 255.
	YELLOW := RLColor new
		          r: 253;
		          g: 249;
		          b: 0;
		          a: 255.
	GOLD := RLColor new
		        r: 255;
		        g: 203;
		        b: 0;
		        a: 255.
	ORANGE := RLColor new
		          r: 255;
		          g: 161;
		          b: 0;
		          a: 255.
	PINK := RLColor new
		        r: 255;
		        g: 109;
		        b: 194;
		        a: 255.
	RED := RLColor new
		       r: 230;
		       g: 41;
		       b: 55;
		       a: 255.
	MAROON := RLColor new
		          r: 190;
		          g: 33;
		          b: 55;
		          a: 255.
	GREEN := RLColor new
		         r: 0;
		         g: 228;
		         b: 48;
		         a: 255.
	LIME := RLColor new
		        r: 0;
		        g: 158;
		        b: 47;
		        a: 255.
	DARKGREEN := RLColor new
		             r: 0;
		             g: 117;
		             b: 44;
		             a: 255.
	SKYBLUE := RLColor new
		           r: 102;
		           g: 191;
		           b: 255;
		           a: 255.
	BLUE := RLColor new
		        r: 0;
		        g: 121;
		        b: 241;
		        a: 255.
	DARKBLUE := RLColor new
		            r: 0;
		            g: 82;
		            b: 172;
		            a: 255.
	PURPLE := RLColor new
		          r: 200;
		          g: 122;
		          b: 255;
		          a: 255.
	VIOLET := RLColor new
		          r: 135;
		          g: 60;
		          b: 190;
		          a: 255.
	DARKPURPLE := RLColor new
		              r: 112;
		              g: 31;
		              b: 126;
		              a: 255.
	BEIGE := RLColor new
		         r: 211;
		         g: 176;
		         b: 131;
		         a: 255.
	BROWN := RLColor new
		         r: 127;
		         g: 106;
		         b: 79;
		         a: 255.
	DARKBROWN := RLColor new
		             r: 76;
		             g: 63;
		             b: 47;
		             a: 255.
	WHITE := RLColor new
		         r: 255;
		         g: 255;
		         b: 255;
		         a: 255.
	BLACK := RLColor new
		         r: 0;
		         g: 0;
		         b: 0;
		         a: 255.
	BLANK := RLColor new
		         r: 0;
		         g: 0;
		         b: 0;
		         a: 0.
	MAGENTA := RLColor new
		           r: 255;
		           g: 0;
		           b: 255;
		           a: 255.
	RAYWHITE := RLColor new
		            r: 245;
		            g: 245;
		            b: 245;
		            a: 255
]
