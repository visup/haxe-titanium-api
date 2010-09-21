package titanium.mobile.ui;
import titanium.mobile.core.BaseView;
import titanium.mobile.core.Blob;
import titanium.mobile.core.Dispatcher;

/**
TableViewRow class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.TableViewRow-object.html
**/


typedef TableViewRowClickEvent = 
{ > ClickEvent,
	detail:Bool,
	index:Int,
	row:TableViewRow,
	rowData:Dynamic,
	searchMode:Bool,
	section:TableViewSection
}

@:native("Titanium.UI.TableViewRow")
extern class TableViewRow extends BaseView
{
	// static constructor
	public inline static function create(?params:Dynamic):TableViewRow
		return titanium.mobile.UI.createTableViewRow(params)
		
	// events
	public inline static var CLICK_EVENT = "click";
	
	// properties
	public var className:String;
	public var color:String;
	public var hasCheck:Bool;
	public var hasChild:Bool;
	public var hasDetail:Bool;
	public var indentionLevel:Int;
	public var layout:String;
	public var leftImage:String;
	public var rightImage:String;
	public var selectedBackgroundColor:String;
	public var selectedBackgroundImage:String;
	public var selectedColor:String;
	public var selectionStyle:String;
	public var title:String;
}