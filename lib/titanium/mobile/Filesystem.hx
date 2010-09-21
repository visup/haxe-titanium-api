package titanium.mobile;
import titanium.mobile.filesystem.File;

/**
Filesystem class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Filesystem-module
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
	public static function getFile(path:String):File;
	public static function isExteralStoragePresent():Bool;
}