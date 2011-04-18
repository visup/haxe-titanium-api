package titanium.mobile.ui.iphone;

/**
IPhoneSystemIcon class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.iPhone.SystemIcon-object

- namespace

Titanium.UI.iPhone.SystemIcon

- type

proxy

- description

A set of constants for the system icon styles that can be used on a tab group tab.

- since

0.8

- platforms

iphone, ipad

- properties

BOOKMARKS[int]: Bookmark style icon
CONTACTS[int]: Contacts style icon
DOWNLOADS[int]: Downloads style icon
FAVORITES[int]: Favorites style icon
FEATURED[int]: Featured style icon
HISTORY[int]: History style icon
MORE[int]: More style icon
MOST_RECENT[int]: Most recent style icon
MOST_VIEWED[int]: Most viewed style icon
RECENTS[int]: Recents style icon
SEARCH[int]: Search style icon
TOP_RATED[int]: Top rated style icon

**/
#if iphoneos

@:native("Titanium.UI.iPhone.SystemIcon")
extern class IPhoneSystemIcon
{
	// constants
	public static var BOOKMARKS:Int;
	public static var CONTACTS:Int;
	public static var DOWNLOADS:Int;
	public static var FAVORITES:Int;
	public static var FEATURED:Int;
	public static var HISTORY:Int;
	public static var MORE:Int;
	public static var MOST_RECENT:Int;
	public static var MOST_VIEWED:Int;
	public static var RECENTS:Int;
	public static var SEARCH:Int;
	public static var TOP_RATED:Int;
}
#end