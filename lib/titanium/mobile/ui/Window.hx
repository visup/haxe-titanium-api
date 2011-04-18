package titanium.mobile.ui;
import titanium.mobile.core.BaseView;
import titanium.mobile.core.Blob;
import titanium.mobile.core.Dispatcher;

/**
Window class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.Window-object.html

- namespace

Titanium.UI.Window

- type

object

- subtype

view

- description

The Window is an empty drawing surface or container. The Window is created by the method `Titanium.UI.createWindow`. Unlike [Views](Titanium.UI.View-object), Windows can be opened and closed and can have special display properties such as `fullscreen` or `modal`.

- since

0.9

- platforms

android, iphone, ipad

- properties

exitOnClose[boolean]: (Android only.) Boolean indicates if the application should exit when the Android back button is pressed while the window is being shown.  You can only set this as a createWindow({...}) option.  Setting it after window creation will no effect.
fullscreen[boolean]: boolean indicates if the window is fullscreen (no device chrome)
modal[boolean]: boolean to indicate if the window should be opened modal in front of other windows
url[string]: url to a JavaScript file with the windows instructions. this window will create a new JavaScript sub-context that will run in its own thread and global variable space.
navBarHidden[boolean]: boolean to indicate if the nav bar should be hidden. this is only valid when the window is a child of a tab.
orientationModes[array]: array of orientation mode constants defined in [Titanium.UI]
tabBarHidden[boolean]: boolean to indicate if the tab bar should be hidden. this is only valid when the window is a child of a tab.
title[string]: title of the window.
titlePrompt[string]: title prompt for the window. only available in iPhone.
titleImage[string]: url to a image that show in the title area. only available in iPhone.
titleControl[object]: view to show in the title area. only available in iPhone.
barColor[string]: web named color or hex value for the color of the nav bar. only available in iPhone.
barImage[string]: url to a local image to place as the background of the nav bar. only available in iPhone.
translucent[boolean]: boolean to indicate if the nav bar is translucent. only available in iPhone.
leftNavButton[object]: view to show in the left nav bar area. only available in iPhone.
rightNavButton[object]: view to show in the right nav bar area. only available in iPhone.
toolbar[array]: array of button objects to show in the toolbar of the window. only available in iPhone. this is only valid when the window is a child of a tab.
backButtonTitleImage[string]: url to an image to show as the back button.  only available in iPhone. this is only valid when the window is a child of a tab.
backButtonTitle[string]: title for the back button. only available in iPhone. this is only valid when the window is a child of a tab.
navBarHidden[boolean]: for modal windows, hide the nav bar (true) or show the nav bar (false, default).

# 1.5
titleid[string]: the key in the locale file to use for the title property
titlepromptid[string]: the key in the locale file to use for the titlePrompt property
softInputMode[int]: One of Ti.UI.Android.SOFT_INPUT_ADJUST_PAN, Ti.UI.Android.SOFT_INPUT_ADJUST_RESIZE, or Ti.UI.Android.SOFT_INPUT_ADJUST_UNSPECIFIED. Note: MUST be passed in the creation options. (Android Only) [Android Doc: Window.setSoftInputMode](http://developer.android.com/reference/android/view/Window.html#setSoftInputMode(int))

- methods

open: open the window
close: close the window

- method : open

options[object]: open the window with optional animation or display properties

- method : close

options[object]: close the window with optional animation or display properties

- events

open: fired when the window is opened
close: fired when the window is closed
focus: fired when the window gains focus
blur: fired when the window loses focus
android:back: fired when the back button is released. Setting a listener is interpreted as the handler for that button. To restore default behavior, remove the listener. It is recommended that you only have one handler per heavyweight window (Android Only)
android:camera:  fired when the camera button is released. Setting a listener is interpreted as the handler for that button. To restore default behavior, remove the listener. It is recommended that you only have one handler per heavyweight window (Android Only)
android:focus:  fired when the camera button is half-pressed then released. Setting a listener is interpreted as the handler for that button. To restore default behavior, remove the listener. It is recommended that you only have one handler per heavyweight window (Android Only)
android:search: fired when the search button is released. Setting a listener is interpreted as the handler for that button. To restore default behavior, remove the listener. It is recommended that you only have one handler per heavyweight window (Android Only)
android:volup: fired when the volume up button is released. Setting a listener is interpreted as the handler for that button. To restore default behavior, remove the listener. It is recommended that you only have one handler per heavyweight window (Android Only)
android:voldown:  fired when the volume down button is released. Setting a listener is interpreted as the handler for that button. To restore default behavior, remove the listener. It is recommended that you only have one handler per heavyweight window (Android Only)


- example : Full Screen Window example

Create a fullscreen window with a red background.

~~~
var window = Titanium.UI.createWindow({
   backgroundColor:'red'
});
window.open({fullscreen:true});
~~~


- notes

### Sub-contexts

Windows can be loaded from another Javascript file by specifying the property `url` and reference a file relative to your application `Resources` folder.  It's important to note that Titanium will refuse to load Javascript files from a remote URL. Loading remote Javascript from a URL and providing it with the full capabilities of the Titanium API would be very dangerous. 

When you Window is loaded from a separate Javascript file, the code will be executed in a separate Javascript context (called a "sub-context") than your `app.js` global context.  It will also execute in its own separate thread.  

The special property `Titanium.UI.currentWindow` is available inside a sub-context that points to the Javascript instance by reference in the global context.  


### Passing Data

By default, sub-context variables cannot access Javascript references in the global context.  However, the global context can allow its sub-contexts the ability to have access to properties and functions in the global context by reference assignment.  An example best illustrates how to do this.

In `app.js`, you could define a function and a property.

~~~
var a = 1;
function b()
{
	return "hello";
}
~~~

Now, you can create a new Window - let's call it `foo.js` - in your `app.js`.

~~~
var w = Titanium.UI.createWindow({
	url:'foo.js'
});
~~~

To _give_ your new window access to both `a` and `b`, you would need to assign them to the \
new window reference `w`.

~~~
w.a = a;
w.b = b;
~~~

Of course, you could give them a different name than their original names.  However, what name you give them in your `app.js` is how you will reference them in `foo.js`.  Now, let's look at the code for `foo.js`.

~~~
alert("b() = "+Titanium.UI.currentWindow.b());
~~~

In the above code, the `foo.js` will execute the function `b` in the global context and return the result.  Since `b` is a reference (vs. a copy by value), any changes made to these Javascript references will be immediately available in all sub-contexts.

### Events

If you'd like to send events to a window from the global context and vice versa, you could use the built-in event mechanism.  For example, you could define a custom event called `foo`. The window could listen for this event and then respond with some action.  For example, in your sub-context you might define:

~~~
Titanium.UI.currentWindow.addEventListener('foo',function(e)
{
	Titanium.API.info("foo event received = "+JSON.stringify(e));
});
~~~

You could now fire the event from `app.js` like this:

~~~
var window = Titanium.UI.createWindow({
	url:'bar.js'
});
window.open();
window.fireEvent('foo',{a:'b'});
~~~

It's worth noting two important limitations of the example above:

* You must open the window before you can send events to it. You also may have to fire the event after a specified amount of time if you intend to immediately send data to the window.  This is because windows are opened asynchronously and on a separate thread than the caller thread.
* You can only send JSON-serializable data in a fireEvent.  If you attempt to send objects that have function references, they will be null.


### Animations

Windows can be animated like any normal [View](Titanium.UI.View).  To transition between 2 windows, you can use the `transition` property on an animation.  For example, to flip right-to-left between two windows, you could do the following:

~~~
var window2 = Titanium.UI.createWindow({url:'foo.js'});
var t = Ti.UI.iPhone.AnimationStyle.FLIP_FROM_LEFT;
window1.animate({view:window2,transition:t});
~~~

In the above example, the `window2` view will be animated from the right-to-left over `window1`.


Windows can be opened or closed with animation.  In the example below, we create a window that will open from small to large with a bounce effect.  This is done by applying a transformation at initialization time that scales the original size of the window to 0.  When the window is opened, a new 2D transformation is applied that will scale the window size from 0 to 110% of it's original size and then, after 1/20th of a second, will scale it back to it's original size at 100%. This gives the bounce effect during animation. 

~~~
var t = Titanium.UI.create2DMatrix().scale(0);

// create a window with the initial transform scaled to 0
var w = Titanium.UI.createWindow({
	backgroundColor:'#336699',
	borderWidth:8,
	borderColor:'#999',
	height:400,
	width:300,
	borderRadius:10,
	opacity:0.92,
	transform:t
});

// create first transform to go beyond normal size
var t1 = Titanium.UI.create2DMatrix().scale(1.1);

var a = Titanium.UI.createAnimation();
a.transform = t1;
a.duration = 200;

// when this animation completes, scale to normal size
a.addEventListener('complete', function()
{
    // we can use the identity transform to take it back to it's real size
	var t2 = Titanium.UI.create2DMatrix();
	w.animate({transform:t2, duration:200});
});
~~~


### iPad Modal Windows

For iPad, iPhone SDK 3.2 and Titanium 1.2 introduced several new ways of presenting modal windows.  

The example below is a modal window.

![modal](http://img.skitch.com/20100406-bqb3f8pb6e4ger7wkcdcw5mbar.png)

You can create this type of modal window on iPad with the following code snippet:

~~~
var window = Titanium.UI.createWindow();
window.open({
	modal:true,
	modalTransitionStyle: Ti.UI.iPhone.MODAL_TRANSITION_STYLE_FLIP_HORIZONTAL,
	modalStyle: Ti.UI.iPhone.MODAL_PRESENTATION_FORMSHEET
})
~~~

### Android "root" Windows

In Android, you may wish to specify that a window which you create (such as the first window) should be considered the root window and that the application should exit when the back button is pressed from that window.  This is particularly useful if your application is not using a Tab Group and therefore the splash screen window is appearing whenever you press the back button from your lowest window on the stack.

To indicate that a particular window should cause an application to exit when the back button is pressed, pass `exitOnClose: true` as one of the creation arguments, as shown here:

~~~
var win = Titanium.UI.createWindow({
	title: 'My Root Window',
	exitOnClose: true
});
~~~

**/


