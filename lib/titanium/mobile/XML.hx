package titanium.mobile;

/**
XML class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.XML-module
**/

@:native("Titanium.XML")
extern class XML
{	
	// static methods
	public static function addEventListener(name:String, eventListener:Dynamic->Void):Void;
	public static function fireEvent(name:String, event:Dynamic):Void;
	public static function removeEventListener(name:String, eventListener:Dynamic->Void):Void;
	
	public static function parseString(str:String):Dynamic;
}