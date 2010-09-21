package titanium.mobile;

import titanium.mobile.core.Dispatcher;

/**
Gestures class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Gesture-module
**/

typedef TiOrientationChangeEvent = 
{ > Event,
	orientation:String
}

typedef TiShakeEvent =
{ > Event,
	timestamp:Int
}

@:native("Titanium.Gesture")
extern class TiGesture
{
	// events
	public static inline var ORIENTATION_CHANGE_EVENT = "orientationchange";
	public static inline var SHAKE_EVENT = "shake";
	
	// static methods
	public static function addEventListener(name:String, eventListener:Dynamic->Void):Void;
	public static function fireEvent(name:String, event:Dynamic):Void;
	public static function removeEventListener(name:String, eventListener:Dynamic->Void):Void;
	
}