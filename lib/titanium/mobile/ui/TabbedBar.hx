package titanium.mobile.ui;
import titanium.mobile.core.BaseView;
import titanium.mobile.core.Dispatcher;

/**
TabbedBar class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.TabbedBar-object.html
**/

#if iphoneos

typedef TabbedBarClickEvent = 
{ > ClickEvent,
	index:Int
}

@:native("Titanium.UI.TabbedBar")
extern class TabbedBar extends BaseView
{
	// static constructor
	public inline static function create(?params:Dynamic):TabbedBar
		return titanium.mobile.UI.createTabbedBar(params)
		
	// events
	public static inline var CLICK_EVENT = "click";
	
	// properties
	public var index:Int;
	public var labels:Array<Dynamic>;
	public var style:Int;
}
#end










