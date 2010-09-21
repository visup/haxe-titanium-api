package titanium.mobile;

/**
Titanium class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.API-module
**/

@:native("Titanium.API")
extern class API
{
	// static methods
	public static function addEventListener(name:String, eventListener:Dynamic->Void):Void;
	public static function fireEvent(name:String, event:Dynamic):Void;
	public static function removeEventListener(name:String, eventListener:Dynamic->Void):Void;
	
	public static function debug(message:String):Void;
	public static function error(message:String):Void;
	public static function info(message:String):Void;
	public static function log(level:String, message:String):Void;
	public static function warn(message:String):Void;
}