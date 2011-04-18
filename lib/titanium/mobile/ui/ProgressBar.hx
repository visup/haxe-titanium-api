package titanium.mobile.ui;
import titanium.mobile.core.BaseView;
import titanium.mobile.core.Dispatcher;
import titanium.mobile.core.Point;

/**
ProgressBar class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.ProgressBar-object.html

- namespace

Titanium.UI.ProgressBar

- type

object

- description

A Progress Bar is created by the method `Titanium.UI.createProgressBar`.

- since

0.8

- platforms

android, iphone, ipad

- properties

style[int]: the style of the progress bar
min[float]: the minimum value of the progress bar
max[float]: the maximum value of the progress bar
value[float]: the current value of the progress bar
font[object]: the font object for the progress bar text
color[string]: the color of the progress bar text
message[string]: the progress bar message

- methods

- events

- example : Simple Progress Bar

In this example we create a progress bar with the min value of `0` and the max value of `10` and the current value of `0`.  The change the value of the progress bar to cause it to move, we would set the `value` property to a value between `min` and `max`.

~~~
var pb=Titanium.UI.createProgressBar({
	width:250,
	min:0,
	max:10,
	value:0,
	color:'#fff',
	message:'Downloading 0 of 10',
	font:{fontSize:14, fontWeight:'bold'},
	style:Titanium.UI.iPhone.ProgressBarStyle.PLAIN,
});
~~~

- notes

For iPhone, progress bar styles are constants defined in [Titanium.UI.iPhone.ProgressBarStyle](Titanium.UI.iPhone.ProgressBarStyle).


**/

@:native("Titanium.UI.ProgressBar")
extern class ProgressBar extends BaseView
{
	// static constructor
	public inline static function create(?params:Dynamic):ProgressBar
		return titanium.mobile.UI.createProgressBar(params)
		
	// properties
	public var color:String;
	public var font:Dynamic;
	public var max:Float;
	public var message:String;
	public var min:Float;
	public var style:Int;
	public var value:Float;
}