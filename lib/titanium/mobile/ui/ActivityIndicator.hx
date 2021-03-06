package titanium.mobile.ui;
import titanium.mobile.core.Dispatcher;

/**
ActivityIndicator class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.ActivityIndicator-object.html

- namespace

Titanium.UI.ActivityIndicator

- type

object

- description

An Activity Indicator is created by the method `Titanium.UI.createActivityIndicator`.  An activity indicator can be used to show the progress of an operation in the UI to let the user know some action is taking place.

- since

0.8

- platforms

android, iphone, ipad

- properties

font[object]: the font object for the activity message label
color[string]: the color of the message label
message[string]: the activity message label text
style[int]: the style constant of the activity indicator

# 1.5
messageid[string]: the key in the locale file to use for the message property


- methods

show: call show to make the activity indicator visible and start spinning
hide: call hide to make the activity indicator hidden and stop spinning

- events

- example : Simple Activity Indicator

In this example, we create a basic activity indicator and start it.

~~~
var actInd = Titanium.UI.createActivityIndicator({
	height:50,
	width:10
});
actInd.show();
~~~

- notes

For iPhone, the style can be set from the constants [[Titanium.UI.iPhone.ActivityIndicatorStyle]].

**/

@:native("Titanium.UI.ActivityIndicator")
extern class ActivityIndicator extends Dispatcher
{
	// static constructor
	public inline static function create(?params:Dynamic):ActivityIndicator
		return titanium.mobile.UI.createActivityIndicator(params)
		
	// properties
	public var color:String;
	public var font:Dynamic;
	public var message:String;
	public var messageid:String;
	public var style:Int;
	
	// methods
	public function hide():Void;
	public function show():Void;
}