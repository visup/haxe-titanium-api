package titanium.mobile;
import titanium.mobile.core.Dispatcher;

/**
UI.Android class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.Android-module
**/
#if androidos
@:native("Titanium.UI.Android")
extern class UIAndroid
{
	// static methods
	public static function addEventListener(name:String, eventListener:Dynamic->Void):Void;
	public static function fireEvent(name:String, event:Dynamic):Void;
	public static function removeEventListener(name:String, eventListener:Dynamic->Void):Void;
	
}
#end