package titanium.mobile.ui;
import titanium.mobile.core.Dispatcher;
import titanium.mobile.core.Point;

/**
Animation class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.Animation-object.html

- namespace

Titanium.UI.Animation

- type

object

- subtype

proxy

- description

The Animation object is used for specifying lower-level animation properties and more low-level control of events during an animation. The Animation is created by the method `Titanium.UI.createAnimation`.

- since

0.9

- platforms

android, iphone, ipad

- properties

zIndex[int]: value of the zIndex property to change during animation
left[float]: value of the left property to change during animation
right[float]: value of the right property to change during animation
top[float]: value of the top property to change during animation
bottom[float]: value of the bottom property to change during animation
width[float]: value of the width property to change during animation
height[float]: value of the height property to change during animation
center[object]: value of the center property to change during animation
backgroundColor[string]: value of the backgroundColor property to change during animation
color[string]: value of the color property to change during animation
opacity[float]: value of the opacity property to change during animation
opaque[boolean]: value of the opaque property to change during animation
visible[boolean]: value of the visible property to change during animation
transform[object]: value of the transform property to change during animation

duration[float]: the duration of time in milliseconds to perform the animation
curve[int]: the curve of the animation
repeat[int]: the number of times the animation should be performed
autoreverse[boolean]: the property specifies if the animation should be replayed in reverse upon completion
delay[float]: the duration of time in milliseconds before starting the animation
transition[int]: during a transition animation, this is the constant to the type of transition to use

- methods

- events

start: fired when the animation starts
complete: fired when the animation completes

- example : Animation applied to a view

Create a simple animation and apply it to the view.  In this example, the view will animate from red to black to orange over 2 seconds.

~~~
var view = Titanium.UI.createView({
   backgroundColor:'red'
});
var animation = Titanium.UI.createAnimation();
animation.backgroundColor = 'black';
animation.duration = 1000;
animation.addEventListener('complete',function()
{
   animation.removeEventListener('complete',this);
   animation.backgroundColor = 'orange';
   view.animate(animation);
});
view.animate(animation);
~~~

- notes

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