package titanium.mobile.ui;
import titanium.mobile.core.BaseView;
import titanium.mobile.core.Blob;
import titanium.mobile.core.Dispatcher;
import titanium.mobile.core.Point;
import titanium.mobile.core.Size;

/**
TableView class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.TableView-object.html
**/

typedef TableViewClickEvent = 
{ > ClickEvent,
	detail:Bool,
	index:Int,
	row:TableViewRow,
	rowData:Dynamic,
	searchMode:Bool,
	section:TableViewSection
}

typedef TableViewDeleteEvent = 
{ > Event,
	detail:Bool,
	index:Int,
	row:TableViewRow,
	rowData:Dynamic,
	searchMode:Bool,
	section:TableViewSection
}

typedef TableViewMoveEvent = 
{ > Event,
	detail:Bool,
	index:Int,
	row:TableViewRow,
	rowData:Dynamic,
	searchMode:Bool,
	section:TableViewSection
}

#if iphoneos
typedef TableViewScrollEvent = 
{ > Event,
	contentOffset:Point,
	contentSize:Size,
	size:Size
}

typedef TableViewScrollEndEvent = 
{ > Event,
	contentOffset:Point,
	contentSize:Size,
	size:Size
}
#end

@:native("Titanium.UI.TableView")
extern class TableView extends BaseView
{
	// static constructor
	public inline static function create(?params:Dynamic):TableView
		return titanium.mobile.UI.createTableView(params)
	
	// events
	public inline static var CLICK_EVENT = "click";
	public inline static var DELETE_EVENT = "delete";
	public inline static var MOVE_EVENT = "move";
	#if iphoneos
	public inline static var SCROLL_EVENT = "scroll";
	public inline static var SCROLLEND_EVENT = "scrollEnd";
	#end
	
	// properties
	public var allowSelection:Bool;
	public var data:Array<Dynamic>;
	public var editable:Bool;
	public var editing:Bool;
	public var filterAttribute:String;
	public var filterCaseInsenditive:Bool;
	public var footerTitle:String;
	public var footerView:Dynamic;
	public var headerTitle:String;
	public var headerView:Dynamic;
	public var index:Int;
	public var minRowHeight:Float;
	public var maxRowHeight:Float;
	public var moving:Bool;
	public var rowHeight:Float;
	public var scrollable:Bool;
	public var search:Dynamic;
	public var searchHidden:Bool;
	public var separatorColor:String;
	public var separatorStyle:Int;
	#if iphoneos
	public var style:Int;
	#end
	
	// methods
	public function appendRow(row:TableViewRow, ?animationProps:Dynamic):Void;
	public function deleteRow(row:TableViewRow, ?animationProps:Dynamic):Void;
	public function deselectRow(rowIndex:Int):Void;
	public function insertRowAfter(rowIndex:Int, row:TableViewRow, ?animationProps:Dynamic):Void;
	public function insertRowBefore(rowIndex:Int, row:TableViewRow, ?animationProps:Dynamic):Void;
	public function scrollToIndex(rowIndex:Int, ?animationProps:Dynamic):Void;
	public function scrollToTop(top:Float, ?animationProps:Dynamic):Void;
	public function selectRow(rowIndex:Int):Void;
	public function updateRow(row:TableViewRow, ?animationProps:Dynamic):Void;
	public function setData(data:Array<Dynamic>, ?animationProps:Dynamic):Void;
}