package titanium.mobile.ui.iphone;

/**
SystemButtonStyle class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.iPhone.SystemButtonStyle-object

- namespace

Titanium.UI.iPhone.SystemButtonStyle

- type

proxy

- description

A set of constants for the system button styles that can be used for the button `style` property.

- since

0.8

- platforms

iphone, ipad

- properties

DONE[int]: The style for a done button - for example, a button that completes some task and returns to the previous view. 
BORDERED[int]: A simple button style with a border.
PLAIN[int]: Glows when tapped. The default item style.

**/
#if iphoneos

@:native("Titanium.UI.iPhone.SystemButtonStyle")
extern class IPhoneSystemButtonStyle
{
	// constants
	public static var BORDERED:Int;
	public static var PLAIN:Int;
	public static var DONE:Int;
}
#end