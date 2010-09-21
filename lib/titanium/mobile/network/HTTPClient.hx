package titanium.mobile.network;
import titanium.mobile.core.Dispatcher;

/**
HTTPClient class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Network.HTTPClient-object.html
**/

@:native("Titanium.Network.HTTPClient")
extern class HTTPClient extends Dispatcher
{
	// static constructor
	public inline static function create(?params:Dynamic):HTTPClient
		return titanium.mobile.Network.createHTTPClient(params)
		
	// constants
	public static var DONE:Int;
	public static var HEADERS_RECEIVED:Int;
	public static var LOADING:Int;
	public static var OPENED:Int;
	public static var UNSENT:Int;
	
	// properties
	public var connected:Bool;
	public var connectionType:String;
	public var location:String;
	public var ondatastream:Dynamic->Void;
	public var onerror:Dynamic->Void;
	public var onload:Dynamic->Void;
	public var onreadystatechange:Dynamic->Void;
	public var onsendstream:Dynamic->Void;
	public var readyState:Int;
	public var responseData:Dynamic;
	public var responseText:String;
	public var responseXML:Xml;
	public var status:Int;
	public var timeout:Int;
	public var validatesSecureCertificate:Bool;
	
	// methods
	public function abort():Void;
	public function getResponseHeader(name:String):String;
	public function open(method:String, url:String, async:Bool):Void;
	public function send(data:Dynamic):Void;
	public function setRequestHeader(name:String, value:String):Void;
	public function setTimeout(timeout:Float):Void;
}