package titanium.mobile.ui.iphone;

/**
IPhoneActivityIndicatorStyle class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.iPhone.ActivityIndicatorStyle-object

- namespace

Titanium.UI.iPhone.ActivityIndicatorStyle

- type

proxy

- description

A set of constants for the styles available for [[Titanium.UI.ActivityIndicator]] objects.

- since

0.9

- platforms

iphone, ipad

- properties

PLAIN[int]: The standard white style of indicator (the default).
BIG[int]: The large white style of indicator.
DARK[int]: The standard gray style of indicator.

**/
#if iphoneos

@:native("Titanium.UI.iPhone.ActivityIndicatorStyle")
extern class IPhoneActivityIndicatorStyle
{
	// constants
	public static var BIG:Int;
	public static var DARK:Int;
	public static var PLAIN:Int;
}
#end