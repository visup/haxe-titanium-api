package titanium.mobile;

import titanium.mobile.core.Dispatcher;

/**
Gestures class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Gesture-module

- namespace

Titanium.Gesture

- type

module

- returns

object

- description

The top level Gestures module.  The Gesture module is responsible for high level device gestures that are device-wide.

- since

0.8

- platforms

android, iphone, ipad


- events

shake: fired when the device is shaken
orientationchange: fired when the device orientation changes


- event : shake

timestamp: timestamp reference since previous shake

- event : orientationchange

orientation: the orientation constant


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
extern class Gesture
{
	// events
	public static inline var ORIENTATION_CHANGE_EVENT = "orientationchange";
	public static inline var SHAKE_EVENT = "shake";
	
	// static methods
	public static function addEventListener(name:String, eventListener:Dynamic->Void):Void;
	public static function fireEvent(name:String, event:Dynamic):Void;
	public static function removeEventListener(name:String, eventListener:Dynamic->Void):Void;
	
}