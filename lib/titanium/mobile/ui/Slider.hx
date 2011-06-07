package titanium.mobile.ui;
import titanium.mobile.core.BaseView;
import titanium.mobile.core.Dispatcher;

/**
Slider class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.Slider-object.html

- namespace

Titanium.UI.Slider

- type

object

- subtype

view

- description

A Slider is created by the method `Titanium.UI.createSlider`.

- since

0.8

- platforms

android, iphone, ipad

- properties

value[string]: the value of the slider
enabled[boolean]: boolean to indicate the enabled state of the slider
min[float]: the minimum slider value
max[float]: the maximum slider value
thumbImage[string]: the image url to the slider thumb
selectedThumbImage[string]: the image url of the slider thumb when in the selected state
highlightedThumbImage[string]: the image url of the slider thumb when in the highlighted state
disabledThumbImage[string]: the image url of the slider thumb when in the disabled state
leftTrackImage[string]: the image url of the slider left track
selectedLeftTrackImage[string]: the image url of the slider left track when in the selected state
highlightedLeftTrackImage[string]: the image url of the slider left track when in the highlighted state
disabledLeftTrackImage[string]: the image url of the slider left track when in the disabled state
rightTrackImage[string]: the image url of the slider right track
selectedRightTrackImage[string]: the image url of the slider right track when in the selected state
highlightedRightTrackImage[string]: the image url of the slider right track when in the highlighted state
disabledRightTrackImage[string]: the image url of the slider right track when in the disabled state
minRange[int]: value can't be moved lower than minRange. minRange equals min by default. (Android)
maxRange[int]: value can't be moved higher than maxRange. maxRange equals max by default. (Android)


- methods

- events

change: fired when the value of the slider changes

- event : change

value[string]: the new value of the slider
thumbOffset[object]: a dictionary with properties x and y of the thumbs left-top corner in the control Available with custom thumb image. (Android)
thumbSize[object]: a dictionary with properties width and height of the size of the thumb. Available with custom thumb image.  (Android)

- notes


**/

typedef SliderChangeEvent = 
{ > Event,
	#if androidos
	thumbOffset:Dynamic,
	thumbSize:Dynamic,
	#end
	value:String
	
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
	#if androidos
	public var minRange:Int;
	public var maxRange:Int;
	#end
	public var rightTrackImage:String;
	public var selectedLeftTrackImage:String;
	public var selectedRightTrackImage:String;
	public var selectedThumbImage:String;
	public var thumbImage:String;
	public var value:String;
}










