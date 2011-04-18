package titanium.mobile.ui.iphone;

/**
IPhoneTableViewScrollPosition class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.iPhone.TableViewScrollPosition-object

- namespace

Titanium.UI.iPhone.TableViewScrollPosition

- type

proxy

- description

A set of constants for the position value that can be used for the `position` property of [[Titanium.UI.TableView]] when invoking `scrollToIndex`.

- since

0.9

- platforms

iphone, ipad

- properties

NONE[int]:  The table view scrolls the row of interest to be fully visible with a minimum of movement. If the row is already fully visible, no scrolling occurs. For example, if the row is above the visible area, the behavior is identical to that specified by `TOP`. This is the default.
TOP[int]: The table view scrolls the row of interest to the top of the visible table view.
MIDDLE[int]: The table view scrolls the row of interest to the middle of the visible table view.
BOTTOM[int]: The table view scrolls the row of interest to the bottom of the visible table view.

**/
#if iphoneos

@:native("Titanium.UI.iPhone.TableViewScrollPosition")
extern class IPhoneTableViewScrollPosition
{
	// constants
	public static var BOTTOM:Int;
	public static var MIDDLE:Int;
	public static var NONE:Int;
	public static var TOP:Int;
}
#end