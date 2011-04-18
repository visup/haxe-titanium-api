package titanium.mobile.ui.iphone;

/**
ScrollIndicatorStyle class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.iPhone.ScrollIndicatorStyle-object

- namespace

Titanium.UI.iPhone.ScrollIndicatorStyle

- type

proxy

- description

A set of constants for the styles available for [[Titanium.UI.ActivityIndicator]] objects.

- since

0.9

- platforms

iphone, ipad

- properties

DEFAULT[int]: The default style of scroll indicator, which is black with a white border. This style is good against any content background.
BLACK[int]: A style of indicator which is black smaller than the default style. This style is good against a white content background.
WHITE[int]: A style of indicator is white and smaller than the default style. This style is good against a black content background.

**/
#if iphoneos

@:native("Titanium.UI.iPhone.ScrollIndicatorStyle")
extern class IPhoneScrollIndicatorStyle
{
	// constants
	public static var BLACK:Int;
	public static var WHITE:Int;
	public static var DEFAULT:Int;
}
#end