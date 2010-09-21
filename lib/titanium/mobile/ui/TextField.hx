package titanium.mobile.ui;
import titanium.mobile.core.BaseView;
import titanium.mobile.core.Dispatcher;

/**
TextField class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.TextField-object.html
**/

typedef TextFieldBlurEvent = 
{ > Event,
	value:String
}

typedef TextFieldChangeEvent = 
{ > Event,
	value:String
}

typedef TextFieldFocusEvent = 
{ > Event,
	value:String
}

typedef TextFieldReturnEvent = 
{ > Event,
	value:String
}

@:native("Titanium.UI.TextField")
extern class TextField extends BaseView
{
	// static constructor
	public inline static function create(?params:Dynamic):TextField
		return titanium.mobile.UI.createTextField(params)
		
	// events
	public static inline var BLUR_EVENT = "blur";
	public static inline var CHANGE_EVENT = "change";
	public static inline var FOCUS_EVENT = "focus";
	public static inline var RETURN_EVENT = "return";
	
	// properties
	public var clearButtonMode:Int;
	public var clearOnEdit:Bool;
	public var editable:Bool;
	public var enabled:Bool;
	public var hintText:String;
	public var keyboardToolbar:Array<Dynamic>;
	public var keyboardToolbarColor:String;
	public var keyboardToolbarHeight:Float;
	public var leftButton:Dynamic;
	public var leftButtonMode:Int;
	public var leftButtonPadding:Float;
	public var minimumFontSize:Int;
	public var paddingLeft:Float;
	public var paddingRight:Float;
	public var rightButton:Dynamic;
	public var rightButtonMode:Int;
	public var rightButtonPadding:Float;
	public var suppressReturn:Bool;
	public var value:String;
	public var verticalAlign:Dynamic;
	
	// methods
	public function blur():Void;
	public function focus():Void;
	public function hasText():Bool;
}