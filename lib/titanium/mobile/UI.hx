package titanium.mobile;
import titanium.mobile.core.Dispatcher;
import titanium.mobile.ui.Matrix2D;
import titanium.mobile.ui.Matrix3D;
import titanium.mobile.ui.ActivityIndicator;
import titanium.mobile.ui.AlertDialog;
import titanium.mobile.ui.Animation;
import titanium.mobile.ui.Button;
import titanium.mobile.ui.ButtonBar;
import titanium.mobile.ui.CoverFlowView;
import titanium.mobile.ui.DashboardItem;
import titanium.mobile.ui.DashboardView;
import titanium.mobile.ui.EmailDialog;
import titanium.mobile.ui.ImageView;
import titanium.mobile.ui.Label;
import titanium.mobile.ui.OptionDialog;
import titanium.mobile.ui.Picker;
import titanium.mobile.ui.PickerColumn;
import titanium.mobile.ui.PickerRow;
import titanium.mobile.ui.ProgressBar;
import titanium.mobile.ui.ScrollableView;
import titanium.mobile.ui.ScrollView;
import titanium.mobile.ui.SearchBar;
import titanium.mobile.ui.Slider;
import titanium.mobile.ui.Switch;
import titanium.mobile.ui.Tab;
import titanium.mobile.ui.TabbedBar;
import titanium.mobile.ui.TabGroup;
import titanium.mobile.ui.TableView;
import titanium.mobile.ui.TableViewRow;
import titanium.mobile.ui.TableViewSection;
import titanium.mobile.ui.TextArea;
import titanium.mobile.ui.TextField;
import titanium.mobile.ui.Toolbar;
import titanium.mobile.ui.View;
import titanium.mobile.ui.WebView;
import titanium.mobile.ui.Window;

