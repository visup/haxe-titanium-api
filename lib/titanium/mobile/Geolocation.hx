package titanium.mobile;

import titanium.mobile.core.Dispatcher;

/**
Geolocation class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Filesystem-module
**/

#if iphoneos
typedef TiCalibrationEvent = 
{ > Event,
	
}
#end

typedef TiHeadingEvent =
{ > Event,
	heading:Dynamic,
	error:String,
	success:Bool
}

typedef TiLocationEvent =
{ > Event,
	coords:Dynamic,
	error:String,
	success:Bool
}

@:native("Titanium.Geolocation")
extern class TiGeolocation
{
	// events
	#if iphoneos
	public static inline var CALIBRATION_EVENT = "calibration";
	#end
	public static inline var HEADING_EVENT = "heading";
	public static inline var LOCATION_EVENT = "location";
	
	// static constants
	public static var ACCURACY_BEST:Int;
	public static var ACCURACY_HUNDRED_METERS:Int;
	public static var ACCURACY_KILOMETER:Int;
	public static var ACCURACY_NEAREST_TEN_METERS:Int;
	public static var ACCURACY_THREE_KILOMETERS:Int;
	public static var PROVIDER_GPS:String;
	public static var PROVIDER_NETWORK:String;
	
	// static properties
	public static var locationServicesEnabled:Bool;
	public static var preferredProvider:String;
	#if iphoneos
	public static var purpose:String;
	#end
	public static var showCalibration:Bool;
	
	// static methods
	public static function addEventListener(name:String, eventListener:Dynamic->Void):Void;
	public static function fireEvent(name:String, event:Dynamic):Void;
	public static function removeEventListener(name:String, eventListener:Dynamic->Void):Void;
	
	public static function setShowCalibration(value:Bool):Void;
}