package titanium.mobile;
import titanium.mobile.core.Dispatcher;
import titanium.mobile.ui.iphone.IPhoneNavigationGroup;

/**
UI.iPhone class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.iPhone-module
**/
#if iphoneos
@:native("Titanium.UI.iPhone")
extern class UIiPhone
{
	// static constants
	public static var MODAL_PRESENTATION_CURRENT_CONTEXT:Int;
	public static var MODAL_PRESENTATION_FORMSHEET:Int;
	public static var MODAL_PRESENTATION_FULLSCREEN:Int;
	public static var MODAL_PRESENTATION_PAGESHEET:Int;
	public static var MODAL_TRANSITION_STYLE_COVER_VERTICAL:Int;
	public static var MODAL_TRANSITION_STYLE_CROSS_DISSOLVE:Int;
	public static var MODAL_TRANSITION_STYLE_FLIP_HORIZONTAL:Int;
	public static var MODAL_TRANSITION_STYLE_PARTIAL_CURL:Int;
	
	// static properties
	public static var appBadge:String;
	public static var appSupportsShakeToEdit:Bool;
	public static var statusBarHidden:Bool;
	public static var statusBarStyle:Int;
	
	// static methods
	public static function addEventListener(name:String, eventListener:Dynamic->Void):Void;
	public static function fireEvent(name:String, event:Dynamic):Void;
	public static function removeEventListener(name:String, eventListener:Dynamic->Void):Void;
	
	public static function createNavigationGroup(?params:Dynamic):IPhoneNavigationGroup;
	public static function showStatusBar(animated:Bool, animationStyle:Int):Void;
	public static function hideStatusBar(animated:Bool, animationStyle:Int):Void;
}
#end