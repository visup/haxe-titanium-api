package titanium.mobile.ui;
import titanium.mobile.core.BaseView;
import titanium.mobile.core.Dispatcher;

/**
Switch class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.Switch-object.html

- namespace

Titanium.UI.Switch

- type

object

- subtype

view

- description

A Switch is created by the method `Titanium.UI.createSwitch`.

- since

0.8

- platforms

android, iphone, ipad

- properties

enabled[boolean]: boolean for the state of the switch
value[boolean]: boolean value of the switch where true is the switch is `on` and false the switch if `off`

style[int]: one of Ti.UI.Android.SWITCH_STYLE_CHECKBOX or Ti.UI.Android.SWITCH_STYLE_TOGGLEBUTTON (default). (Android only)
title[string]: text to display with checkbox. Used if style is Ti.UI.Android.SWITCH_STYLE_CHECKBOX (Android only)
titleOff[string]: text to display when value is `false`. used if style is Ti.UI.Android.SWITCH_STYLE_TOGGLEBUTTON (Android only)
titleOn[string]: text to display when value is `true`. used if style is Ti.UI.Android.SWITCH_STYLE_TOGGLEBUTTON (Android only)

- methods

- events

change: fired when the switch value is changed

- event : change

value[boolean]: the new value of the switch


- example : Simple Switch Example

The following is a simple example of a switch and receiving `change` events.

~~~
var basicSwitch = Titanium.UI.createSwitch({
	value:false
});
basicSwitch.addEventListener('change',function(e)
{
	Titanium.API.info('Basic Switch value = ' + e.value + ' act val ' + basicSwitch.value);
});
~~~

- notes

**/

typedef SwitchChangeEvent = 
{ > Event,
	value:Bool
}

@:native("Titanium.UI.Switch")
extern class Switch extends BaseView
{
	// static constructor
	public inline static function create(?params:Dynamic):Switch
		return titanium.mobile.UI.createSwitch(params)
		
	// events
	public static inline var CHANGE_EVENT = "change";
	
	// properties
	public var enabled:Bool;
	public var value:Bool;
	#if androidos
	public var style:String;
	public var title:String;
	public var titleOff:String;
	public var titleOn:String;
	#end
}










