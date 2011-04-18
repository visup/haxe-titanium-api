package titanium.mobile;

import titanium.mobile.core.Dispatcher;

/**
Geolocation class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Geolocation-module

- namespace

Titanium.Geolocation

- type

module

- returns

object

- description

The top level Geolocation module.  The Geolocation module is used for accessing device location based information.

- since

0.1

- platforms

android, iphone, ipad

- methods

setShowCalibration: configure the calibration UI. set the false to disable the calibration display.

- properties

ACCURACY_BEST[int]: accuracy constant
ACCURACY_NEAREST_TEN_METERS[int]: accuracy constant
ACCURACY_HUNDRED_METERS[int]: accuracy constant
ACCURACY_KILOMETER[int]: accuracy constant
ACCURACY_THREE_KILOMETERS[int]: accuracy constant
PROVIDER_GPS[string]: The GPS location provider
PROVIDER_NETWORK[string]: The Network location provider

locationServicesEnabled[boolean]: returns true if the user has enabled or disable location services for the device (not the application). 
showCalibration[boolean]: returns true if the calibration UI can show
preferredProvider[string]: allows setting of the preferred location provider.  Returns undefined when the preferred provider is auto-detected

purpose[string]: (iOS only). This property informs the end-user why location services are being requested by the application.  This string will be display in the permission dialog. This property is REQUIRED starting in 4.0.

- events

calibration: fired only on iPhone/iPad when the device detects interface and requires calibration. when this event is fired, the calibration UI is being displayed to the end user.
heading: fired when a heading event is received
location: fired when a location event is received

- event : location

success: boolean to indicate if the location event was successfully received or an error occurred
error: if success is false, returns a string of the error description
coords: location coordinates dictionary with the following sub-properties: `latitude`, `longitude`, `altitude`, `accuracy`, `altitudeAccuracy`, `heading`, `speed`, `timestamp`.

- event : heading

success: boolean to indicate if the heading event was successfully received or an error occurred
error: if success is false, returns a string of the error description
heading: heading results dictionary with the following sub-properties: `magneticHeading`, `trueHeading`, `accuracy`, `x`, `y`, `z`, `timestamp`.

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
extern class Geolocation
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