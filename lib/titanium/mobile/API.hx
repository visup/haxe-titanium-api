package titanium.mobile;

/**
Titanium class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.API-module

- namespace

Titanium.API

- type

module

- returns

object

- description

The top level API module.  The API module is mainly used for logging.

- since

0.1

- platforms

android, iphone, ipad


- methods

info: function for logging informational messages
debug: function for logging debug messages
warn: function for logging warning messages
error: function for logging error messages
log: function for logging custom severity messages

- method : info

message[string] : the message to log

- method : debug

message[string] : the message to log

- method : warn

message[string] : the message to log

- method : error

message[string] : the message to log

- method : log

level[string] : the log level
message[string] : the message to log


**/

@:native("Titanium.API")
extern class API
{
	// static methods
	public static function addEventListener(name:String, eventListener:Dynamic->Void):Void;
	public static function fireEvent(name:String, event:Dynamic):Void;
	public static function removeEventListener(name:String, eventListener:Dynamic->Void):Void;
	
	public static function debug(message:String):Void;
	public static function error(message:String):Void;
	public static function info(message:String):Void;
	public static function log(level:String, message:String):Void;
	public static function warn(message:String):Void;
}