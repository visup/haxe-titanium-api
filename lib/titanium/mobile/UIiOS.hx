package titanium.mobile;
import titanium.mobile.core.Dispatcher;
import titanium.mobile.ui.ios.IOSAdView;

/**
UI.iOS class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.iOS-module
**/
#if iphoneos
@:native("Titanium.UI.iOS")
extern class UIiOS
{
	// static methods
	public static function addEventListener(name:String, eventListener:Dynamic->Void):Void;
	public static function fireEvent(name:String, event:Dynamic):Void;
	public static function removeEventListener(name:String, eventListener:Dynamic->Void):Void;
	public static function createAdView(?params:Dynamic):IOSAdView;
}
#end