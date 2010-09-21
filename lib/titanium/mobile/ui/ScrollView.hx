package titanium.mobile.ui;
import titanium.mobile.core.BaseView;
import titanium.mobile.core.Dispatcher;

/**
ScrollView class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.ScrollView-object.html
**/


typedef ScrollViewScrollEvent = 
{ > Event,
	decelerating:Bool,
	dragging:Bool,
	x:Float,
	y:Float
}

@:native("Titanium.UI.ScrollView")
extern class ScrollView extends BaseView
{
	// static constructor
	public inline static function create(?params:Dynamic):ScrollView
		return titanium.mobile.UI.createScrollView(params)
		
	// events
	public static inline var SCROLL_EVENT = "scroll";
	
	// properties
	#if iphoneos
	public var canCancelEvents:Bool;
	#end
	public var contentWidth:Float;
	public var contentHeight:Float;
	public var contentOffset:Float;
	public var disableBounce:Bool;
	public var horizontalBounce:Bool;
	public var verticalBounce:Bool;
	public var minZoomScale:Float;
	public var maxZoomScale:Float;
	#if androidos
	public var scrollType:String;
	#end
	public var showHorizontalScrollIndicator:Bool;
	public var showVerticalScrollIndicator:Bool;
	public var zoomScale:Float;
	
	// methods
	public function scrollTo(x:Float, y:Float):Void;
}