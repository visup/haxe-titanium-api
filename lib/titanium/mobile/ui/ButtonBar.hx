package titanium.mobile.ui;
import titanium.mobile.core.BaseView;
import titanium.mobile.core.Dispatcher;

/**
ButtonBar class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.ButtonBar-object.html
**/
#if iphoneos
typedef ButtonBarClickEvent = 
{ > ClickEvent,
	index:Int
}

@:native("Titanium.UI.ButtonBar")
extern class ButtonBar extends BaseView
{
	// static constructor
	public inline static function create(?params:Dynamic):ButtonBar
		return titanium.mobile.UI.createButtonBar(params)
	
	// events
	public inline static var CLICK_EVENT = "click";
	
	// properties
	public var index:Int;
	public var labeld:Array<Dynamic>;
}
#end