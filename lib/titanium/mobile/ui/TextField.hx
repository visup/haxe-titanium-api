package titanium.mobile.ui;
import titanium.mobile.core.BaseView;
import titanium.mobile.core.Dispatcher;

/**
TextField class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.TextField-object.html

- namespace

Titanium.UI.TextField

- type

object

- subtype

view

- description

A Text Area is created by the method `Titanium.UI.createTextField`. The Text Field is a single line field.

- since

0.8

- platforms

android, iphone, ipad

- properties

paddingLeft[float]: the left padding of the text field
leftButtonPadding[float]: the left padding of the space between the button and the edge of the field
paddingRight[float]: the right padding of the text field
rightButtonPadding[float]: the right padding of the space between the button and the edge of the field
backgroundImage[string]: the image url to the background image of the field
backgroundDisabledImage[string]: the image url to the background image of the field when in the disabled state
hintText[string]: the hint text to display when the field is unfocused
clearOnEdit[boolean]: boolean that indicates if the value of the field is cleared upon editing
borderStyle[int]: the border style constant for the field
clearButtonMode[int]: the mode constant for how to handle displaying the clear button
leftButton[object]: the left button view
leftButtonMode[int]: the mode of the left button view
rightButton[object]: the right button view
rightButtonMode[int]: the mode of the right button view
verticalAlign[int,string]: the constant or string value for the fields vertical alignment.
enabled[boolean]: boolean indicating the enabled state of the field
editable[boolean]: boolean indicating if the field is editable
backgroundColor[string]: value of the background color of the field
value[string]: value of the field
keyboardToolbar[array]: array of toolbar button objects to be used when the keyboard is displayed
keyboardToolbarColor[string]: the color of the keyboard toolbar 
keyboardToolbarHeight[float]: the height of the keyboard toolbar
suppressReturn[boolean]: boolean to indicate if the return key should be suppressed during entry
minimumFontSize[int]: the minimum size of the font when the font is sized based on the contents.  Enables font scaling to fit

- methods

focus: force the field to gain focus
blur: force the field to lose focus
hasText: return boolean (true) if the field has text

- events

focus: fired when the field gains focus
blur: fired when the field loses focus
return: fired when the field return key is pressed on the keyboard
change: fired when the field value changes

- event : change

value: the value of the field upon change

- event : blur

value: the value of the field upon blur

- event : focus

value: the value of the field upon focus


- example : Basic Text Field with rounded border

Create a simple text field with a round border style.

~~~
var tf1 = Titanium.UI.createTextField({
	color:'#336699',
	height:35,
	top:10,
	left:10,
	width:250,
	borderStyle:Titanium.UI.INPUT_BORDERSTYLE_ROUNDED
});
~~~

- notes

On iPhone, the borderStyle can be set with a constant from [Titanium.UI](Titanium.UI).


Both Text Areas and Text Fields can control the buttons displayed in a button bar above the keyboard when it's visible.

Example using a custom keyboard toolbar:

~~~
var textfield = Titanium.UI.createTextField({
	color:'#336699',
	value:'Focus to see keyboard w/ toolbar',
	height:35,
	width:300,
	top:10,
	borderStyle:Titanium.UI.INPUT_BORDERSTYLE_ROUNDED,
	keyboardToolbar:[flexSpace,camera, flexSpace,tf,flexSpace, send,flexSpace],
	keyboardToolbarColor: '#999',	
	keyboardToolbarHeight: 40,
});
~~~

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