package titanium.mobile;
import titanium.mobile.core.Dispatcher;
import titanium.mobile.ui.ipad.IPadPopover;
import titanium.mobile.ui.ipad.IPadSplitWindow;

/**
UI.iPad class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.iPad-module
**/
#if iphoneos
@:native("Titanium.UI.iPad")
extern class UIiPad
{
	// static methods
	public static function addEventListener(name:String, eventListener:Dynamic->Void):Void;
	public static function fireEvent(name:String, event:Dynamic):Void;
	public static function removeEventListener(name:String, eventListener:Dynamic->Void):Void;
	
	public static function createPopover(?params:Dynamic):IPadPopover;
	public static function createSplitWindow(?params:Dynamic):IPadSplitWindow;
}
#end