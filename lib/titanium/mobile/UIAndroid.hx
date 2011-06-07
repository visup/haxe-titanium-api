package titanium.mobile;
import titanium.mobile.core.Dispatcher;

/**
UI.Android class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.Android-module

- namespace

Titanium.UI.Android

- type

module

- returns

object

- description

The Android specific UI capabilities. All properties, methods and events in this namespace will only work on Android related devices.

- since

1.0

- platforms

android

- properties

LINKIFY_ALL[int]: Convert all linkable text in the label
LINKIFY_PHONE_NUMBERS[int]: Convert all phone numbers to clickable links
LINKIFY_EMAIL_ADDRESSES[int]: Convert all e-mail addresses to clickable links
LINKIFY_MAP_LINKS[int]: Convert all street addresses to clickable links
LINKIFY_WEB_URLS[int]: Convert all web addresses to clickable links

LINKIFY_ALL[int]: Auto link all supported types.
LINKIFY_EMAIL_ADDRESSES[int]: Auto link email addresses.
LINKIFY_MAP_ADDRESSES[int]: Auto link physical addresses.
LINKIFY_PHONE_NUMBERS[int]: Auto link phone numbers.
LINKIFY_WEB_URLS[int]: Auto link web urls.

LINKIFY_ALL[int]: Auto link all supported types.
LINKIFY_EMAIL_ADDRESSES[int]: Auto link email addresses.
LINKIFY_MAP_ADDRESSES[int]: Auto link physical addresses.
LINKIFY_PHONE_NUMBERS[int]: Auto link phone numbers.
LINKIFY_WEB_URLS[int]: Auto link web urls.

SOFT_INPUT_ADJUST_PAN[int]: Pan contents when soft keyboard is visible. Use on Activity ("heavy weight window") to suggest how the virtual keyboard should treat the window contents. Must be specified in creation options.
SOFT_INPUT_ADJUST_RESIZE[int]: Resize contents when soft keyboard is visible. Use on Activity ("heavy weight window") to suggest how the virtual keyboard should treat the window contents. Must be specified in creation options.
SOFT_INPUT_ADJUST_UNSPECIFIED[int]: (default) If set in the AndroidManifest.xml use that setting. Otherwise, let the keyboard decided. Must be specified in creation options.

# (not exposed) SOFT_INPUT_STATE_ALWAYS_HIDDEN[int]: 
# (not exposed) SOFT_INPUT_STATE_ALWAYS_VISIBLE[int]: 
SOFT_INPUT_STATE_HIDDEN[int]: Attempt to hide the soft keyboard when control receives keyboard focus.
SOFT_INPUT_STATE_UNSPECIFIED[int]: Use OS default behavior for keyboard focus.
SOFT_INPUT_STATE_VISIBLE[int]: Attempt to show the soft keyboard when control receives keyboard focus.

SOFT_KEYBOARD_DEFAULT_ON_FOCUS[int]: Use Android default soft keyboard handling. Same as not specifying a value.
SOFT_KEYBOARD_HIDE_ON_FOCUS[int]: Request hide soft keyboard on focus. Note: OS can override request.
SOFT_KEYBOARD_SHOW_ON_FOCUS[int]: Request show soft keyboard on focus. Note: OS can override request.

SWITCH_STYLE_CHECKBOX[int]: Display Switch as an Android Checkbox
SWITCH_STYLE_TOGGLEBUTTON[int]: Display Switch as an Android Toggle Button (default)

- methods
hideSoftKeyboard: request that the soft keyboard hide. Note: It is not currently possible in the native Android API to detect that the keyboard is already visible. Note: It is not possible to globally show the keyboard at this point.

openPreferences: open Android native preferences UI activity. You need to place your preferences.xml file in the platform/android/res/xml/ folder of your project. Documentation on the file format may be found in the Android documentation http://developer.android.com/resources/samples/ApiDemos/res/xml/preferences.html

**/


#if androidos
@:native("Titanium.UI.Android")
extern class UIAndroid
{
	// static constants

	public static var LINKIFY_ALL:Int;
	public static var LINKIFY_EMAIL_ADDRESSES:Int;
	public static var LINKIFY_MAP_ADDRESSES:Int;
	public static var LINKIFY_PHONE_NUMBERS:Int;
	public static var LINKIFY_MAP_LINKS:Int;
	public static var LINKIFY_WEB_URLS:Int;
	public static var SOFT_INPUT_ADJUST_PAN:Int;
	public static var SOFT_INPUT_ADJUST_RESIZE:Int;
	public static var SOFT_INPUT_ADJUST_UNSPECIFIED:Int;
	public static var SOFT_INPUT_STATE_ALWAYS_HIDDEN:Int; 
	public static var SOFT_INPUT_STATE_ALWAYS_VISIBLE:Int; 
	public static var SOFT_INPUT_STATE_HIDDEN:Int;
	public static var SOFT_INPUT_STATE_UNSPECIFIED:Int;
	public static var SOFT_INPUT_STATE_VISIBLE:Int;
	public static var SOFT_KEYBOARD_DEFAULT_ON_FOCUS:Int;
	public static var SOFT_KEYBOARD_HIDE_ON_FOCUS:Int;
	public static var SOFT_KEYBOARD_SHOW_ON_FOCUS:Int;
	public static var SWITCH_STYLE_CHECKBOX:Int;
	public static var SWITCH_STYLE_TOGGLEBUTTON:Int;

	// static methods
	public static function addEventListener(name:String, eventListener:Dynamic->Void):Void;
	public static function fireEvent(name:String, event:Dynamic):Void;
	public static function removeEventListener(name:String, eventListener:Dynamic->Void):Void;
	
	// methods
	public function hideSoftKeyboard():Void;
	public function openPreferences():Void;
}
#end