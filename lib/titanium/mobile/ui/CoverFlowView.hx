package titanium.mobile.ui;
import titanium.mobile.core.BaseView;
import titanium.mobile.core.Dispatcher;

/**
CoverFlowView class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.CoverFlowView-object.html
**/
#if iphoneos

typedef CoverFlowViewChangeEvent = 
{ > Event,
	index:Int,
	previous:Int
}

typedef CoverFlowViewClickEvent = 
{ > ClickEvent,
	index:Int,
	previous:Int
}

@:native("Titanium.UI.CoverFlowView")
extern class CoverFlowView extends BaseView
{
	// static constructor
	public inline static function create(?params:Dynamic):CoverFlowView
		return titanium.mobile.UI.createCoverFlowView(params)
		
	public inline static var CLICK_EVENT = "click";
	public inline static var CHANGE_EVENT = "change";
	
	// properties
	public var images:Array<String>;
	public var selected:Int;
	
	// methods
	public function setURL(index:Int, url:String):Void;
}
#end