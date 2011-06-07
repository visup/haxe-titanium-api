package titanium.mobile.ui;
import titanium.mobile.core.Dispatcher;
import titanium.mobile.core.Point;

/**
OptionDialog class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.OptionDialog-object.html

- namespace

Titanium.UI.OptionDialog

- type

object

- description

The Option Dialog is created by `Titanium.UI.createOptionDialog` and allows you to show a modal dialog of one or more options to the user.

- since

0.8

- platforms

android, iphone, ipad

- properties

options[array]: array of button names as strings
title[string]: the title of the dialog
destructive[int]: the destructive button (indicated by a visual clue in the UI)
cancel[int]: an index to indicate which button should be the cancel button

# 1.5
titleid[string]: the key in the locale file to use for the title property
androidView[object]: A Titanium.UI.View. Allows for arbitrary contents inside a native dialog. Works for any dialog. (Android)

- methods

show: cause the dialog to become visible

- events

click: fired when a button in the dialog is clicked

- event : click

index: the button index that was pressed
cancel: boolean to indicate if the cancel button was pressed
destructive: boolean to indicate if the destructive button was pressed
button: boolean to indicate that the index refers to a button on the dialog and not an item. (Android)

- example : Simple Options Dialog with 2 Options

In this example, we show a simple option dialog.

~~~
var dialog = Titanium.UI.createOptionDialog({
	title: 'Hello',
	options: ['Option 1','Option 2'],
	cancel:1
});
dialog.show();
~~~


**/

typedef OptionDialogClickEvent = 
{ > Event,
	#if androidos
	button:Bool,
	#end
	cancel:Bool,
	destructive:Bool,
	index:Int
}

@:native("Titanium.UI.OptionDialog")
extern class OptionDialog extends Dispatcher
{
	// static constructor
	public inline static function create(?params:Dynamic):OptionDialog
		return titanium.mobile.UI.createOptionDialog(params)
		
	// events
	public static inline var CLICK_EVENT = "click";
	
	// properties
	public var cancel:Int;
	public var destructive:Int;
	public var options:Array<String>;
	#if androidos
	public var selectedIndex:Int;
	#end
	public var title:String;
	
	// methods
	public function show():Void;
}