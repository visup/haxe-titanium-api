package titanium.mobile.ui;
import titanium.mobile.core.BaseView;
import titanium.mobile.core.Blob;
import titanium.mobile.core.Dispatcher;

/**
ImageView class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.ImageView-object.html
**/


typedef ImageViewChangeEvent = 
{ > Event,
	index:Int
}

typedef ImageViewLoadEvent = 
{ > Event,
	state:Dynamic
}

typedef ImageViewStartEvent = 
{ > Event,
}

typedef ImageViewStopEvent = 
{ > Event,
}

@:native("Titanium.UI.ImageView")
extern class ImageView extends BaseView
{
	// static constructor
	public inline static function create(?params:Dynamic):ImageView
		return titanium.mobile.UI.createImageView(params)
	
	// events
	public inline static var CHANGE_EVENT = "change";
	public inline static var LOAD_EVENT = "load";
	public inline static var START_EVENT = "start";
	public inline static var STOP_EVENT = "stop";
	
	// properties
	public var animating:Bool;
	public var canScale:Bool;
	public var defaultImage:String;
	public var duration:Float;
	public var image:Dynamic;
	public var images:Array<Dynamic>;
	public var paused:Bool;
	public var preventDefaultImage:Bool;
	public var repeatCount:Int;
	public var reverse:Bool;
	
	// methods
	public function start():Void;
	public function pause():Void;
	public function stop():Void;
	public function toBlob():Blob;
}