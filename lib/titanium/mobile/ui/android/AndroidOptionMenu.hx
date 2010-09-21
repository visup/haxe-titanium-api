package titanium.mobile.ui.android;
import titanium.mobile.core.Dispatcher;

/**
AndroidOptionMenu class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.Android.OptionMenu.Menu-object
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