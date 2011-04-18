package titanium.mobile.ui.iphone;

/**
IPhoneAnimationStyle class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.iPhone.AnimationStyle-object

- namespace

Titanium.UI.iPhone.AnimationStyle

- type

proxy

- description

A set of constants for the Animation Styles used for transitions.

- since

0.9

- platforms

iphone, ipad

- properties

NONE[int]: No animation
CURL_UP[int]: Curl upwards during a transition animation
CURL_DOWN[int]: Curl downwards during a transition animation
FLIP_FROM_LEFT[int]: Flip from left to right during a transition animation
FLIP_FROM_RIGHT[int]: Flip from right to left during a transition animation

**/
#if iphoneos

@:native("Titanium.UI.iPhone.AnimationStyle")
extern class IPhoneAnimationStyle
{
	// constants
	public static var CURL_DOWN:Int;
	public static var CURL_UP:Int;
	public static var FLIP_FROM_LEFT:Int;
	public static var FLIP_FROM_RIGHT:Int;
	public static var NONE:Int;
}
#end