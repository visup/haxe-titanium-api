package titanium.mobile.ui;
import titanium.mobile.core.BaseView;
import titanium.mobile.core.Dispatcher;
import titanium.mobile.core.Point;

/**
PickerColumn class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.PickerColumn-object.html

- namespace

Titanium.UI.PickerColumn

- type

object

- subtype

view

- description

The picker row object created by [Titanium.UI.createPickerColumn](Titanium.UI.createPickerColumn).

- since

0.9

- platforms

android, iphone, ipad

- properties

rowCount[int]: number of rows in the column (readonly)
rows[array]: an array of rows

- methods

addRow[object]: a [Titanium.UI.PickerRow](Titanium.UI.PickerRow) object to add to the column
removeRow[object]: a [Titanium.UI.PickerRow](Titanium.UI.PickerRow) object to remove


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