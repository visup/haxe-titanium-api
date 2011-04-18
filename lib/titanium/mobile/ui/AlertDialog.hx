package titanium.mobile.ui;
import titanium.mobile.core.Dispatcher;

/**
AlertDialog class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.AlertDialog-object.html

- namespace

Titanium.UI.AlertDialog

- type

object

- subtype

proxy

- description

The Alert Dialog is created by `Titanium.UI.createAlertDialog` and allows you to show a modal application dialog.

- since

0.8

- platforms

android, iphone, ipad

- properties

buttonNames[array]: array of button names as strings
title[string]: the title of the dialog
message[string]: the message of the dialog
cancel[int]: an index to indicate which button should be the cancel button

# 1.5
messageid[string]: the key in the locale file to use for the message property


- methods

show: cause the dialog to become visible
hide: cause the dialog to become hidden

- events

click: fired when a button in the dialog is clicked

- event : click

index: the button index that was pressed
cancel: boolean to indicate if the cancel button was pressed

- example : Simple Alert Dialog

In this example, we show a simple alert dialog.

~~~
var alertDialog = Titanium.UI.createAlertDialog({
	title: 'Hello',
	message: 'You got mail',
	buttonNames: ['OK','Doh!']
});
alertDialog.show();
~~~

- notes

the global method `alert` is aliased to this object and can be invoked with a single message. For example:

~~~
alert("this is a message");
~~~


Note: you should be careful not to call alert more than once while a pending alert is visible.

On iOS 4, alert dialogs will automatically be cancelled upon application suspend.


**/

typedef AlertDialogClickEvent = 
{ > Event,
	cancel:Bool,
	index:Int
}

@:native("Titanium.UI.AlertDialog")
extern class AlertDialog extends Dispatcher
{
	// static constructor
	public inline static function create(?params:Dynamic):AlertDialog
		return titanium.mobile.UI.createAlertDialog(params)
	
	// events
	public static inline var CLICK_EVENT = "click";
	
	// properties
	public var buttonNames:Array<String>;
	public var cancel:Int;
	public var message:String;
	public var title:String;
	public var showed:Bool;
	public var interrupted:Bool;
	
	// methods
	public function hide():Void;
	public function show():Void;
}