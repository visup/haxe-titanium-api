package titanium.mobile;
import titanium.mobile.core.Dispatcher;
import titanium.mobile.platform.DisplayCaps;

/**
Platform class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Platform-module

- namespace

Titanium.Platform

- type

module

- description

The top level Platform module.  The Platform module is used accessing the device's platform
related functionality.

- since

0.1

- platforms

android, iphone, ipad

- methods

openURL: open a URL in the system default manner
createUUID: create a globally unique identifier
canOpenURL: returns whether or not a system URL can be opened. iOS only

- method : openURL

url[string]: the url to open

- method : canOpenURL

url[string]: the url to check

- method : createUUID, string


- properties

id[string]: the unique id of the device
name[string]: the name of the platform returned by the device
version[string]: the version of the platform returned by the device
processorCount[int]: the number of processors the device reports
username[string]: the username of the device, if set
ostype[string]: the OS architecture, such as 32 bit
osname[string]: the shortname of the operating system. for example, on an iPhone, will return `iphone`, iPad will return `ipad` and Android will return `android`.
address[string]: the ip address that the device reports (only applicable on WIFI network)
netmask[string]: the network mask that the device reports (only applicable on WIFI network)
macaddress[string]: this property will return a unique identifier for the device
architecture[string]: the processor architecture that the device reports
model[string]: the model of the phone that the device reports
locale[string]: the primary language of the device that the user has enabled
displayCaps[object]: return the DisplayCaps object for platform
availableMemory[double]: return the amount of memory available on the device in bytes
batteryMonitoring[boolean] : boolean to indicate if battery monitoring is enabled
batteryState[int]: constant that represents the state of the battery. this property is only accessible if `batteryMonitoring` is enabled
batteryLevel[float]: the current device battery level. this property is only accessible if `batteryMonitoring` is enabled. on iPhone, this level only changes at 5% intervals.

BATTERY_STATE_UNKNOWN[int]: the battery state is unknown or not monitoring is not enabled
BATTERY_STATE_UNPLUGGED[int]: the device is unplugged
BATTERY_STATE_CHARGING[int]: the device is plugged in and currently being charged
BATTERY_STATE_FULL[int]: the battery is fully charged

- events

battery: fired when the battery state changes.  the battery state changes are only tracked on iPhone/iPad at 5% increments.

- event : battery

state: the new battery state
level: the new battery level

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
	#if iphoneos
	public static function canOpenURL(url:String):Bool;
	#end
}