package titanium.mobile;

/**
Utils class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Utils-module
**/

@:native("Titanium.Utils")
extern class Utils
{
	// static methods
	public static function addEventListener(name:String, eventListener:Dynamic->Void):Void;
	public static function fireEvent(name:String, event:Dynamic):Void;
	public static function removeEventListener(name:String, eventListener:Dynamic->Void):Void;
	
	public static function base64decode(str:String):String;
	public static function base64encode(str:String):String;
	public static function md5HexDigest(str:String):String;
}