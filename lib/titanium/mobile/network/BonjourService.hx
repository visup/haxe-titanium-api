package titanium.mobile.network;
import titanium.mobile.core.Dispatcher;

/**
BonjourService class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Network.BonjourService-object.html

- namespace

Titanium.Network.BonjourService

- type

object

- description

The BonjourService instance returned either from `Titanium.Network.createBonjourService` or via the service list from a BonjourBrowser `updatedServices` event.  This object describes a service on the network which is published by Bonjour.

- since

1.2.0

- platforms

iphone, ipad

- properties

socket[object]: the TCPSocket object that is used to connect to the service
name[string]: the name of the service
type[string]: the type of the service
domain[string]: the domain of the service
isLocal[boolean]: whether or not the service is local to the device

- methods

publish: Publish a Bonjour service to the network.  Only works if isLocal is TRUE
resolve: Resolve a Bonjour service from the network.  Must be done before attempting to access the service's socket information, if a remote service.  You cannot resolve a locally published service.
stop: Halts publication of a service.

- method : publish

socket[object]: a TCPSocket object to associate with the Bonjour service.

- method : resolve

timeout[double]: the timeout for service resolution, in seconds.  Optional, default is 120s.

~~~
~~~

- notes

You can only publish Bonjour services attached to a socket which is currently listening; you cannot publish a service for a remotely connected socket.  If you stop the Bonjour service and wish to close the socket it uses, it is strongly recommended that you stop the service first.  When a window which publishes a Bonjour service is closed, you must stop the service if the associated socket is also to be closed, or if it is no longer necessary to publish.  Unlike other network operations, Bonjour service resolution and publishing is synchronous, so be aware that your code may block while resolution is going on.  In particular, you may wish to display UI elements indicating background activity before beginning resolution.


**/

#if iphoneos

@:native("Titanium.Network.BonjourService")
extern class BonjourService extends Dispatcher
{
	// static constructor
	public inline static function create(name:String, type:String, domain:String, ?params:Dynamic):BonjourService
		return titanium.mobile.Network.createBonjourService(name, type, domain, params)
		
	// properties
	public var domain:String;
	public var isLocal:Bool;
	public var name:String;
	public var socket:TCPSocket;
	public var type:String;
	
	// methods
	public function publish(socket:TCPSocket):Void;
	public function resolve(timeout:Float):Void;
	public function stop():Void;
}
#end