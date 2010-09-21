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

	public static function createMatrix2D(?params:Dynamic):Matrix2D;
	public static function createMatrix3D(?params:Dynamic):Matrix3D;
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
	
	#if iphoneos
	public static function createButtonBar(?params:Dynamic):ButtonBar;
	public static function createCoverFlowView(?params:Dynamic):CoverFlowView;
	public static function createDashboardItem(?params:Dynamic):DashboardItem;
	public static function createDashboardView(?params:Dynamic):DashboardView;
	public static function createTabbedBar(?params:Dynamic):TabbedBar;
	public static function createToolbar(?params:Dynamic):Toolbar;
	public static function createView(?params:Dynamic):View;
	#end
}