/**
UI class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI-module

- namespace

Titanium.UI

- type

module

- description

The main `Titanium.UI` module.  The UI module is responsible for native user-interface components and interaction inside Titanium.  The goal of the UI module is to provide a native experience along with native performance by compiling Javascript code into their native counterparts as part of the build process. 

- since

0.4

- platforms

android, iphone, ipad

- properties

ANIMATION_CURVE_EASE_IN_OUT[int]: animation curve constant
ANIMATION_CURVE_EASE_IN[int]: animation curve constant
ANIMATION_CURVE_EASE_OUT[int]: animation curve constant
ANIMATION_CURVE_LINEAR[int]: animation curve constant

TEXT_ALIGNMENT_LEFT[int]: text align constant
TEXT_ALIGNMENT_CENTER[int]: text align constant
TEXT_ALIGNMENT_RIGHT[int]: text align constant

TEXT_VERTICAL_ALIGNMENT_TOP[int]: text vertical align constant
TEXT_VERTICAL_ALIGNMENT_CENTER[int]: text vertical align constant
TEXT_VERTICAL_ALIGNMENT_BOTTOM[int]: text vertical align constant

RETURNKEY_DEFAULT[int]: textfield return key constant
RETURNKEY_GO[int]: textfield return key constant
RETURNKEY_GOOGLE[int]: textfield return key constant
RETURNKEY_JOIN[int]: textfield return key constant
RETURNKEY_NEXT[int]: textfield return key constant
RETURNKEY_ROUTE[int]: textfield return key constant
RETURNKEY_SEARCH[int]: textfield return key constant
RETURNKEY_SEND[int]: textfield return key constant
RETURNKEY_YAHOO[int]: textfield return key constant
RETURNKEY_DONE[int]: textfield return key constant
RETURNKEY_EMERGENCY_CALL[int]: textfield return key constant

KEYBOARD_DEFAULT[int]: textfield keyboard constant
KEYBOARD_ASCII[int]: textfield keyboard constant
KEYBOARD_NUMBERS_PUNCTUATION[int]: textfield keyboard constant
KEYBOARD_URL[int]: textfield keyboard constant
KEYBOARD_NUMBER_PAD[int]: textfield keyboard constant
KEYBOARD_PHONE_PAD[int]: textfield keyboard constant
KEYBOARD_NAMEPHONE_PAD[int]: textfield keyboard constant
KEYBOARD_EMAIL[int]: textfield keyboard constant

KEYBOARD_APPEARANCE_DEFAULT[int]: textfield keyboard appearance constant
KEYBOARD_APPEARANCE_ALERT[int]: textfield keyboard appearance constant

TEXT_AUTOCAPITALIZATION_NONE[int]: text capitalization constant
TEXT_AUTOCAPITALIZATION_WORDS[int]: text capitalization constant
TEXT_AUTOCAPITALIZATION_SENTENCES[int]: text capitalization constant
TEXT_AUTOCAPITALIZATION_ALL[int]: text capitalization constant

INPUT_BUTTONMODE_NEVER[int]: input button mode constant
INPUT_BUTTONMODE_ALWAYS[int]: input button mode constant
INPUT_BUTTONMODE_ONFOCUS[int]: input button mode constant
INPUT_BUTTONMODE_ONBLUR[int]: input button mode constant

INPUT_BORDERSTYLE_NONE[int]: input border style constant
INPUT_BORDERSTYLE_LINE[int]: input border style constant
INPUT_BORDERSTYLE_BEZEL[int]: input border style constant
INPUT_BORDERSTYLE_ROUNDED[int]: input border style constant

PORTRAIT[int]: orientation (home button on bottom) constant
LANDSCAPE_LEFT[int]: orientation (home button on left) constant
LANDSCAPE_RIGHT[int]: orientation (home button on right) constant
UPSIDE_PORTRAIT[int]: orientation (home button on top) constant
UNKNOWN[int]: orientation constant
FACE_UP[int]: orientation constant
FACE_DOWN[int]: orientation constant

PICKER_TYPE_PLAIN[int]: picker type constant
PICKER_TYPE_DATE_AND_TIME[int]: picker type constant
PICKER_TYPE_DATE[int]: picker type constant
PICKER_TYPE_TIME[int]: picker type constant
PICKER_TYPE_COUNT_DOWN_TIMER[int]: picker type constant

BLEND_MODE_NORMAL[int]: image mode constant
BLEND_MODE_MULTIPLY[int]: image mode constant
BLEND_MODE_SCREEN[int]: image mode constant
BLEND_MODE_OVERLAY[int]: image mode constant
BLEND_MODE_DARKEN[int]: image mode constant
BLEND_MODE_LIGHTEN[int]: image mode constant
BLEND_MODE_COLOR_DODGE[int]: image mode constant
BLEND_MODE_COLOR_BURN[int]: image mode constant
BLEND_MODE_SOFT_LIGHT[int]: image mode constant
BLEND_MODE_HARD_LIGHT[int]: image mode constant
BLEND_MODE_DIFFERENCE[int]: image mode constant
BLEND_MODE_EXCLUSION[int]: image mode constant
BLEND_MODE_HUE[int]: image mode constant
BLEND_MODE_SATURATION[int]: image mode constant
BLEND_MODE_COLOR[int]: image mode constant
BLEND_MODE_LUMINOSITY[int]: image mode constant
BLEND_MODE_CLEAR[int]: image mode constant
BLEND_MODE_COPY[int]: image mode constant
BLEND_MODE_SOURCE_IN[int]: image mode constant
BLEND_MODE_SOURCE_OUT[int]: image mode constant
BLEND_MODE_SOURCE_ATOP[int]: image mode constant
BLEND_MODE_DESTINATION_OVER[int]: image mode constant
BLEND_MODE_DESTINATION_IN[int]: image mode constant
BLEND_MODE_DESTINATION_OUT[int]: image mode constant
BLEND_MODE_DESTINATION_ATOP[int]: image mode constant
BLEND_MODE_XOR[int]: image mode constant
BLEND_MODE_PLUS_DARKER[int]: image mode constant
BLEND_MODE_PLUS_LIGHTER[int]: image mode constant

NOTIFICATION_DURATION_LONG[int]: Duration of the notification
NOTIFICATION_DURATION_SHORT[int]: Duration of the notification

- notes

### Design

The UI module is broken down into 3 major area:

* **Views** - [Views](Titanium.UI.View) are containers that host visual elements such as controls or other views.  Views can have their properties customized, such as their border color and radius, can fire events such as swipe events or touches, and can optionally contain a hierarchy or other views as children. In Titanium, most views are specialized to perform both a visual function and set of interaction behaviors such as [Table View](Titanium.UI.TableView) or [Coverflow View](Titanium.UI.CoverFlowView).  Views are always named with the suffix `View`.
* **Controls** - controls, or sometimes referred as widgets, are visual elements such as [sliders](Titanium.UI.Slider), [buttons](Titanium.UI.Button) and [switches](Titanium.UI.Switch). They provide a visual element which has a defined behavior and typical have special configuration and special events.  Controls themselves are views and also inherit a views properties, functions and events.
* **Windows** - [Windows](Titanium.UI.Window) are typically top-level visual constructs that are the main part of your interface. An application will always have at least one window and windows can take different shapes and sizes, can have display and interaction properties such as fullscreen or modal and can be customized, such as changing their opacity or background color. Windows themselves are views and also inherit a views properties, functions and events. There are a few specialization of Windows such as a [Tab Group](Titanium.UI.TabGroup) which offer additional behavior beyond the basic Window.


Titanium uses the [Factory Pattern](http://en.wikipedia.org/wiki/Factory_method_pattern) for constructing objects and a general naming pattern for APIs.  For example, to construct a [Alert Dialog](Titanium.UI.AlertDialog), you call the method `Titanium.UI.createAlertDialog`.  To create a [TextArea](Titanium.UI.TextArea), you call the method `Titanium.UI.createTextArea`.  Once an object is created, it will be available until it goes out of scope.

### Optimizations

UI objects are optimized by Titanium to not be realized into the drawing context and placed into the device UI surface until needed.  That means that you can create UI objects, set their properties and add them to their hierarchy without much worry about memory or performance.  When the native drawing surface needs to render a specific view or control, Titanium will automatically create the view as needed.  Additionally, Titanium is optimized to also release memory once the view is no longer needed, on screen or in low memory situations.  However, it's a good idea to help Titanium along in certain cases where you are no longer using objects.  For example, you should call `close` on a [Window](Titanium.UI.Window) instance when you are no longer using it.  You can safely call `open` on the [Window](Titanium.UI.Window) again to re-open it.  

### Global Context and Threading

Be careful with the objects that are created in `app.js` but only used once.  Since the `app.js` context is global and generally is not garbage collected until the application exits, you should think about the design of your application as it relates to this fact.  [Window](Titanium.UI.Window) objects that are opened up with the `url` property to another Javascript file contain a nice way to decompose your application into smaller units.  The other benefit is that when a [Window](Titanium.UI.Window) is closed, its resources can be immediately cleaned up, saving resources such as memory and CPU.  Additionally, [Window](Titanium.UI.Window) objects run in a separate Javascript context and Thread. While all UI processing is done on the main UI thread, other processing inside a Window or the `app.js` that does not have UI interaction will run in its own thread.


### Portability

Titanium components are designed to be portable across as many platforms as it supports.  However, there are cases where a device either does not support a specific feature or capability or where it support additional functionality.  For cases where the device OS supports capabilities that other platforms do not, we attempt to place those capabilities in a separate namespace, such as [Titanium.UI.iPhone](Titanium.UI.iPhone). However, in cases where the control is in a common namespace and support additional features, we continue to place that functionality directly on the object.


**/

