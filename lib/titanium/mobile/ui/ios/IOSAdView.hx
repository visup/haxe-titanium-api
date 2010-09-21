package titanium.mobile.ui.ios;
import titanium.mobile.core.BaseView;
import titanium.mobile.core.Dispatcher;

/**
IOSAdView class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.iOS.AdView-object.html
**/
#if iphoneos

typedef IOSAdViewActionEvent = 
{ > Event,
}

typedef IOSAdViewLoadEvent = 
{ > Event,
}

typedef IOSAdViewErrorEvent = 
{ > Event,
	message:String
}

@:native("Titanium.UI.iOS.AdView")
extern class IOSAdView extends BaseView
{
	// static constructor
	public inline static function create(?params:Dynamic):IOSAdView
		return titanium.mobile.UIiOS.createAdView(params)
		
	// events
	public inline static var ACTION_EVENT:String = "action";
	public inline static var ERROR_EVENT:String = "error";
	public inline static var LOAD_EVENT:String = "load";
	
	// constants
	public static var SIZE_320x50:String;
	public static var SIZE_480x32:String;
	
	// methods
	public function cancelAction():Void;
}
#end