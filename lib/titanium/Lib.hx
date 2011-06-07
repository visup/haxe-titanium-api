/**
Titanium class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium-module
**/

package titanium;
import titanium.mobile.core.Buffer;

@:native("Titanium")
extern class Lib
{
	// static properties
	public static var userAgent:String;
	public static var version:String;
	
	// static methods
	public static function addEventListener(name:String, eventListener:Dynamic->Void):Void;
	public static function fireEvent(name:String, event:Dynamic):Void;
	public static function include(name:String):Void;
	public static function removeEventListener(name:String, eventListener:Dynamic->Void):Void;
	public static function createBuffer(params: Dynamic):Buffer;
}