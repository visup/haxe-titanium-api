package titanium.mobile.ui;
import titanium.mobile.core.BaseView;
import titanium.mobile.core.Dispatcher;

/**
SearchBar class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.SearchBar-object.html

- namespace

Titanium.UI.SearchBar

- type

object

- subtype

view

- description

A Search Bar is created by the method `Titanium.UI.createSearchBar`.

- since

0.8

- platforms

android, iphone, ipad

- properties

value[string]: the value of the search bar
showCancel[boolean]: boolean indicates whether the cancel button is displayed
barColor[string]: the bar color of the search bar view
hintText[string]: the text to show when the search bar field is not focused
keyboardType[int]: the keyboard type constant to use when the field is focused
prompt[string]: a single line of text displayed at the top of the search bar
autocorrect[boolean]: boolean to indicate if the text in the field should be autocorrected as typed
autocapitalization[boolean]: boolean to indicate if the text in the field should be autocapitalized as typed

# 1.5
promptid[string]: the key in the locale file to use for the prompt property
hinttextid[string]: the key in the locale file to use for the hintText property


- methods

focus: called to force the search bar to focus
blur: called to force the search bar to lose focus

- events

focus: fired when the search bar gains focus
blur: fired when the search bar loses focus
change: fired when the value of the search bar changes
return: fired when keyboard search button is pressed
cancel: fired when the cancel button is pressed

- example : Simple Search Bar

~~~
var search = Titanium.UI.createSearchBar({
	barColor:'#000', 
	showCancel:true,
	height:43,
	top:0,
});
~~~

- notes

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