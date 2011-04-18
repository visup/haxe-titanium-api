package titanium.mobile.ui.iphone;

/**
IPhoneProgressBarStyle class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.iPhone.ProgressBarStyle-object

- namespace

Titanium.UI.iPhone.ProgressBarStyle

- type

proxy

- description

A set of constants for the bar styles used on the `style` property of [[Titanium.UI.ProgressBar]].

- since

0.8

- platforms

iphone, ipad

- properties

PLAIN[int]: The standard progress-view style. Same as `DEFAULT`. 
DEFAULT[int]: he standard progress-view style. This is the default.
BAR[int]: The style of progress view that is used in a toolbar.

**/
#if iphoneos

@:native("Titanium.UI.iPhone.ProgressBarStyle")
extern class IPhoneProgressBarStyle
{
	// constants
	public static var BAR:Int;
	public static var DEFAULT:Int;
	public static var PLAIN:Int;
}
#end