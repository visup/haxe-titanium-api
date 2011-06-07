package titanium.mobile;

import titanium.mobile.core.Dispatcher;

/**
App class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.App-module.html

- namespace

Titanium.App

- type

module

- returns

object

- description

The top level App module.  The App module is mainly used for accessing information about the application at runtime.

- since

0.1

- platforms

android, iphone, ipad


- methods

getArguments: return the arguments passed to the application on startup as a dictionary
fireEvent: fire a cross-context application event.  listeners in any Javascript context can receive these events if they have added themselves as a listener with the event name.  NOTE: you can only pass JSON serializable data in the data payload of the event object since the data must be transportable between contexts.


- method : getArguments, object

- method : fireEvent

name[string]: the event name
data[object]: optional data payload for the event. NOTE: you can only pass JSON serializable data since the data must be transportable between contexts.


- properties

id[string]: the application's app id as specified in Titanium Developer
url[string]: the application url
guid[string]: the application's globally unique id (this is system generated and consistent through all versions)
name[string]: the application's name
version[string]: the application's version
publisher[string]: the application's publisher 
description[string]: the application's description
copyright[string]: the application's copyright

idleTimerDisabled[boolean]: property for controlling whether the phone screen will be locked on idle time. Can be set to true to disable the timer

proximityState[int]: the state of the device's proximity detector
proximityDetection[boolean]: a boolean to indicate whether proximity detection is enabled


- events

proximity: fired when a proximity state changes

- event : proximity

state: the proximity state value


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
	public static var id:String;
	public static var url:String;
	public static var guid:String;
	//public static var name:String;
	public static var version:String;
	public static var publisher:String;
	public static var description:String;
	public static var copyright:String;
	public static var idleTimerDisabled:Bool;
	public static var proximityState:Int;	
	public static var proximityDetection:Bool;

}