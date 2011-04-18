package titanium.mobile.ui.ios;
import titanium.mobile.core.BaseView;
import titanium.mobile.core.Dispatcher;

/**
IOSAdView class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.iOS.AdView-object.html

- namespace

Titanium.UI.iOS.AdView

- type

object

- subtype

view

- description

The AdView is a view for display Apple iAds. The View is created by the method `Titanium.UI.iOS.createAdView`.

- since

1.4

- platforms

iphone, ipad

- properties

SIZE_320x50[string]: constant for 320x50 ad sizes
SIZE_480x32[string]: constant for 480x32 ad sizes

- methods

cancelAction: A banner view action can cover your application's user interface. However, your application continues to run, and receives events normally. If your application receives an event that requires the user's attention, it can programmatically cancel the action and uncover its interface by calling cancelAction. Canceling actions frequently can cause a loss of revenue for your application.

- events

load : called when a banner is loaded and displayed
action: called when a banner action is performed
error: called when a banner could not be loaded

- event : error

message: the error message


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