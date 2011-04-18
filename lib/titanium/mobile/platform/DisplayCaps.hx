package titanium.mobile.platform;

/**
DisplayCaps class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Platform.DisplayCaps-object

- namespace

Titanium.Platform.DisplayCaps

- type

proxy

- description

The Display Caps object returned by the `Titanium.Platform.displayCaps` property.

- since

0.8

- platforms

android, iphone, ipad

- properties

density[string]: returns the density property of the display device. 
dpi[int]: the DPI of the display device.
platformWidth[float]: the width of the device screen
platformHeight[float]: the height of the device screen

- notes

On iPhone, the `density` property will return `low` and the `dpi` property will return `160`. For iPad, the `density` property will return `high` and the `dpi` property will return `130`.  For Android, these values are device specific.

**/

@:native("Titanium.Platform.DisplayCaps")
extern class DisplayCaps
{
	// properties
	public var density:String;
	public var dpi:Int;
	public var platformWidth:Float;
	public var platformHeight:Float;
}