package titanium.mobile.ui.iphone;

/**
IPhoneSystemIcon class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.iPhone.SystemIcon-object
**/
#if iphoneos

@:native("Titanium.UI.iPhone.SystemIcon")
extern class IPhoneSystemIcon
{
	// constants
	public static var BOOKMARKS:Int;
	public static var CONTACTS:Int;
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