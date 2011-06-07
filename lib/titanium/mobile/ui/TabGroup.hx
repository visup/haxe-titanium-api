package titanium.mobile.ui;
import titanium.mobile.core.BaseView;
import titanium.mobile.core.Blob;
import titanium.mobile.core.Dispatcher;

/**
TabGroup class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.TabGroup-object.html

- namespace

Titanium.UI.TabGroup

- type

object

- subtype

view


- description

The Tab Group allows you to manage a tabbed UI of one or more windows. The Tab Group is created by the method `Titanium.UI.createTabGroup`.

- since

0.9

- platforms

android, iphone, ipad

- properties

tabs[array]: array of tab objects that are managed by the tab group
activeTab[object]: the active tab
barColor[string]: the default navigation bar color (typically for the "More" tab)
allowUserCustomization[boolean]: whether or not the user can configure the tab group via the 'More' tab's edit functionality.  iPhone/iPad only
editButtonTitle[string]: the title for the 'More' tab edit button.  iPhone/iPad only
windowSoftInputMode[int]: One of Ti.UI.Android.SOFT_INPUT_ADJUST_PAN, Ti.UI.Android.SOFT_INPUT_ADJUST_RESIZE, or Ti.UI.Android.SOFT_INPUT_ADJUST_UNSPECIFIED. Note: MUST be passed in the creation options. (Android Only) [Android Doc: Window.setSoftInputMode](http://developer.android.com/reference/android/view/Window.html#setSoftInputMode(int))

- methods

addTab: add a tab to the tab group
removeTab: remove a tab from the tab group
open: open the tab group and make it visible
close: close the tab group and remove it from the UI
setActiveTab: select the currently active tab in a tab group

- method : setActiveTab

indexOrObject[object]: an int representing the desired tab index or a reference to the tab object you'd like to switch to

- events

open: fired when the tab group is opened
close: fired when the tab group is closed
blur: fired when the tab group loses focus
focus: fired when the tab group gains focus

- event : blur

previousTab: the previous tab object
previousIndex: the previous tab index
tab: the tab object
index: the tab index


- event : focus

previousTab: the previous tab object
previousIndex: the previous tab index
tab: the tab object
index: the tab index


- notes

Note that when opening a tab group, if one or more of its tabs have been set 'active' prior to opening, or if setActiveTab() has been called while a tab is 'active', the result of which tab is initially selected is undefined.


**/


typedef TabGroupBlurEvent = 
{ > Event,
	index:Int,
	tab:Tab,
	previousIndex:Int,
	previousTab:Tab
}

typedef TabGroupCloseEvent = 
{ > Event,
}

typedef TabGroupOpenEvent = 
{ > Event,
}

typedef TabGroupFocusEvent = 
{ > Event,
	index:Int,
	tab:Tab,
	previousIndex:Int,
	previousTab:Tab
}

@:native("Titanium.UI.TabGroup")
extern class TabGroup extends BaseView
{
	// static constructor
	public inline static function create(?params:Dynamic):TabGroup
		return titanium.mobile.UI.createTabGroup(params)
		
	// events
	public inline static var BLUR_EVENT = "blur";
	public inline static var CLOSE_EVENT = "close";
	public inline static var OPEN_EVENT = "open";
	public inline static var FOCUS_EVENT = "focus";
	
	// properties
	public var activeTab:Tab;
	#if iphoneos
	public var allowUserCustomization:Bool;
	#end
	public var barColor:String;
	public var editButtonTitle:String;
	public var tabs:Array<Tab>;
	#if androidos
	public var windowSoftInputMode:Int;
	#end

	// methods
	public function addTab(tab:Tab):Void;
	public function removeTab(tab:Tab):Void;
	public function setActiveTab(indexOrObject:Dynamic):Void;
	public function open():Void;
	public function close():Void;
}