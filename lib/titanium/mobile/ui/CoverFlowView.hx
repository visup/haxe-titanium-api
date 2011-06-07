package titanium.mobile.ui;
import titanium.mobile.core.BaseView;
import titanium.mobile.core.Dispatcher;

/**
CoverFlowView class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.CoverFlowView-object.html

- namespace

Titanium.UI.CoverFlowView

- type

object

- subtype

view

- description

The Cover Flow view is container for showing  animated, three dimensional images in a nice UI. The Cover Flow view is created by the method `Titanium.UI.createCoverFlowView`.

- since

0.8

- platforms

iphone, ipad

- properties

images[array]: array of images to display in the view
selected[int]: index to make selected

- methods

setImage: change an image for a index

- method : setImage

index[int]: index to change
image[object]: the image to set the index to. May be a TiBlob, TiFile, URL, or dictionary with 'image' (may be any of TiBlob, TiFile, URL), 'width', 'height' keys.  'auto' is not allowed, only exact sizes (although a size may be omitted to keep the image at that size).  If passed as a TiFile or URL, will perform a check for '@2x' on Retina displays

- events

change: fired when the user changes the image using a gesture
click: fired when the user clicks on an image

- event : change

index: the index of the image that is now visible
previous: the previous index of the image that was visible

- event : click

index: the index of the image that is now visible
previous: the previous index of the image that was visible

- example : Simple 3 image cover flow example

Create a rounded view.

~~~
var view = Titanium.UI.createCoverFlowView({
	images:['a.png','b.png','c.png'],
	backgroundColor:'#000'
});
window.add(view);
~~~

- notes


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
	public var images:Array<Dynamic>;
	public var selected:Int;
	
	// methods
	public function setImage(index:Int, image:Dynamic):Void;
}
#end