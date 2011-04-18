package titanium.mobile.ui.android;
import titanium.mobile.core.Dispatcher;

/**
AndroidOptionMenu class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.Android.OptionMenu.Menu-object

- namespace

Titanium.UI.Android.OptionMenu.Menu

- type

object

- subtype

proxy

- description

A Menu allows you to provide a selection of options that appear when the **menu** button is pressed on device. The Menu is created by the method `Titanium.UI.Android.OptionMenu.createMenu`

- since

1.1

- platforms

android

- properties

None

- methods

add: add a menu item. Items will be displayed in the menu based on insertion order.

- method : add

menuitem[object]: the menu item to add. Must be a `Titanium.UI.Android.OptionMenu.MenuItem`.

**/
#if androidos
@:native("Titanium.UI.Android.OptionMenu.Menu")
extern class AndroidOptionMenu extends Dispatcher
{
	// static constructor
	public inline static function create(?params:Dynamic):AndroidOptionMenu
		return titanium.mobile.UIAndroidOptionMenu.createMenu(params)
		
	// methods
	public function add(menuItem:AndroidOptionMenuItem):Void;
}
#end