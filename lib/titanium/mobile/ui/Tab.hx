package titanium.mobile.ui;
import titanium.mobile.core.BaseView;
import titanium.mobile.core.Dispatcher;

/**
Tab class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.Tab-object.html
**/

@:native("Titanium.UI.Tab")
extern class Tab extends BaseView
{
	// static constructor
	public inline static function create(?params:Dynamic):Tab
		return titanium.mobile.UI.createTab(params)
		
	// properties
	public var badge:String;
	public var icon:String;
	public var title:String;
	public var window:Window;
}










