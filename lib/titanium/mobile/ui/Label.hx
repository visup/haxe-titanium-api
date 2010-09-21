package titanium.mobile.ui;
import titanium.mobile.core.BaseView;
import titanium.mobile.core.Dispatcher;
import titanium.mobile.core.Point;

/**
Label class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.Label-object.html
**/

@:native("Titanium.UI.Label")
extern class Label extends BaseView
{
	// static constructor
	public inline static function create(?params:Dynamic):Label
		return titanium.mobile.UI.createLabel(params)
	
	// properties
	public var backgroundPaddingBottom:Int;
	public var backgroundPaddingLeft:Int;
	public var backgroundPaddingRight:Int;
	public var backgroundPaddingTop:Int;
	public var color:String;
	public var font:String;
	public var highlightedColor:String;
	public var minimumFontSize:Int;
	public var shadowColor:String;
	public var shadowOffset:Point;
	public var text:String;
	public var textAlign:Dynamic;
}