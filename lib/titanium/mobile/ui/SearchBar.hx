package titanium.mobile.ui;
import titanium.mobile.core.BaseView;
import titanium.mobile.core.Dispatcher;

/**
SearchBar class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.SearchBar-object.html
**/

typedef SearchBarBlurEvent = 
{ > Event,
}

typedef SearchBarCancelEvent = 
{ > Event,
}

typedef SearchBarChangeEvent = 
{ > Event,
}

typedef SearchBarFocusEvent = 
{ > Event,
}

typedef SearchBarReturnEvent = 
{ > Event,
}

@:native("Titanium.UI.SearchBar")
extern class SearchBar extends BaseView
{
	// static constructor
	public inline static function create(?params:Dynamic):SearchBar
		return titanium.mobile.UI.createSearchBar(params)
		
	// events
	public static inline var BLUR_EVENT = "blur";
	public static inline var CANCEL_EVENT = "cancel";
	public static inline var CHANGE_EVENT = "change";
	public static inline var FOCUS_EVENT = "focus";
	public static inline var RETURN_EVENT = "return";
	
	// properties
	public var autocapitalization:Bool;
	public var autocorrect:Bool;
	public var barColor:String;
	public var hintText:String;
	public var keyboardType:Int;
	public var prompt:String;
	public var showCancel:Bool;
	public var value:String;
	
	// methods
	public function blur():Void;
	public function focus():Void;
}