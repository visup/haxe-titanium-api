package titanium.mobile.ui;
import titanium.mobile.core.Dispatcher;

/**
ActivityIndicator class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.ActivityIndicator-object.html
**/

@:native("Titanium.UI.ActivityIndicator")
extern class ActivityIndicator extends Dispatcher
{
	// static constructor
	public inline static function create(?params:Dynamic):ActivityIndicator
		return titanium.mobile.UI.createActivityIndicator(params)
		
	// properties
	public var color:String;
	public var font:Dynamic;
	public var message:String;
	public var style:Int;
	
	// methods
	public function hide():Void;
	public function show():Void;
}