@:native("Titanium.UI")
extern class UI
{
	// static constants
	public static var ANIMATION_CURVE_EASE_IN:Int;
	public static var ANIMATION_CURVE_EASE_IN_OUT:Int;
	public static var ANIMATION_CURVE_EASE_OUT:Int;
	public static var ANIMATION_CURVE_LINEAR:Int;
	public static var BLEND_MODE_CLEAR:Int;
	public static var BLEND_MODE_COLOR:Int;
	public static var BLEND_MODE_COLOR_BURN:Int;
	public static var BLEND_MODE_COLOR_DODGE:Int;
	public static var BLEND_MODE_COPY:Int;
	public static var BLEND_MODE_DARKEN:Int;
	public static var BLEND_MODE_DESTINATION_ATOP:Int;
	public static var BLEND_MODE_DESTINATION_IN:Int;
	public static var BLEND_MODE_DESTINATION_OUT:Int;
	public static var BLEND_MODE_DESTINATION_OVER:Int;
	public static var BLEND_MODE_DIFFERENCE:Int;
	public static var BLEND_MODE_EXCLUSION:Int;
	public static var BLEND_MODE_HARD_LIGHT:Int;
	public static var BLEND_MODE_HUE:Int;
	public static var BLEND_MODE_LIGHTEN:Int;
	public static var BLEND_MODE_LUMINOSITY:Int;
	public static var BLEND_MODE_MULTIPLY:Int;
	public static var BLEND_MODE_NORMAL:Int;
	public static var BLEND_MODE_OVERLAY:Int;
	public static var BLEND_MODE_PLUS_DARKER:Int;
	public static var BLEND_MODE_SATURATION:Int;
	public static var BLEND_MODE_SCREEN:Int;
	public static var BLEND_MODE_SOFT_LIGHT:Int;
	public static var BLEND_MODE_SOURCE_ATOP:Int;
	public static var BLEND_MODE_SOURCE_IN:Int;
	public static var BLEND_MODE_SOURCE_OUT:Int;
	public static var BLEND_MODE_XOR:Int;
	public static var FACE_DOWN:Int;
	public static var FACE_UP:Int;
	public static var INPUT_BORDERSTYLE_BEZEL:Int;
	public static var INPUT_BORDERSTYLE_LINE:Int;
	public static var INPUT_BORDERSTYLE_NONE:Int;
	public static var INPUT_BORDERSTYLE_ROUNDED:Int;
	public static var INPUT_BUTTONMODE_ALWAYS:Int;
	public static var INPUT_BUTTONMODE_NEVER:Int;
	public static var INPUT_BUTTONMODE_ONBLUR:Int;
	public static var INPUT_BUTTONMODE_ONFOCUS:Int;
	public static var KEYBOARD_APPEARANCE_ALERT:Int;
	public static var KEYBOARD_APPEARANCE_DEFAULT:Int;
	public static var KEYBOARD_ASCII:Int;
	public static var KEYBOARD_DEFAULT:Int;
	public static var KEYBOARD_EMAIL:Int;
	public static var KEYBOARD_NAMEPHONE_PAD:Int;
	public static var KEYBOARD_NUMBERS_PUNCTUATION:Int;
	public static var KEYBOARD_NUMBER_PAD:Int;
	public static var KEYBOARD_PHONE_PAD:Int;
	public static var KEYBOARD_URL:Int;
	public static var LANDSCAPE_LEFT:Int;
	public static var LANDSCAPE_RIGHT:Int;
	public static var NOTIFICATION_DURATION_LONG:Int;
	public static var NOTIFICATION_DURATION_SHORT:Int;
	public static var PICKER_TYPE_COUNT_DOWN_TIMER:Int;
	public static var PICKER_TYPE_DATE:Int;
	public static var PICKER_TYPE_DATE_AND_TIME:Int;
	public static var PICKER_TYPE_PLAIN:Int;
	public static var PICKER_TYPE_TIME:Int;
	public static var PORTRAIT:Int;
	public static var orientation:Int; // aggiunta per fissare l'orientamento in tutta l'app necessaria per Android
	public static var RETURNKEY_DEFAULT:Int;
	public static var RETURNKEY_DONE:Int;
	public static var RETURNKEY_EMERGENCY_CALL:Int;
	public static var RETURNKEY_GO:Int;
	public static var RETURNKEY_GOOGLE:Int;
	public static var RETURNKEY_JOIN:Int;
	public static var RETURNKEY_NEXT:Int;
	public static var RETURNKEY_ROUTE:Int;
	public static var RETURNKEY_SEARCH:Int;
	public static var RETURNKEY_SEND:Int;
	public static var RETURNKEY_YAHOO:Int;
	public static var TEXT_ALIGNMENT_CENTER:Int;
	public static var TEXT_ALIGNMENT_LEFT:Int;
	public static var TEXT_AUTOCAPITALIZATION_ALL:Int;
	public static var TEXT_AUTOCAPITALIZATION_NONE:Int;
	public static var TEXT_AUTOCAPITALIZATION_SENTENCES:Int;
	public static var TEXT_AUTOCAPITALIZATION_WORDS:Int;
	public static var TEXT_VERTICAL_ALIGNMENT_BOTTOM:Int;
	public static var TEXT_VERTICAL_ALIGNMENT_CENTER:Int;
	public static var TEXT_VERTICAL_ALIGNMENT_TOP:Int;
	public static var UNKNOWN:Int;
	public static var UPSIDE_PORTRAIT:Int;
	
	// static methods
	public static function addEventListener(name:String, eventListener:Dynamic->Void):Void;
	public static function fireEvent(name:String, event:Dynamic):Void;
	public static function removeEventListener(name:String, eventListener:Dynamic->Void):Void;
	
	public static function setBackgroundColor(color:String):Void;
	public static function create2DMatrix(?params:Dynamic):Matrix2D;
	public static function create3DMatrix(?params:Dynamic):Matrix3D;
	public static function createActivityIndicator(?params:Dynamic):ActivityIndicator;
	public static function createAlertDialog(?params:Dynamic):AlertDialog;
	public static function createAnimation(?params:Dynamic):Animation;
	public static function createButton(?params:Dynamic):Button;
	public static function createEmailDialog(?params:Dynamic):EmailDialog;
	public static function createImageView(?params:Dynamic):ImageView;
	public static function createLabel(?params:Dynamic):Label;
	public static function createOptionDialog(?params:Dynamic):OptionDialog;
	public static function createPicker(?params:Dynamic):Picker;
	public static function createPickerColumn(?params:Dynamic):PickerColumn;
	public static function createPickerRow(?params:Dynamic):PickerRow;
	public static function createProgressBar(?params:Dynamic):ProgressBar;
	public static function createScrollView(?params:Dynamic):ScrollView;
	public static function createScrollableView(?params:Dynamic):ScrollableView;
	public static function createSearchBar(?params:Dynamic):SearchBar;
	public static function createSlider(?params:Dynamic):Slider;
	public static function createSwitch(?params:Dynamic):Switch;
	public static function createTab(?params:Dynamic):Tab;
	public static function createTabGroup(?params:Dynamic):TabGroup;
	public static function createTableView(?params:Dynamic):TableView;
	public static function createTableViewRow(?params:Dynamic):TableViewRow;
	public static function createTableViewSection(?params:Dynamic):TableViewSection;
	public static function createTextArea(?params:Dynamic):TextArea;
	public static function createTextField(?params:Dynamic):TextField;
	public static function createWebView(?params:Dynamic):WebView;
	public static function createWindow(?params:Dynamic):Window;
	public static function createView(?params:Dynamic):View;
	
	#if iphoneos
	public static function createButtonBar(?params:Dynamic):ButtonBar;
	public static function createCoverFlowView(?params:Dynamic):CoverFlowView;
	public static function createDashboardItem(?params:Dynamic):DashboardItem;
	public static function createDashboardView(?params:Dynamic):DashboardView;
	public static function createTabbedBar(?params:Dynamic):TabbedBar;
	public static function createToolbar(?params:Dynamic):Toolbar;
	#end
}