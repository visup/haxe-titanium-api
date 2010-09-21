package titanium.mobile.ui.ipad;
import titanium.mobile.core.BaseView;
import titanium.mobile.core.Dispatcher;

/**
IPadPopover class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.iPad.Popover-object.html
**/
#if iphoneos

typedef IPadPopoverHideEvent = 
{ > Event,
}

@:native("Titanium.UI.iPad.Popover")
extern class IPadPopover extends BaseView
{
	// static constructor
	public inline static function create(?params:Dynamic):IPadPopover
		return titanium.mobile.UIiPad.createPopover(params)
		
	// events
	public inline static var HIDE_EVENT:String = "hide";
	
	// properties
	public var arrowDirection:Int;
	public var leftNavButton:Dynamic;
	public var rightNavButton:Dynamic;
	public var title:String;
	
	// methods
	public function setWidth(width:Dynamic):Void;
	public function setHeight(height:Dynamic):Void;
}
#end