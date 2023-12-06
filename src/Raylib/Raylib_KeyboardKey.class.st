"
Keyboard keys (US keyboard layout).
Use GetKeyPressed() to allow redefining required keys for alternative layouts.

"
Class {
	#name : #'Raylib_KeyboardKey',
	#superclass : #'Raylib_Enums',
	#classVars : [
		'KEY_A',
		'KEY_APOSTROPHE',
		'KEY_B',
		'KEY_BACK',
		'KEY_BACKSLASH',
		'KEY_BACKSPACE',
		'KEY_C',
		'KEY_CAPS_LOCK',
		'KEY_COMMA',
		'KEY_D',
		'KEY_DELETE',
		'KEY_DOWN',
		'KEY_E',
		'KEY_EIGHT',
		'KEY_END',
		'KEY_ENTER',
		'KEY_EQUAL',
		'KEY_ESCAPE',
		'KEY_F',
		'KEY_F1',
		'KEY_F10',
		'KEY_F11',
		'KEY_F12',
		'KEY_F2',
		'KEY_F3',
		'KEY_F4',
		'KEY_F5',
		'KEY_F6',
		'KEY_F7',
		'KEY_F8',
		'KEY_F9',
		'KEY_FIVE',
		'KEY_FOUR',
		'KEY_G',
		'KEY_GRAVE',
		'KEY_H',
		'KEY_HOME',
		'KEY_I',
		'KEY_INSERT',
		'KEY_J',
		'KEY_K',
		'KEY_KB_MENU',
		'KEY_KP_0',
		'KEY_KP_1',
		'KEY_KP_2',
		'KEY_KP_3',
		'KEY_KP_4',
		'KEY_KP_5',
		'KEY_KP_6',
		'KEY_KP_7',
		'KEY_KP_8',
		'KEY_KP_9',
		'KEY_KP_ADD',
		'KEY_KP_DECIMAL',
		'KEY_KP_DIVIDE',
		'KEY_KP_ENTER',
		'KEY_KP_EQUAL',
		'KEY_KP_MULTIPLY',
		'KEY_KP_SUBTRACT',
		'KEY_L',
		'KEY_LEFT',
		'KEY_LEFT_ALT',
		'KEY_LEFT_BRACKET',
		'KEY_LEFT_CONTROL',
		'KEY_LEFT_SHIFT',
		'KEY_LEFT_SUPER',
		'KEY_M',
		'KEY_MENU',
		'KEY_MINUS',
		'KEY_N',
		'KEY_NINE',
		'KEY_NULL',
		'KEY_NUM_LOCK',
		'KEY_O',
		'KEY_ONE',
		'KEY_P',
		'KEY_PAGE_DOWN',
		'KEY_PAGE_UP',
		'KEY_PAUSE',
		'KEY_PERIOD',
		'KEY_PRINT_SCREEN',
		'KEY_Q',
		'KEY_R',
		'KEY_RIGHT',
		'KEY_RIGHT_ALT',
		'KEY_RIGHT_BRACKET',
		'KEY_RIGHT_CONTROL',
		'KEY_RIGHT_SHIFT',
		'KEY_RIGHT_SUPER',
		'KEY_S',
		'KEY_SCROLL_LOCK',
		'KEY_SEMICOLON',
		'KEY_SEVEN',
		'KEY_SIX',
		'KEY_SLASH',
		'KEY_SPACE',
		'KEY_T',
		'KEY_TAB',
		'KEY_THREE',
		'KEY_TWO',
		'KEY_U',
		'KEY_UP',
		'KEY_V',
		'KEY_VOLUME_DOWN',
		'KEY_VOLUME_UP',
		'KEY_W',
		'KEY_X',
		'KEY_Y',
		'KEY_Z',
		'KEY_ZERO'
	],
	#category : #Raylib
}

{ #category : #'enum declaration' }
Raylib_KeyboardKey class >> enumDecl [

	^ #(
        KEY_NULL            0
        KEY_APOSTROPHE      39
        KEY_COMMA           44
        KEY_MINUS           45
        KEY_PERIOD          46
        KEY_SLASH           47
        KEY_ZERO            48
        KEY_ONE             49
        KEY_TWO             50
        KEY_THREE           51
        KEY_FOUR            52
        KEY_FIVE            53
        KEY_SIX             54
        KEY_SEVEN           55
        KEY_EIGHT           56
        KEY_NINE            57
        KEY_SEMICOLON       59
        KEY_EQUAL           61
        KEY_A               65
        KEY_B               66
        KEY_C               67
        KEY_D               68
        KEY_E               69
        KEY_F               70
        KEY_G               71
        KEY_H               72
        KEY_I               73
        KEY_J               74
        KEY_K               75
        KEY_L               76
        KEY_M               77
        KEY_N               78
        KEY_O               79
        KEY_P               80
        KEY_Q               81
        KEY_R               82
        KEY_S               83
        KEY_T               84
        KEY_U               85
        KEY_V               86
        KEY_W               87
        KEY_X               88
        KEY_Y               89
        KEY_Z               90
        KEY_LEFT_BRACKET    91
        KEY_BACKSLASH       92
        KEY_RIGHT_BRACKET   93
        KEY_GRAVE           96
        KEY_SPACE           32
        KEY_ESCAPE          256
        KEY_ENTER           257
        KEY_TAB             258
        KEY_BACKSPACE       259
        KEY_INSERT          260
        KEY_DELETE          261
        KEY_RIGHT           262
        KEY_LEFT            263
        KEY_DOWN            264
        KEY_UP              265
        KEY_PAGE_UP         266
        KEY_PAGE_DOWN       267
        KEY_HOME            268
        KEY_END             269
        KEY_CAPS_LOCK       280
        KEY_SCROLL_LOCK     281
        KEY_NUM_LOCK        282
        KEY_PRINT_SCREEN    283
        KEY_PAUSE           284
        KEY_F1              290
        KEY_F2              291
        KEY_F3              292
        KEY_F4              293
        KEY_F5              294
        KEY_F6              295
        KEY_F7              296
        KEY_F8              297
        KEY_F9              298
        KEY_F10             299
        KEY_F11             300
        KEY_F12             301
        KEY_LEFT_SHIFT      340
        KEY_LEFT_CONTROL    341
        KEY_LEFT_ALT        342
        KEY_LEFT_SUPER      343
        KEY_RIGHT_SHIFT     344
        KEY_RIGHT_CONTROL   345
        KEY_RIGHT_ALT       346
        KEY_RIGHT_SUPER     347
        KEY_KB_MENU         348
        KEY_KP_0            320
        KEY_KP_1            321
        KEY_KP_2            322
        KEY_KP_3            323
        KEY_KP_4            324
        KEY_KP_5            325
        KEY_KP_6            326
        KEY_KP_7            327
        KEY_KP_8            328
        KEY_KP_9            329
        KEY_KP_DECIMAL      330
        KEY_KP_DIVIDE       331
        KEY_KP_MULTIPLY     332
        KEY_KP_SUBTRACT     333
        KEY_KP_ADD          334
        KEY_KP_ENTER        335
        KEY_KP_EQUAL        336
        KEY_BACK            4
        KEY_MENU            82
        KEY_VOLUME_UP       24
        KEY_VOLUME_DOWN     25
	   )
]
