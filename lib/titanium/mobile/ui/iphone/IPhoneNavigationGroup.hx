package titanium.mobile.ui.iphone;
import titanium.mobile.core.BaseView;
import titanium.mobile.ui.Window;

/**
IPhoneNavigationGroup class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.iPhone.NavigationGroup-object
**/
#if iphoneos

@:native("Titanium.UI.iPhone.NavigationGroup")
extern class IPhoneNavigationGroup extends BaseView
{
	// static constructor
	public inline static function create(?params:Dynamic):IPhoneNavigationGroup
		return titanium.mobile.UIiPhone.createNavigationGroup(params)
		
	// methods
	public function open(window:Window, ?props:Dynamic):Void;
	public function close(window:Window, ?props:Dynamic):Void;
}
#end