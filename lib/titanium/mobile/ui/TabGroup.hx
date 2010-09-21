package titanium.mobile.ui;
import titanium.mobile.core.BaseView;
import titanium.mobile.core.Blob;
import titanium.mobile.core.Dispatcher;

/**
TabGroup class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.TabGroup-object.html
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
	public var allowUserCustomization:Bool;
	public var barColor:String;
	public var editButtonTitle:String;
	public var tabs:Array<Tab>;
	
	// methods
	public function addTab(tab:Tab):Void;
	public function removeTab(tab:Tab):Void;
	public function setActiveTab(indexOrObject:Dynamic):Void;
	public function open():Void;
	public function close():Void;
}