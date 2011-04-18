package titanium.mobile.ui;
import titanium.mobile.core.BaseView;
import titanium.mobile.core.Dispatcher;
import titanium.mobile.core.Point;

/**
PickerRow class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.PickerRow-object.html

- namespace

Titanium.UI.PickerRow

- type

object

- subtype

view

- description

The picker row object created by [Titanium.UI.createPickerRow](Titanium.UI.createPickerRow).

- since

0.9

- platforms

android, iphone, ipad

- properties

selected[boolean]: when used in the constructor, set the row to selected on initial display
title[string]: the display text 
fontSize[int]: the font size when displaying the text. ignored when using a custom view


- example : Custom Views for a picker row

Since the row object is itself a view, you can add views and widgets to it to customize the \
the rows display. In the example below, we create a custom label for the row.

~~~
var row = Ti.UI.createPickerRow();
var label = Ti.UI.createLabel({
	text:text,
	font:{fontSize:24,fontWeight:'bold'},
	color:text,
	width:'auto',
	height:'auto'
});
row.add(label);
picker.add(row);
~~~

**/

@:native("Titanium.UI.PickerRow")
extern class PickerRow extends BaseView
{
	// static constructor
	public inline static function create(?params:Dynamic):PickerRow
		return titanium.mobile.UI.createPickerRow(params)
		
	// properties
	public var fontSize:Int;
	public var selected:Bool;
	public var title:String;
}