package titanium.mobile.ui;
import titanium.mobile.core.BaseView;
import titanium.mobile.core.Dispatcher;

/**
Toolbar class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.Toolbar-object.html
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