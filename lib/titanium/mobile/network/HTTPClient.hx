﻿package titanium.mobile.network;
import titanium.mobile.core.Dispatcher;

/**
HTTPClient class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Network.HTTPClient-object.html

- namespace

Titanium.Network.HTTPClient

- type

object

- description

The HttpClient instance returned from `Titanium.Network.createHTTPClient`. This object (mostly) implements the XMLHttpRequest specification.

- since

0.1

- platforms

android, iphone, ipad


- methods

open: open the request and ready the connection
send: send the request
abort: abort a pending request
setRequestHeader: set the request header. Must be called after `open` but before `send`.
setTimeout: set the request timeout
getResponseHeader: return the response header.

- method : open

method[string]: the HTTP method
url[string]: the URL for the request
async[boolean]: optional property to indicate if asynchronous (default) or not

- method : send

data[object]: the data to send in the request. can either be null, dictionary, string, File object or Blob.

- method : getResponseHeader, string

name[string]: the header name

- method : setRequestHeader

name[string]: name of the header
value[string]: value of the header. May be null to clearing out a property, such as X-Requested-With

- method : setTimeout

timeout[double]: the timeout in milliseconds

- properties

status[int]: the response HTTP status code
readyState[int]: the readyState value
connected[boolean]: boolean to indicate that the response was successful
responseText[string]: the response as text or null if an error was received or no data was returned
responseXML[object]: the response object as an XML DOMDocument object. returns null if the content type returned by the server was not XML or the content could not be parsed
responseData[object]: the response data as a Blob object.
connectionType[string]: the connection type, normally either `GET` or `POST`.
location[string]: the absolute URL of the request
timeout[int]: timeout is milliseconds when the connection should be aborted
file[string]: file to download contents to.  Can only be set after calling open.  iOS only

UNSENT[int]: the UNSET readyState constant
OPENED[int]: the OPENED readyState constant
HEADERS_RECEIVED[int]: the HEADERS_RECEIVED readyState constant
LOADING[int]: the LOADING readyState constant
DONE[int]: the DONE readyState constant

onreadystatechange[function]: set this to a function before calling open to cause the function to be called for each readyState change

onload[function]: set this to a function before calling open to cause the function to be called upon a successful response

onerror[function]: set this to a function before calling open to cause the function to be called upon a error response

onsendstream[function]: set this to a function before calling open to cause the function to be called at regular intervals as the request data is being transmitted. the `progress` property of the event will contain a value from 0.0-1.0 with the progress.

ondatastream[function]: set this to a function before calling open to cause the function to be called at regular intervals as the request data is being received. the `progress` property of the event will contain a value from 0.0-1.0 with the progress.

validatesSecureCertificate[boolean]: set this to control how SSL certification validation is performed on connection.  defaults to false if in simulator or device testing and true if release for distribution mode.

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
	public var requestDataType:Dynamic;
	
	// methods
	public function abort():Void;
	public function getResponseHeader(name:String):String;
	public function open(method:String, url:String, async:Bool):Void;
	public function send(data:Dynamic):Void;
	public function setRequestHeader(name:String, value:String):Void;
	public function setTimeout(timeout:Float):Void;
}