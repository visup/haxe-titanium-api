﻿package titanium.mobile.ui;
import titanium.mobile.core.BaseView;
import titanium.mobile.core.Dispatcher;

/**
Button class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.Button-object.html

- namespace

Titanium.UI.Button

- type

object

- subtype

view

- description

A Button is created by the method `Titanium.UI.createButton`.

- since

0.8

- platforms

android, iphone, ipad

- properties

title[string]: button title
enabled[boolean]: boolean that indicates if the button is enabled or not
backgroundColor[string]: the buttons background color
color[string]: the foreground color of the button text
selectedColor[string]: the selected color of the button text when the button is in the selected state
font[object]: the font properties of the button
backgroundImage[string]: url to a button image that is drawn as the background of the button
backgroundSelectedImage[string]: url to a button image that is drawn as the background of the button when the button is in the selected state
backgroundDisabledImage[string]: url to a button image that is drawn as the background of the button when the button is in the disabled state
style[int]: style constant for the type of button
image[string]: the image to display on the button to the left of the title

# 1.5
titleid[string]: the key in the locale file to use for the title property


- methods

- events

click: fired when the user presses the button

- example : Simple Button Example

~~~
var button = Titanium.UI.createButton({
   title: 'Hello'
});
button.addEventListener('click',function(e)
{
   Titanium.API.info("You clicked the button");
});
~~~

- notes

**/

@:native("Titanium.UI.Button")
extern class Button extends BaseView
{
	// static constructor
	public inline static function create(?params:Dynamic):Button
		return titanium.mobile.UI.createButton(params)
		
	// properties
	public var backgroundDisabledImage:String;
	public var enabled:Bool;
	public var font:Dynamic;
	public var image:String;
	public var selectedColor:String;
	public var style:Int;
	public var title:String;
	public var color:String;
	public var value:Dynamic;
	public var systemButton:Int;
}