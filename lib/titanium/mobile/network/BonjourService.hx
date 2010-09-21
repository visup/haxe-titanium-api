package titanium.mobile.network;
import titanium.mobile.core.Dispatcher;

/**
BonjourService class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Network.BonjourService-object.html
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