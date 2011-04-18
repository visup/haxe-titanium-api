package titanium.mobile;

/**
Utils class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Utils-module

- namespace

Titanium.Utils

- type

module

- description

The top level Utils module.  The Utils module is a set of common JavaScript functions that are 
useful for applications.

- since

0.9

- platforms

android, iphone, ipad


- methods

md5HexDigest: compute a MD5 hash algorithm against the input and return a hex-based string
base64encode: encode a string into Base64
base64decode: decode a Base64 string

- method : md5HexDigest, string

str[string]: the string to use for the input


- method : base64encode, string

str[string] : the string to use for the input

- method : base64decode, string

str[string] : the string to use for the input


**/

@:native("Titanium.Utils")
extern class Utils
{
	// static methods
	public static function addEventListener(name:String, eventListener:Dynamic->Void):Void;
	public static function fireEvent(name:String, event:Dynamic):Void;
	public static function removeEventListener(name:String, eventListener:Dynamic->Void):Void;
	
	public static function base64decode(str:String):String;
	public static function base64encode(str:String):String;
	public static function md5HexDigest(str:String):String;
}