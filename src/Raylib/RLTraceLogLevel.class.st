"
Trace log level organized by priority level.
"
Class {
	#name : #RLTraceLogLevel,
	#superclass : #RLEnums,
	#classVars : [
		'LOG_ALL',
		'LOG_DEBUG',
		'LOG_ERROR',
		'LOG_FATAL',
		'LOG_INFO',
		'LOG_NONE',
		'LOG_TRACE',
		'LOG_WARNING'
	],
	#category : #Raylib
}

{ #category : #'enum declaration' }
RLTraceLogLevel class >> enumDecl [
	"
	 LOG_ALL = 0,        // Display all logs
    LOG_TRACE,          // Trace logging, intended for internal use only
    LOG_DEBUG,          // Debug logging, used for internal debugging, it should be disabled on release builds
    LOG_INFO,           // Info logging, used for program execution info
    LOG_WARNING,        // Warning logging, used on recoverable failures
    LOG_ERROR,          // Error logging, used on unrecoverable failures
    LOG_FATAL,          // Fatal logging, used to abort program: exit(EXIT_FAILURE)
    LOG_NONE            // Disable logging
   "

	^ #(
        LOG_ALL      0
        LOG_TRACE    1
        LOG_DEBUG    2
        LOG_INFO     3
        LOG_WARNING  4
        LOG_ERROR    5
        LOG_FATAL    6
        LOG_NONE     7
	   )
]
