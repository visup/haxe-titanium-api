package titanium.mobile.ui;
import titanium.mobile.core.BaseView;
import titanium.mobile.core.Dispatcher;
import titanium.mobile.core.Point;

/**
PickerColumn class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.PickerColumn-object.html
**/

@:native("Titanium.UI.PickerColumn")
extern class PickerColumn extends BaseView
{
	// static constructor
	public inline static function create(?params:Dynamic):PickerColumn
		return titanium.mobile.UI.createPickerColumn(params)
		
	// properties
	public var rowCount:Int;
	public var rows:Array<PickerRow>;
	
	// methods
	public function addRow(row:PickerRow):Void;
	public function removeRow(row:PickerRow):Void;
}