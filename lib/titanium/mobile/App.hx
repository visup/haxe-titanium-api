package titanium.mobile;

import titanium.mobile.core.Dispatcher;

/**
App class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.App-module.html
**/

typedef ProximityEvent = 
{ > Event,
	state:String,
}

@:native("Titanium.App")
extern class App
{
	// events
	public static inline var PROXIMITY_EVENT:String = "proximity";
	
	// static methods
	public static function addEventListener(name:String, eventListener:Dynamic->Void):Void;
	public static function fireEvent(name:String, event:Dynamic):Void;
	public static function removeEventListener(name:String, eventListener:Dynamic->Void):Void;
	
	public static function getArguments():Dynamic;
	
	// static properties
	public static var copyright:String;
	public static var description:String;
	public static var guid:String;
	public static var id:String;
	public static var idleTimerDisabled:Bool;
//	public static var name:String;
	public static var proximityDetection:Bool;
	public static var proximityState:Int;
	public static var publisher:String;
	public static var url:String;
	public static var version:String;
}