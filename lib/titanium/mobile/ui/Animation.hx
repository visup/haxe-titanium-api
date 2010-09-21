package titanium.mobile.ui;
import titanium.mobile.core.Dispatcher;
import titanium.mobile.core.Point;

/**
Animation class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.Animation-object.html
**/

typedef AnimationCompleteEvent = 
{ > Event,
}

typedef AnimationStartEvent = 
{ > Event,
}

@:native("Titanium.UI.Animation")
extern class Animation extends Dispatcher
{
	// static constructor
	public inline static function create(?params:Dynamic):Animation
		return titanium.mobile.UI.createAnimation(params)
		
	// events
	public static inline var COMPLETE_EVENT = "complete";
	public static inline var START_EVENT = "start";
	
	// properties
	public var autoreverse:Bool;
	public var backgroundColor:String;
	public var bottom:Float;
	public var center:Point;
	public var color:String;
	public var curve:Int;
	public var delay:Float;
	public var duration:Float;
	public var height:Float;
	public var left:Float;
	public var opacity:Float;
	public var opaque:Bool;
	public var repeat:Int;
	public var right:Float;
	public var top:Float;
	public var transform:Dynamic;
	public var transition:Int;
	public var visible:Bool;
	public var width:Float;
	public var zIndex:Int;
}