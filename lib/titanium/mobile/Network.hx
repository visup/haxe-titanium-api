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

- namespace

Titanium.Network

- type

module

- description

The top level Network module.  The Network module is used accessing Networking related functionality, including [Titanium.Network.Socket](Titanium.Network.Socket-module.html)

- since

0.1

- platforms

android, iphone, ipad


- methods

createHTTPClient : returns an HttpClient instance
createBonjourBrowser : returns a BonjourBrowser instance (iOS only)
createBonjourService : returns a BonjourService instance (iOS only)
createTCPSocket : returns a TPCPSocket instance (iOS only; DEPRECATED)
registerForPushNotifications: register for push notifications with the Apple Push Notification Service. Only available on iPhone.
encodeURIComponent: encode a URI component part using URI encoding
decodeURIComponent: decode a URI component part using URI encoding
addConnectivityListener: adds a connectivity listener to listen for network changes. This method has been deprecated in favor of listening for a `change` event. 
removeConnectivityListener: removes a connectivity listener. This method has been deprecated in favor of listening for a `change` event. 

- method : addConnectivityListener

callback[function]: callback function to invoke upon network connectivity changes

- method : removeConnectivityListener

callback[function]: callback function to remove

- method : encodeURIComponent, string

value[string]: input value to be encoded

- method : decodeURIComponent, string

value[string]: input value to be decoded

- method : createHTTPClient, object

- method : createBonjourBrowser, object

serviceType[string]: service to search for, must include the protocol type suffix (._tcp)
domain[string]: the Bonjour service domain to conduct the search in.  Default value is 'local.'

- method : createBonjourService, object

name[string]: the name of the service.  Must be a unique identifier for this service type and domain.
type[string]: the type of service.  Must include the protocol identifier (._tcp)
domain[string]: the domain to publish the service in.  Default value is 'local.'

- method : createTCPSocket, object

hostName[string]: the host name to connect to/listen on
port[int]: the port for the socket
mode[int]: the socket's mode; one of `Titanium.Network.READ_MODE`, `Titanium.Network.WRITE_MODE`, `Titanium.Network.READ_WRITE_MODE`

- method : registerForPushNotifications

config[object]: dictionary of the following: `types` is an array of type constants that the application would like to receive, `success` is a callback function that is called when the push registration is successfully completed, `error` is a callback function that is called when an error is received during registration and `callback` is a callback function that is invoked upon receiving a new push notification. This method should be called at application startup.

- properties

NETWORK_NONE[int]: constant value to indicate that the network is not available
NETWORK_WIFI[int]: constant value to indicate that the network is WIFI
NETWORK_MOBILE[int]: constant value to indicate that the network is MOBILE
NETWORK_LAN[int]: constant value to indicate that the network is LAN
NETWORK_UNKNOWN[int]: constant value to indicate that the network is not known

NOTIFICATION_TYPE_BADGE[int]: constant value for the push notification badge type
NOTIFICATION_TYPE_ALERT[int]: constant value for the push notification alert type
NOTIFICATION_TYPE_SOUND[int]: constant value for the push notification sound type

READ_MODE[int]: constant value specifying read-only mode for sockets
WRITE_MODE[int]: constant value specifying write-only mode for sockets
READ_WRITE_MODE[int]: constant value specifying read-write mode for sockets
INADDR_ANY[string]: constant value representing the ability for sockets to listen on any locally available network device

SOCKET_INITIALIZED[int]: constant value representing a socket in the INITIALIZED state
SOCKET_CONNECTED[int]: constant value representing a socket in the CONNECTED state
SOCKET_LISTENING[int]: constant value representing a socket in the LISTENING state
SOCKET_CLOSED[int]: constant value representing a socket in the CLOSED state
SOCKET_ERROR[int]: constant value representing a socket in the ERROR state

online[boolean]: readonly boolean value that indicates if the network is reachable to the Internet either via WIFI or Carrier network
networkTypeName[string]: the network type name constant. Returns one of `NONE`, `WIFI`, `LAN` or `MOBILE`.
networkType[int]: the network type value as a constant.
remoteDeviceUUID[string]: the remote device UUID if the device was registered with the Apple Push Notification Service or null if not set. Only available on iPhone.
remoteNotificationsEnabled[boolean]: returns true if remote notifications have been enabled. Only available on iPhone.
remoteNotificationTypes[array]: returns an array of network type constants enabled for the application. Only available on iPhone.


- events

change: fired upon a network connectivity change

- event : change

networkType: the new network type
networkTypeName: the new network type as a string
online: boolean to indicate if the network is online


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
	public static var NOTIFICATION_TYPE_ALERT:Int;
	public static var NOTIFICATION_TYPE_BADGE:Int;
	public static var NOTIFICATION_TYPE_SOUND:Int;
	public static var SOCKET_INITIALIZED:Int;
	public static var SOCKET_CONNECTED:Int;
	public static var SOCKET_LISTENING:Int;
	public static var SOCKET_CLOSED:Int;
	public static var SOCKET_ERROR:Int;
	
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
	
	public static function addConnectivityListener(callBack:Dynamic->Void):Void;
	public static function removeConnectivityListener(callBack:Dynamic->Void):Void;
	public static function createHTTPClient(?params:Dynamic):HTTPClient;
	public static function decodeURIComponent(value:String):String;
	public static function encodeURIComponent(value:String):String;
	#if iphoneos
	public static function createBonjourBrowser(serviceType:String, domain:String, ?params:Dynamic):BonjourBrowser;
	public static function createBonjourService(name:String, type:String, domain:String, ?params:Dynamic):BonjourService;
	public static function registerForPushNotifications(config:Dynamic):Void;
	public static function createTCPSocket(hostName:String, port:Int, mode:Int, ?params:Dynamic):TCPSocket;
	#end
}