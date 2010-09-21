package titanium.mobile;

/**
Analytics class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Analytics-module
**/

@:native("Titanium.Analytics")
extern class Analytics
{
	// static methods
	public static function addEventListener(name:String, eventListener:Dynamic->Void):Void;
	public static function fireEvent(name:String, event:Dynamic):Void;
	public static function removeEventListener(name:String, eventListener:Dynamic->Void):Void;

	public static function addEvent(type:String, name:String, data:Dynamic):Void;
	public static function featureEvent(name:String, data:Dynamic):Void;
	public static function navEvent(from:String, to:String, name:String, data:Dynamic):Void;
	public static function settingsEvent(name:String, data:Dynamic):Void;
	public static function timedEvent(name:String, start:Date, stop:Date, duration:Float, data:Dynamic):Void;
	public static function userEvent(name:String, data:Dynamic):Void;
}