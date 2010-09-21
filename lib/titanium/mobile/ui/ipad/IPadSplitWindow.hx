package titanium.mobile.ui.ipad;
import titanium.mobile.core.BaseView;
import titanium.mobile.core.Dispatcher;

/**
IPadSplitWindow class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.iPad.SplitWindow-object
**/
#if iphoneos

typedef IPadSplitWindowVisibleEvent = 
{ > Event,
	button:Dynamic,
	popover:IPadPopover,
	view:String
}

@:native("Titanium.UI.iPad.SplitWindow")
extern class IPadSplitWindow extends BaseView
{
	// static constructor
	public inline static function create(?params:Dynamic):IPadSplitWindow
		return titanium.mobile.UIiPad.createSplitWindow(params)
		
	// events
	public inline static var VISIBLE_EVENT:String = "visible";
	
	// properties
	public var detailView:Dynamic;
	public var masterView:Dynamic;
}
#end