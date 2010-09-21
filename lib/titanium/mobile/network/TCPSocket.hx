package titanium.mobile.network;
import titanium.mobile.core.Dispatcher;

/**
TCPSocket class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Network.TCPSocket-object
**/


typedef NetworkReadEvent = 
{ > Event,
	data:Dynamic,
	from:Int
}

typedef NetworkReadErrorEvent = 
{ > Event,
	code:Int,
	error:String
}

typedef NetworkWriteErrorEvent = 
{ > Event,
	code:Int,
	error:String
}

@:native("Titanium.Network.TCPSocket")
extern class TCPSocket extends Dispatcher
{
	// static constructor
	public inline static function create(hostName:String, port:Int, mode:Int, ?params:Dynamic):TCPSocket
		return titanium.mobile.Network.createTCPSocket(hostName, port, mode, params)
		
	// events
	public static inline var READ_EVENT = "read";
	public static inline var READ_ERROR_EVENT = "readError";
	public static inline var WRITE_ERROR_EVENT = "writeError";
	
	// properties
	public var hostName:String;
	public var isValid:Bool;
	public var mode:Int;
	public var port:Int;
	
	// methods
	public function connect():Void;
	public function close():Void;
	public function listen():Void;
	public function write(data:Dynamic, sendTo:Int):Void;
}