package titanium.mobile.ui;
import titanium.mobile.core.BaseView;
import titanium.mobile.core.Dispatcher;

/**
Switch class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.Switch-object.html
**/

typedef SwitchChangeEvent = 
{ > Event,
	value:Bool
}

@:native("Titanium.UI.Switch")
extern class Switch extends BaseView
{
	// static constructor
	public inline static function create(?params:Dynamic):Switch
		return titanium.mobile.UI.createSwitch(params)
		
	// events
	public static inline var CHANGE_EVENT = "change";
	
	// properties
	public var enabled:Bool;
	public var value:Bool;
}










