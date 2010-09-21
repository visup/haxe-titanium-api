package titanium.mobile.ui;
import titanium.mobile.core.Dispatcher;
import titanium.mobile.core.Point;

/**
Picker class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.Picker-object.html
**/

typedef PickerChangeEvent = 
{ > Event,
	column:Dynamic,
	columnIndex:Int,
	row:Dynamic,
	rowIndex:Int,
	selectedValue:Array<Dynamic>
}

@:native("Titanium.UI.Picker")
extern class Picker extends Dispatcher
{
	// static constructor
	public inline static function create(?params:Dynamic):Picker
		return titanium.mobile.UI.createPicker(params)
		
	// events
	public static inline var CHANGE_EVENT = "change";
	
	// properties
	public var columns:Array<Dynamic>;
	public var countDownDuration:Float;
	public var locale:String;
	public var minDate:Date;
	public var maxDate:Date;
	public var minuteInterval:Int;
	public var selectionIndicator:Bool;
	public var type:Int;
	public var value:Date;
	
	// methods
	public function setSelectedRow(col:Int, row:Int, animated:Bool):Void;
	public function getSelectedRow(colIndex:Int):Dynamic;
	public function reloadColumn(column:Dynamic):Void;
}