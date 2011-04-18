package titanium.mobile;
import titanium.mobile.filesystem.File;

/**
Filesystem class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Filesystem-module

- namespace

Titanium.Filesystem

- type

module

- returns

object

- description

The top level Filesystem module.  The Filesystem module is used for reading and saving files and 
directories on the device.

- since

0.1

- platforms

android, iphone, ipad

- methods

createTempFile: create a temp file and return a [[Titanium.Filesystem.File]]
createTempDirectory: create temp file and return a [[Titanium.Filesystem.File]]
isExteralStoragePresent: returns true if the device supports external storage such as an SD card
getFile: return a fully formed file path as a [[Titanium.Filesystem.File]] object


- method : createTempFile, Titanium.Filesystem.File

- method : createTempDirectory, Titanium.Filesystem.File

- method : isExteralStoragePresent, boolean

- method : getFile, Titanium.Filesystem.File

path[string]: one or more path arguments to form the full path joined together with the platform specific path separator. if a relative path is passed, the full path will be relative to the application resource folder.




- properties

resourcesDirectory[string]: readonly constant where your application resources are located
applicationDirectory[string]: readonly constant where your application is located
applicationDataDirectory[string]: readonly constant where your application data directory is located. this directory should be used to place applications-specific files. on iPhone, this directory is also backed up.
tempDirectory[string]: readonly constant where your application can place temporary files
separator[string]: readonly path separator constant
lineEnding[string]: readonly platform specific line ending constant

MODE_APPEND[int]: constant for append mode for file operations
MODE_READ[int]: constant for read mode for file operations
MODE_WRITE[int]: constant for write mode for file operations




- events


**/

@:native("Titanium.Filesystem")
extern class Filesystem
{
	// constants
	public static var MODE_APPEND:Int;
	public static var MODE_READ:Int;
	public static var MODE_WRITE:Int;
	
	// static properties
	public static var applicationDataDirectory(default, null):String;
	public static var applicationDirectory(default, null):String;
	public static var lineEnding(default, null):String;
	public static var resourcesDirectory(default, null):String;
	public static var separator(default, null):String;
	public static var tempDirectory(default, null):String;
	
	// static methods
	public static function addEventListener(name:String, eventListener:Dynamic->Void):Void;
	public static function fireEvent(name:String, event:Dynamic):Void;
	public static function removeEventListener(name:String, eventListener:Dynamic->Void):Void;
	
	public static function createFile(?params:Dynamic):File;
	public static function createTempDirectory():File;
	public static function createTempFile():File;
	public static function getFile(path:String , ?nameFile:String):File;//aggiunta per compatibilità 1.5.0
	public static function isExteralStoragePresent():Bool;
}