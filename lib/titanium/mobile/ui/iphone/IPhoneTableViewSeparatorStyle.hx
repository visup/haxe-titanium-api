package titanium.mobile.ui.iphone;

/**
TableViewSeparatorStyle class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.iPhone.TableViewSeparatorStyle-object

- namespace

Titanium.UI.iPhone.TableViewSeparatorStyle

- type

proxy

- description

A set of constants for the style that can be used for the `separatorStyle` property of [[Titanium.UI.TableView]].

- since

0.9

- platforms

iphone, ipad

- properties

NONE[int]: The separator cell has no distinct style.
SINGLE_LINE[int]: The separator cell has a single line running across its width. This is the default value.

**/
#if iphoneos

@:native("Titanium.UI.iPhone.TableViewSeparatorStyle")
extern class IPhoneTableViewSeparatorStyle
{
	// constants
	public static var NONE:Int;
	public static var SINGLE_LINE:Int;
}
#end