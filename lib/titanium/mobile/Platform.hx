package titanium.mobile;
import titanium.mobile.core.Dispatcher;
import titanium.mobile.platform.DisplayCaps;

/**
Platform class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Platform-module
**/

typedef PlatformBatteryEvent =
{ > Event,
	level:Float,
	state:Int
}

@:native("Titanium.Platform")
extern class Platform
{
	// events
	public static inline var BATTERY_EVENT = "battery";
	
	// static constants
	public static var BATTERY_STATE_CHARGING:String;
	public static var BATTERY_STATE_FULL:String;
	public static var BATTERY_STATE_UNKNOWN:String;
	public static var BATTERY_STATE_UNPLUGGED:String;
	
	// static properties
	public static var address:String;
	public static var architecture:String;
	public static var availableMemory:Float;
	public static var batteryLevel:Float;
	public static var batteryMonitoring:Bool;
	public static var batteryState:Int;
	public static var displayCaps:DisplayCaps;
	public static var id:String;
	public static var locale:String;
	public static var macaddress:String;
	public static var model:String;
	//public static var name:String;
	public static var netmask:String;
	public static var osname:String;
	public static var ostype:String;
	public static var processorCount:String;
	public static var username:String;
	public static var version:String;
	
	// static methods
	public static function addEventListener(name:String, eventListener:Dynamic->Void):Void;
	public static function fireEvent(name:String, event:Dynamic):Void;
	public static function removeEventListener(name:String, eventListener:Dynamic->Void):Void;

	public static function createUUID():String;
	public static function openURL(url:String):Void;
}