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

The top level Geolocation module. The Geolocation module is used for accessing device location based information.

- since

0.1

- platforms

android, iphone, ipad

- methods

forwardGeocoder: tries to resolve an address to a location.
getCurrentHeading: retrieve the current compass heading.
getCurrentPosition: retrieve the last known location from the device. On Android, the radios are not turned on to update the location. On iOS the radios MAY be used if the location is too "old".
reverseGeocoder:  tries to resolve a location to an address.
setShowCalibration: configure the calibration UI. set the false to disable the calibration display. (iOS only)

- method : forwardGeocoder
address[string] : address to resolve.
callback[function] : function to invoke on success or failure. The event object contains the properties described as the `place` dictionary in `Titanium.Geolocation.reverseGeocoder`.

- method : getCurrentHeading
callback[function] : function to invoke on success or failure of obtaining the current heading. See heading event in `Titanium.Geolocation`.

- method : getCurrentPosition
callback[function] : function to invoke on success or failure of obtaining the current location. See location event in `Titanium.Geolocation`.

- method : reverseGeocoder
latitude[double] : latitude to search
longitude[double] : longitude to search
callback[function] : function to invoke on success or failure. The event object passed contains a `places` array of zero or more place dictionaries. Each `place` dictionary contains the following properties: `street`, `street1`, `city`, `region1`, `region2`, `postalCode`, `country`, `countryCode`, `longitude`, `latitude`, `displayAddress`, `address`.

- properties

ACCURACY_BEST[int]: accuracy constant
ACCURACY_NEAREST_TEN_METERS[int]: accuracy constant
ACCURACY_HUNDRED_METERS[int]: accuracy constant
ACCURACY_KILOMETER[int]: accuracy constant
ACCURACY_THREE_KILOMETERS[int]: accuracy constant
PROVIDER_GPS[string]: The GPS location provider
PROVIDER_NETWORK[string]: The Network location provider
AUTHORIZATION_UNKNOWN[int]: authorization constant
AUTHORIZATION_AUTHORIZED[int]: authorization constant
AUTHORIZATION_DENIED[int]: authorization constant (user disabled authorization)
AUTHORIZATION_RESTRICTED[int]: authorization constant (system disabled authorization)
ERROR_LOCATION_UNKNOWN[int]: error constant (iOS only)
ERROR_DENIED[int]: error constant (iOS only)
ERROR_NETWORK[int]: error constant (iOS only)
ERROR_HEADING_FAILURE[int]: error constant (iOS only)
ERROR_REGION_MONITORING_DENIED[int]: error constant (iOS 4.0+ only)
ERROR_REGION_MONITORING_FAILURE[int]: error constant (iOS 4.0+ only)
ERROR_REGION_MONITORING_DELAYED[int]: error constant (iOS 4.0+ only)

locationServicesEnabled[boolean]: returns true if the user has enabled or disable location services for the device (not the application). 
showCalibration[boolean]: returns true if the calibration UI can show
preferredProvider[string]: allows setting of the preferred location provider.  Returns undefined when the preferred provider is auto-detected

purpose[string]: (iOS only). This property informs the end-user why location services are being requested by the application.  This string will be display in the permission dialog. This property is REQUIRED starting in 4.0.
locationServicesAuthorization[int]: (iOS 4.2+ only). Returns an authorization constant indicating if the application has access to location services. Always returns AUTHORIZATION_UNKNOWN on pre-4.2 devices. Attempting to re-authorize when AUTHORIZATION_RESTRICTED will lead to issues
distanceFilter[double]: The minimum change of position (in meters) before a 'location' event is fired. Default is 0, meaning that location events are continuously generated.
headingFilter[double]: The minium change of heading (in degrees) before a 'heading' event is fired. Default is 0, meaning that heading events are continuously generated.

- events

calibration: fired only on iPhone/iPad when the device detects interface and requires calibration. when this event is fired, the calibration UI is being displayed to the end user.
heading: fired when a heading event is received
location: fired when a location event is received

- event : location

success: boolean to indicate if the location event was successfully received or an error occurred
error: if success is false, returns a string of the error description
code: if success is false, the error code if available (iOS only)
coords: location coordinates dictionary with the following sub-properties: `latitude`, `longitude`, `altitude`, `accuracy`, `altitudeAccuracy`, `heading`, `speed`, `timestamp`.
provider: (Android only) location provider dictionary with the following sub-properties: `name`, `accuracy`, `power`, and `provider`.

- event : heading

success: boolean to indicate if the heading event was successfully received or an error occurred
error: if success is false, returns a string of the error description
code: if success is false, the error code if available (iOS only)
heading: heading results dictionary with the following sub-properties: `magneticHeading`, `trueHeading`, `accuracy`, `x`, `y`, `z`, `timestamp`.

**/

#if iphoneos
typedef TiCalibrationEvent = 
{ > Event,
	
}
#end

typedef TiLocationEvent =
{ > Event,
	success:Bool,
	error:String,
	#if iphoneos code:String, #end
	#if androidos provider:Dynamic, #end
	coords:Dynamic
}

typedef TiHeadingEvent =
{ > Event,
	success:Bool,
	error:String,
	#if iphoneos code:String, #end
	heading:Dynamic
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
	public static var ACCURACY_NEAREST_TEN_METERS:Int;
	public static var ACCURACY_HUNDRED_METERS:Int;
	public static var ACCURACY_KILOMETER:Int;
	public static var ACCURACY_THREE_KILOMETERS:Int;
	public static var PROVIDER_GPS:String;
	public static var PROVIDER_NETWORK:String;
	public static var AUTHORIZATION_UNKNOWN:Int;
	public static var AUTHORIZATION_AUTHORIZED:Int;
	public static var AUTHORIZATION_DENIED:Int;
	public static var AUTHORIZATION_RESTRICTED:Int;

	#if iphoneos
	public static var ERROR_LOCATION_UNKNOWN:Int;
	public static var ERROR_DENIED:Int;
	public static var ERROR_NETWORK:Int;
	public static var ERROR_HEADING_FAILURE:Int;
	public static var ERROR_REGION_MONITORING_DENIED:Int;
	public static var ERROR_REGION_MONITORING_FAILURE:Int;
	public static var ERROR_REGION_MONITORING_DELAYED:Int;
	#end

	
	// static properties
	public static var locationServicesEnabled:Bool;
	public static var showCalibration:Bool;
	public static var preferredProvider:String;
	#if iphoneos
	public static var purpose:String;
	public static var locationServicesAuthorization:Int;
	#end
	public static var distanceFilter:Float;
	public static var headingFilter:Float;
	
	// static methods
	public static function addEventListener(name:String, eventListener:Dynamic->Void):Void;
	public static function fireEvent(name:String, event:Dynamic):Void;
	public static function removeEventListener(name:String, eventListener:Dynamic->Void):Void;


	public static function forwardGeocoder(address:String, callBack:Dynamic->Void):Void;
	public static function getCurrentHeading(callBack:Dynamic->Void):Void;
	public static function getCurrentPosition(callBack:Dynamic->Void):Void;
	public static function reverseGeocoder(latitude: Float, longitude: Float, callBack:Dynamic->Void):Void;
	public static function setShowCalibration(value:Bool):Void;
}