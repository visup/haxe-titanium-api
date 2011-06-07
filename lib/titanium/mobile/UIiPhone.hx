package titanium.mobile;
import titanium.mobile.core.Dispatcher;
import titanium.mobile.ui.iphone.IPhoneNavigationGroup;

/**
UI.iPhone class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.iPhone-module

- namespace

Titanium.UI.iPhone

- type

module

- returns

object

- description

The iPhone/iPad specific UI capabilities.  All properties, methods and events in this namespace will only work on the Apple iPhone or iPad related devices.

- since

0.5

- platforms

iphone, ipad

- properties

statusBarHidden[boolean]: control the status bar visibility
statusBarStyle[int]: constant that controls the status bar color style
appBadge[string]: set the application badge for the application's icon in the springboard
appSupportsShakeToEdit[boolean]: control whether the shake to edit system wide capability is enabled

# 3.2 iphone/ipad

MODAL_TRANSITION_STYLE_COVER_VERTICAL[int]: When the window is presented, its view slides up from the bottom of the screen. On dismissal, the view slides back down. This is the default transition style. This is currently only available currently on iPhone/iPad.

MODAL_TRANSITION_STYLE_FLIP_HORIZONTAL[int]: When the window is presented, the current view initiates a horizontal 3D flip from right-to-left, resulting in the revealing of the new view as if it were on the back of the previous view. On dismissal, the flip occurs from left-to-right, returning to the original view. This is currently only available currently on iPhone/iPad.

MODAL_TRANSITION_STYLE_CROSS_DISSOLVE[int]: When the window is presented, the current view fades out while the new view fades in at the same time. On dismissal, a similar type of cross-fade is used to return to the original view. This is currently only available currently on iPhone/iPad.

MODAL_TRANSITION_STYLE_PARTIAL_CURL[int]: When the window is presented, one corner of the current view curls up to reveal the modal view underneath. On dismissal, the curled up page unfurls itself back on top of the modal view. A modal view presented using this transition is itself prevented from presenting any additional modal views. This transition style is supported only if the window is presenting a [[Titanium.UI.iPhone.MODAL_PRESENTATION_FULLSCREEN]] modal presentation style.  This is currently only available currently on iPhone/iPad and SDK 3.2+.

MODAL_PRESENTATION_FULLSCREEN[int]: The presented window covers the screen. This is currently only available currently on iPhone/iPad and SDK 3.2+.

MODAL_PRESENTATION_PAGESHEET[int]: The height of the presented window is set to the height of the screen and the view's width is set to the width of the screen in a portrait orientation. Any uncovered areas are dimmed to prevent the user from interacting with them. (In portrait orientations, this option is essentially the same as [[Titanium.UI.iPhone.MODAL_PRESENTATION_FULLSCREEN]]). This is currently only available currently on iPhone/iPad and SDK 3.2+.

MODAL_PRESENTATION_FORMSHEET[int]: The width and height of the presented window are smaller than those of the screen and the view is centered on the screen. If the device is in a landscape orientation and the keyboard is visible, the position of the view is adjusted upward so that the view remains visible. All uncovered areas are dimmed to prevent the user from interacting with them. This is currently only available currently on iPhone/iPad and SDK 3.2+.

MODAL_PRESENTATION_CURRENT_CONTEXT[int]: The view is presented using the same style as its parent window. This is currently only available currently on iPhone/iPad and SDK 3.2+.


- methods

hideStatusBar: convenience method to hide the status bar
showStatusBar: convenience method to show the status bar

- method : hideStatusBar

animated[boolean]: boolean to indicate if the action should be animated
animationStyle[int]: the animation style

- method : showStatusBar

animated[boolean]: boolean to indicate if the action should be animated
animationStyle[int]: the animation style


**/

#if iphoneos
@:native("Titanium.UI.iPhone")
extern class UIiPhone
{
	// static constants
	public static var MODAL_PRESENTATION_CURRENT_CONTEXT:Int;
	public static var MODAL_PRESENTATION_FORMSHEET:Int;
	public static var MODAL_PRESENTATION_FULLSCREEN:Int;
	public static var MODAL_PRESENTATION_PAGESHEET:Int;
	public static var MODAL_TRANSITION_STYLE_COVER_VERTICAL:Int;
	public static var MODAL_TRANSITION_STYLE_CROSS_DISSOLVE:Int;
	public static var MODAL_TRANSITION_STYLE_FLIP_HORIZONTAL:Int;
	public static var MODAL_TRANSITION_STYLE_PARTIAL_CURL:Int;
	
	// static properties
	public static var appBadge:String;
	public static var appSupportsShakeToEdit:Bool;
	public static var statusBarHidden:Bool;
	public static var statusBarStyle:Int;
	
	// static methods
	public static function addEventListener(name:String, eventListener:Dynamic->Void):Void;
	public static function fireEvent(name:String, event:Dynamic):Void;
	public static function removeEventListener(name:String, eventListener:Dynamic->Void):Void;
	
	public static function createNavigationGroup(?params:Dynamic):IPhoneNavigationGroup;
	public static function showStatusBar(animated:Bool, animationStyle:Int):Void;
	public static function hideStatusBar(animated:Bool, animationStyle:Int):Void;
}
#end