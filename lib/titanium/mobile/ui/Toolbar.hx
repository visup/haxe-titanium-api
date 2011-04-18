package titanium.mobile.ui;
import titanium.mobile.core.BaseView;
import titanium.mobile.core.Dispatcher;

/**
Toolbar class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.Toolbar-object.html

- namespace

Titanium.UI.Toolbar

- type

object

- subtype

view

- description

A Toolbar is created by the method `Titanium.UI.createToolbar`.  A Toolbar can be placed at the bottom of a window and contain buttons.

- since

0.8

- platforms

iphone, ipad

- properties


- methods

- events

- notes

**/

#if iphoneos
@:native("Titanium.UI.Toolbar")
extern class Toolbar extends BaseView
{
	// static constructor
	public inline static function create(?params:Dynamic):Toolbar
		return titanium.mobile.UI.createToolbar(params)
}
#end