package titanium.mobile.ui;
import titanium.mobile.core.BaseView;
import titanium.mobile.core.Dispatcher;

/**
TextArea class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.TextArea-object.html
**/

typedef TextAreaBlurEvent = 
{ > Event,
	value:String
}

typedef TextAreaChangeEvent = 
{ > Event,
	value:String
}

typedef TextAreaFocusEvent = 
{ > Event,
	value:String
}

typedef TextAreaReturnEvent = 
{ > Event,
	value:String
}

typedef TextAreaSelectedEvent = 
{ > Event,
	value:String
}

@:native("Titanium.UI.TextArea")
extern class TextArea extends BaseView
{
	// static constructor
	public inline static function create(?params:Dynamic):TextArea
		return titanium.mobile.UI.createTextArea(params)
		
	// events
	public static inline var BLUR_EVENT = "blur";
	public static inline var CHANGE_EVENT = "change";
	public static inline var FOCUS_EVENT = "focus";
	public static inline var RETURN_EVENT = "return";
	public static inline var SELECTED_EVENT = "selected";
	
	// properties
	public var editable:Bool;
	public var enabled:Bool;
	public var keyboardToolbar:Array<Dynamic>;
	public var keyboardToolbarColor:String;
	public var keyboardToolbarHeight:Float;
	public var suppressReturn:Bool;
	public var value:String;
	
	// methods
	public function blur():Void;
	public function focus():Void;
	public function hasText():Bool;
}