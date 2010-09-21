package titanium.mobile;

import titanium.mobile.core.Dispatcher;

/**
Accelerometer class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Accelerometer-module
**/


typedef AccelerometerUpdateEvent = 
{ > Event,
	timestamp:String,
	x:Float,
	y:Float,
	z:Float
}

@:native("Titanium.Accelerometer")
extern class Accelerometer
{
	// events
	public static inline var UPDATE_EVENT:String = "update";
	
	// static methods
	public static function addEventListener(name:String, eventListener:Dynamic->Void):Void;
	public static function fireEvent(name:String, event:Dynamic):Void;
	public static function removeEventListener(name:String, eventListener:Dynamic->Void):Void;

}