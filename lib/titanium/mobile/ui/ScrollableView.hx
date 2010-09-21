package titanium.mobile.ui;
import titanium.mobile.core.BaseView;
import titanium.mobile.core.Dispatcher;

/**
ScrollableView class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.ScrollableView-object.html
**/


typedef ScrollableViewScrollEvent = 
{ > Event,
	currentPage:Int,
	view:Dynamic
}

@:native("Titanium.UI.ScrollableView")
extern class ScrollableView extends BaseView
{
	// static constructor
	public inline static function create(?params:Dynamic):ScrollableView
		return titanium.mobile.UI.createScrollableView(params)
		
	// events
	public static inline var SCROLL_EVENT = "scroll";
	
	// properties
	public var currentPage:Int;
	public var minZoomScale:Float;
	public var maxZoomScale:Float;
	public var pagingControlColor:String;
	public var pagingControlHeight:Float;
	public var showPagingControl:Bool;
	public var views:Array<Dynamic>;
	
	// methods
	public function scrollToView(view:Dynamic):Void;
}