package titanium.mobile.ui.android;
import titanium.mobile.core.Dispatcher;

/**
AndroidOptionMenuItem class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.Android.OptionMenu.MenuItem-object
**/
#if androidos

typedef AndroidOptionMenuItemClickEvent = 
{ > Event,
}

@:native("Titanium.UI.Android.OptionMenu.MenuItem")
extern class AndroidOptionMenuItem extends Dispatcher
{
	// static constructor
	public inline static function create(?params:Dynamic):AndroidOptionMenuItem
		return titanium.mobile.UIAndroidOptionMenu.createMenuItem(params)
		
	// events
	public inline static var CLICK_EVENT = "click";
	
	// properties
	public var icon:String;
	public var title:String;
}
#end