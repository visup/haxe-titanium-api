package titanium.mobile.ui;
import titanium.mobile.core.BaseView;
import titanium.mobile.core.Dispatcher;

/**
Slider class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.Slider-object.html
**/

typedef SliderChangeEvent = 
{ > Event,
}

@:native("Titanium.UI.Slider")
extern class Slider extends BaseView
{
	// static constructor
	public inline static function create(?params:Dynamic):Slider
		return titanium.mobile.UI.createSlider(params)
		
	// events
	public static inline var CHANGE_EVENT = "change";
	
	// properties
	public var disabledLeftTrackImage:String;
	public var disabledRightTrackImage:String;
	public var disabledThumbImage:String;
	public var enabled:Bool;
	public var highlightedLeftTrackImage:String;
	public var highlightedRightTrackImage:String;
	public var highlightedThumbImage:String;
	public var leftTrackImage:String;
	public var max:Float;
	public var min:Float;
	public var rightTrackImage:String;
	public var selectedLeftTrackImage:String;
	public var selectedRightTrackImage:String;
	public var selectedThumbImage:String;
	public var thumbImage:String;
	public var value:String;
}










