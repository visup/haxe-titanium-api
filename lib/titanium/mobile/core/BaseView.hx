package titanium.mobile.core;

typedef TouchEvent = 
{ > Dispatcher.Event,
	globalPoint:Point,
	x:Float,
	y:Float
}

typedef ClickEvent = 
{ > TouchEvent,
}

typedef SwipeEvent = 
{ > TouchEvent,
	direction:String
}

extern class BaseView extends Dispatcher
{
	// events
	public static inline var CLICK_EVENT:String = "click";
	public static inline var DOUBLE_CLICK_EVENT:String = "dblclick";
	public static inline var DOUBLE_TAP_EVENT:String = "doubletap";
    	public static inline var TOUCH_EVENT:String = "singletap";
	public static inline var SWIPE_EVENT:String = "swipe";
	public static inline var TOUCH_CANCEL_EVENT:String = "touchcancel";
	public static inline var TOUCH_START_EVENT:String = "touchstart";
	public static inline var TOUCH_END_EVENT:String = "touchend";
	public static inline var TOUCH_MOVE_EVENT:String = "touchmove";
	public static inline var TWOFINGER_TAP_EVENT:String = "twofingertap";
	
	// properties
	public var anchorPoint:Point;
	public var animatedCenterPoint(default, null):Point;
	public var backgroundColor:String;
	public var backgroundGradient:Dynamic;
	public var backgroundImage:String;
	public var backgroundSelectedImage:String;
	public var backgroundLeftCap:String;
	public var backgroundTopCap:String;
	public var borderColor:String;
	public var borderRadius:Float;
	public var borderWidth:Float;
	public var bottom:Float;
	public var center:Point;
	public var height:Float;
	public var left:Float;
	public var opacity:Float;
	public var right:Float;
	public var size:Size;
	public var top:Float;
	public var touchEnabled:Bool;
	public var transform:Dynamic;
	public var visible:Bool;
	public var width:Float;
	public var zIndex:Int;
	public var parent:Dynamic;
	
	// methods
	public function add(view:Dynamic):Void;
	public function remove(view:BaseView):Void;
	public function animate(obj:Dynamic, ?onComplete:Dynamic->Void):Void;
	public function show():Void;
	public function hide():Void;
	public function toImage(?onComplete:Dynamic->Void):Dynamic;
}