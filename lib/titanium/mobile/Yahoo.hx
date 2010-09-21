package titanium.mobile;

/**
Yahoo class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Yahoo-module
**/

@:native("Titanium.Yahoo")
extern class Yahoo
{
	// static methods
	public static function addEventListener(name:String, eventListener:Dynamic->Void):Void;
	public static function fireEvent(name:String, event:Dynamic):Void;
	public static function removeEventListener(name:String, eventListener:Dynamic->Void):Void;
	
	public static function yql(yql:String, onComplete:Dynamic->Void):Void;
}