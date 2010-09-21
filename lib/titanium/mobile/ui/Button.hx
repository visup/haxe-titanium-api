package titanium.mobile.ui;
import titanium.mobile.core.BaseView;
import titanium.mobile.core.Dispatcher;

/**
Button class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.Button-object.html
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
}