typedef WindowBlurEvent = 
{ > Event,
}

typedef WindowCloseEvent = 
{ > Event,
}

typedef WindowFocusEvent = 
{ > Event,
}

typedef WindowOpenEvent = 
{ > Event,
}

@:native("Titanium.UI.Window")
extern class Window extends BaseView
{
	// static constructor
	public inline static function create(?params:Dynamic):Window
		return titanium.mobile.UI.createWindow(params)
	
	// events
	public inline static var BLUR_EVENT = "	blur";
	public inline static var CLOSE_EVENT = "close";
	public inline static var FOCUS_EVENT = "focus";
	public inline static var OPEN_EVENT = "open";
	
	// properties
	public var backButtonTitleImage:String;
	public var barColor:String;
	public var barImage:String;
	public var exitOnClose:Bool;
	public var fullscreen:Bool;
	public var modal:Bool;
	public var navBarHidden:Bool;
	public var tabBarHidden:Bool;
	public var orientationModes:Array<Int>;
	public var title:String;
	public var url:String;
	#if iphoneos
	public var leftNavButton:Dynamic;
	public var rightNavButton:Dynamic;
	public var titleControl:Dynamic;
	public var titleImage:String;
	public var titlePrompt:String;
	public var toolbar:Array<Button>;
	public var translucent:Bool;
	#end
	
	// methods
	public function close(?options:Dynamic):Void;
	public function open(?options:Dynamic):Void;
}