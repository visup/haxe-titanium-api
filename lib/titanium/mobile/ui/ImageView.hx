package titanium.mobile.ui;
import titanium.mobile.core.BaseView;
import titanium.mobile.core.Blob;
import titanium.mobile.core.Dispatcher;

/**
ImageView class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.ImageView-object.html

- namespace

Titanium.UI.ImageView

- type

object

- subtype

view

- description

An Image View is used to display an image or a series of images in an animation. The Image View is created by the method `Titanium.UI.createImageView`.


- since

0.9

- platforms

android, iphone, ipad

- properties

defaultImage[string]: url to the default image to display while loading a remote image
preventDefaultImage[boolean]: boolean to indicate if the default image should be displaying while loading a remote image
duration[float]: amount of time in milliseconds to animate one cycle
repeatCount[int]: number of times to repeat the image animation
reverse[boolean]: boolean to indicate if the animation should happen in reverse (from last to first)
url[string]: url to the image to display (NOTE: this property is deprecated. use image instead)
images[array]: array of images (either as string url, Blob or File) to display in an animation
image[object]: image to display either as string url, Blob or File
width[float]: width of the image display
height[float]: height of the image display
paused[boolean]: readonly boolean to indicate if the animation is paused
animating[boolean]: readonly boolean to indicate if the animation is animating
canScale[boolean]: allow image to scale (Android)
enableZoomControls[boolean]: enable zoom controls on Android. Default is true for backward compatibility. (1.3.0)



- methods

start: start the image animation. this method only works if you set multiple images
pause: pause a started animation. 
stop: stop a started animation and reset the index to the first image
toBlob: return the image as a Blob object


- events

load: fired when either the initial image and/or all of the images in an animation are loaded
start: fired when the animation starts
change: fired for each frame changed during an animation
stop: fired when the animation stops

- event : load

state: either `url` to indicate the url property is loaded or `images` when all the images are loaded

- event : change

index: the index of the image frame being displayed

- example : Basic Image View

In this example, we create a simple image view:

~~~
var image = Titanium.UI.createImageView({url:'myimage.png'});
view.add(image);
~~~

- notes

If you specify a `width` and/or `height` property on the image, the image will be scaled to fit into this space if the image is larger.

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