package titanium.mobile.ui;
import titanium.mobile.core.BaseView;
import titanium.mobile.core.Blob;
import titanium.mobile.core.Dispatcher;

/**
Window class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.Window-object.html
**/


typedef WindowBlurEvent = 
{ > Event,
}

typedef WindowCloseEvent = 
{ > Event,
}

typedef WindowFocusEvent = 
{ > Event,
}

typedef WindowOpenEvent = 
{ > Event,
}

@:native("Titanium.UI.Window")
extern class Window extends BaseView
{
	// static constructor
	public inline static function create(?params:Dynamic):Window
		return titanium.mobile.UI.createWindow(params)
	
	// events
	public inline static var BLUR_EVENT = "	blur";
	public inline static var CLOSE_EVENT = "close";
	public inline static var FOCUS_EVENT = "focus";
	public inline static var OPEN_EVENT = "open";
	
	// properties
	public var backButtonTitleImage:String;
	public var barColor:String;
	public var barImage:String;
	public var exitOnClose:Bool;
	public var fullscreen:Bool;
	public var modal:Bool;
	public var navBarHidden:Bool;
	public var tabBarHidden:Bool;
	public var orientationModes:Array<Int>;
	public var title:String;
	public var url:String;
	#if iphoneos
	public var leftNavButton:Dynamic;
	public var rightNavButton:Dynamic;
	public var titleControl:Dynamic;
	public var titleImage:String;
	public var titlePrompt:String;
	public var toolbar:Array<Button>;
	public var translucent:Bool;
	#end
	
	// methods
	public function close(?options:Dynamic):Void;
	public function open(?options:Dynamic):Void;
}