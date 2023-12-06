"
Trace log level organized by priority level.

"
Class {
	#name : #'Raylib_TraceLogLevel',
	#superclass : #'Raylib_Enums',
	#category : #Raylib
}

{ #category : #'enum declaration' }
Raylib_TraceLogLevel class >> enumDecl [
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

	^ #(  )
]
