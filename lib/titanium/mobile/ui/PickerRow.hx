package titanium.mobile.ui;
import titanium.mobile.core.BaseView;
import titanium.mobile.core.Dispatcher;
import titanium.mobile.core.Point;

/**
PickerRow class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.PickerRow-object.html
**/

@:native("Titanium.UI.PickerRow")
extern class PickerRow extends BaseView
{
	// static constructor
	public inline static function create(?params:Dynamic):PickerRow
		return titanium.mobile.UI.createPickerRow(params)
		
	// properties
	public var fontSize:Int;
	public var selected:Bool;
	public var title:String;
}