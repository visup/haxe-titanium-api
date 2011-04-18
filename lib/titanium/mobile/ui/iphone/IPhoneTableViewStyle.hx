package titanium.mobile.ui.iphone;

/**
IPhoneTableViewStyle class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.iPhone.TableViewStyle-object

- namespace

Titanium.UI.iPhone.TableViewStyle

- type

proxy

- description

A set of constants for the style that can be used for the button `style` property of [[Titanium.UI.TableView]].

- since

0.9

- platforms

iphone, ipad

- properties

PLAIN[int]: A plain table view. Any section headers or footers are displayed as inline separators and float when the table view is scrolled.
GROUPED[int]: A table view whose sections present distinct groups of rows. The section headers and footers do not float.

**/
#if iphoneos

@:native("Titanium.UI.iPhone.TableViewStyle")
extern class IPhoneTableViewStyle
{
	// constants
	public static var GROUPED:Int;
	public static var PLAIN:Int;
}
#end