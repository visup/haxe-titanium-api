package titanium.mobile.ui;
import titanium.mobile.core.BaseView;
import titanium.mobile.core.Dispatcher;

/**
View class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.View-object.html
**/

#if iphoneos
@:native("Titanium.UI.View")
extern class View extends BaseView
{
	// static constructor
	public inline static function create(?params:Dynamic):View
		return titanium.mobile.UI.createView(params)
}
#end