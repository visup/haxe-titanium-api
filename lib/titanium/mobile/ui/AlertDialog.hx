package titanium.mobile.ui;
import titanium.mobile.core.Dispatcher;

/**
AlertDialog class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.AlertDialog-object.html
**/

typedef AlertDialogClickEvent = 
{ > Event,
	cancel:Bool,
	index:Int
}

@:native("Titanium.UI.AlertDialog")
extern class AlertDialog extends Dispatcher
{
	// static constructor
	public inline static function create(?params:Dynamic):AlertDialog
		return titanium.mobile.UI.createAlertDialog(params)
	
	// events
	public static inline var CLICK_EVENT = "click";
	
	// properties
	public var buttonNames:Array<String>;
	public var cancel:Int;
	public var message:String;
	public var title:String;
	
	// methods
	public function hide():Void;
	public function show():Void;
}