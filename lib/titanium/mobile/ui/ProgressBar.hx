package titanium.mobile.ui;
import titanium.mobile.core.BaseView;
import titanium.mobile.core.Dispatcher;
import titanium.mobile.core.Point;

/**
ProgressBar class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.ProgressBar-object.html
**/

@:native("Titanium.UI.ProgressBar")
extern class ProgressBar extends BaseView
{
	// static constructor
	public inline static function create(?params:Dynamic):ProgressBar
		return titanium.mobile.UI.createProgressBar(params)
		
	// properties
	public var color:String;
	public var font:Dynamic;
	public var max:Float;
	public var message:String;
	public var min:Float;
	public var style:Int;
	public var value:Float;
}