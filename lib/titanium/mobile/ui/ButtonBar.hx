package titanium.mobile.ui;
import titanium.mobile.core.BaseView;
import titanium.mobile.core.Dispatcher;

/**
ButtonBar class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.ButtonBar-object.html

- namespace

Titanium.UI.ButtonBar

- type

object

- subtype

view

- description

A Button Bar is created by the method `Titanium.UI.createButtonBar`.

- since

0.8

- platforms

iphone, ipad

- properties

backgroundColor[string]: the background color of the button bar
index[int]: the selected index
style[int]: the style of the button bar
labels[array]: the array of labels for the button bar. each object should have the properties `title`, `image`, `width` and `enabled`.

- methods

- events

click: fired when a button on the button bar is clicked

- event : click

index[int]: the index of the button that was clicked

- example : Simple 3 button button bar

~~~
var bb1 = Titanium.UI.createButtonBar({
	labels:['One', 'Two', 'Three'],
	backgroundColor:'#336699',
	top:50,
	style:Titanium.UI.iPhone.SystemButtonStyle.BAR,
	height:25,
	width:200
});
win.add(bb1);
~~~

- notes

For iPhone, the style constants are available in the constants defined in [Titanium.UI.iPhone.SystemButtonStyle](Titanium.UI.iPhone.SystemButtonStyle).

**/
#if iphoneos
typedef ButtonBarClickEvent = 
{ > ClickEvent,
	index:Int
}

@:native("Titanium.UI.ButtonBar")
extern class ButtonBar extends BaseView
{
	// static constructor
	public inline static function create(?params:Dynamic):ButtonBar
		return titanium.mobile.UI.createButtonBar(params)
	
	// events
	public inline static var CLICK_EVENT = "click";
	
	// properties
	public var index:Int;
	public var labels:Array<Dynamic>;
	public var style:Int;
}
#end