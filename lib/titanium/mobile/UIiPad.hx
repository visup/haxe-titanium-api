package titanium.mobile;
import titanium.mobile.core.Dispatcher;
import titanium.mobile.ui.ipad.IPadPopover;
import titanium.mobile.ui.ipad.IPadSplitWindow;

/**
UI.iPad class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.iPad-module

- namespace

Titanium.UI.iPad

- type

module

- returns

object

- description

The iPad specific UI capabilities.  All properties, methods and events in this namespace will only work on the Apple iPad related devices.  To develop for iPad, you will need the Apple iPhone SDK 3.2 or later and Titanium Mobile SDK 1.2 or later. 

For iPad UI programming guidelines, please review the [iPad Human Interface Guidelines](http://developer.apple.com/iphone/library/documentation/General/Conceptual/iPadHIG/Introduction/Introduction.html). 

- since

1.2

- platforms

ipad

- properties

POPOVER_ARROW_DIRECTION_UP[int]: An arrow that points upward.
POPOVER_ARROW_DIRECTION_DOWN[int]: An arrow that points downward.
POPOVER_ARROW_DIRECTION_LEFT[int]: An arrow that points toward the left.
POPOVER_ARROW_DIRECTION_RIGHT[int]: An arrow that points toward the right.
POPOVER_ARROW_DIRECTION_ANY[int]: An arrow that points in any direction.
POPOVER_ARROW_DIRECTION_UNKNOWN[int]: The status of the arrow is currently unknown.

- methods

createPopover: create a [[Titanium.UI.iPad.Popover]] dialog
createSplitWindow: create a [[Titanium.UI.iPad.SplitWindow]] window

- method : createPopover, object

- method : createSplitWindow, object


- notes

### Custom Fonts

The iPad supports the ability to embed your own fonts in your iPad application. To add your own fonts, you should add the

**/
#if iphoneos
@:native("Titanium.UI.iPad")
extern class UIiPad
{
	// static constants
	public static var POPOVER_ARROW_DIRECTION_UP:Int;
	public static var POPOVER_ARROW_DIRECTION_DOWN:Int;
	public static var POPOVER_ARROW_DIRECTION_LEFT:Int;
	public static var POPOVER_ARROW_DIRECTION_RIGHT:Int;
	public static var POPOVER_ARROW_DIRECTION_ANY:Int;
	public static var POPOVER_ARROW_DIRECTION_UNKNOWN:Int;

	// static methods
	public static function addEventListener(name:String, eventListener:Dynamic->Void):Void;
	public static function fireEvent(name:String, event:Dynamic):Void;
	public static function removeEventListener(name:String, eventListener:Dynamic->Void):Void;
	
	public static function createPopover(?params:Dynamic):IPadPopover;
	public static function createSplitWindow(?params:Dynamic):IPadSplitWindow;
}
#end