package titanium.mobile.ui;
import titanium.mobile.core.Dispatcher;
import titanium.mobile.core.Point;

/**
OptionDialog class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.OptionDialog-object.html
**/

typedef OptionDialogClickEvent = 
{ > Event,
	cancel:Bool,
	destructive:Bool,
	index:Int
}

@:native("Titanium.UI.OptionDialog")
extern class OptionDialog extends Dispatcher
{
	// static constructor
	public inline static function create(?params:Dynamic):OptionDialog
		return titanium.mobile.UI.createOptionDialog(params)
		
	// events
	public static inline var CLICK_EVENT = "click";
	
	// properties
	public var cancel:Int;
	public var destructive:Int;
	public var options:Array<String>;
	public var title:String;
	
	// methods
	public function show():Void;
}