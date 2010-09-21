package titanium.mobile.ui;
import titanium.mobile.core.Dispatcher;
import titanium.mobile.core.Point;

/**
EmailDialog class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.EmailDialog-object.html
**/

typedef EmailDialogCompleteEvent = 
{ > Event,
	error:String,
	result:Int,
	success:Bool
}

@:native("Titanium.UI.EmailDialog")
extern class EmailDialog extends Dispatcher
{
	// static constructor
	public inline static function create(?params:Dynamic):EmailDialog
		return titanium.mobile.UI.createEmailDialog(params)
	
	// events
	public static inline var COMPLETE_EVENT = "complete";
	
	// constants
	public static var CANCELLED:Int;
	public static var FAILED:Int;
	public static var SAVED:Int;
	public static var SENT:Int;
	
	// properties
	public var barColor:String;
	public var ccRecipients:Array<String>;
	public var bccRecipients:Array<String>;
	public var html:Bool;
	public var messageBody:String;
	public var subject:String;
	public var toRecipients:Array<String>;
	
	// methods
	public function addAttachment(attachment:Dynamic):Void;
	public function open(props:Dynamic):Void;
}