package titanium.mobile;

import titanium.mobile.core.Dispatcher;
import titanium.mobile.network.BonjourBrowser;
import titanium.mobile.network.BonjourService;
import titanium.mobile.network.HTTPClient;
import titanium.mobile.network.TCPSocket;

/**
Network class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Network-module
**/

typedef NetworkChangeEvent =
{ > Event,
	networkType:Int,
	networkTypeName:String,
	online:Bool
}

@:native("Titanium.Network")
extern class Network
{
	// events
	public static inline var CHANGE_EVENT = "change";
	
	// static constants
	public static var INADDR_ANY:String;
	public static var NETWORK_LAN:Int;
	public static var NETWORK_MOBILE:Int;
	public static var NETWORK_NONE:Int;
	public static var NETWORK_UNKNOWN:Int;
	public static var NETWORK_WIFI:Int;
	public static var READ_MODE:Int;
	public static var READ_WRITE_MODE:Int;
	public static var WRITE_MODE:Int;
	#if iphoneos
	public static var NOTIFICATION_TYPE_ALERT:Int;
	public static var NOTIFICATION_TYPE_BADGE:Int;
	public static var NOTIFICATION_TYPE_SOUND:Int;
	#end
	
	// properties
	public static var networkType:Int;
	public static var networkTypeName:String;
	public static var online:Bool;
	#if iphoneos
	public static var remoteDeviceUUID:String;
	public static var remoteNotificationTypes:Array<Int>;
	public static var remoteNotificationsEnabled:Bool;
	#end
	
	// static methods
	public static function addEventListener(name:String, eventListener:Dynamic->Void):Void;
	public static function fireEvent(name:String, event:Dynamic):Void;
	public static function removeEventListener(name:String, eventListener:Dynamic->Void):Void;
	
	public static function createHTTPClient(?params:Dynamic):HTTPClient;
	public static function createTCPSocket(hostName:String, port:Int, mode:Int, ?params:Dynamic):TCPSocket;
	public static function decodeURIComponent(value:String):String;
	public static function encodeURIComponent(value:String):String;
	#if iphoneos
	public static function createBonjourBrowser(serviceType:String, domain:String, ?params:Dynamic):BonjourBrowser;
	public static function createBonjourService(name:String, type:String, domain:String, ?params:Dynamic):BonjourService;
	public static function registerForPushNotifications(config:Dynamic):Void;
	#end
}