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

- namespace

Titanium.UI.TableView

- type

object

- subtype

view

- description

A Table View allows you to create a scrollable table of content in a list-based fashion. The Table View is created by the method `Titanium.UI.createTableView`.

- since

0.8

- platforms

android, iphone, ipad

- properties

backgroundColor[string]: the background color of the table view
backgroundImage[string]: the background image to render in the background of the table view
separatorStyle[int]: the separator style constant. For iPhone, Titanium.UI.iPhone.TableViewSeparatorStyle
separatorColor[string]: the separator color color as a hex or named value
headerTitle[string]: the table view header title
footerTitle[string]: the table view footer title
headerView[object]: the table view header as a view that will be rendered instead of a label
footerView[object]: the table view footer as a view that will be rendered instead of a label
search[object]: the search field to use for the table view
searchHidden[boolean]: boolean to control the visibility of the search field
filterAttribute[string]: the filter attribute to be used when searching. this property maps to your data object or a property on the row object
filterCaseInsensitive[boolean]: boolean to indicate if the search should be case sensitive or case insensitive (default)
index[array]: an array of objects (with title and index properties) to control the table view index
editable[boolean]: allow the table view to be editable (this must be true for swipe-to-delete)
editing[boolean]: boolean to control the editing state of the table view
moving[boolean]: boolean to control the moveable state of the table view
rowHeight[float]: default row height for table view rows
minRowHeight[float]: min row height for table view rows
maxRowHeight[float]: max row height for table view rows
data[array]: the data array of objects to be used for the rows of the table view
style[int]: iPhone only. the style of the table view. constant from [Titanium.UI.iPhone.TableViewStyle](Titanium.UI.iPhone.TableViewStyle)
allowsSelection[boolean]: true if the rows can be selected (default true)
scrollable[boolean]: true (default) if tableview can be scrolled

- methods

setData: set the data in the table, optionally with animation
appendRow: append a row to the table, optionally with animation
updateRow: update an existing row, optionally with animation
deleteRow: delete an existing row, optionally with animation
insertRowAfter: insert a row before another row, optionally with animation
insertRowBefore: insert a row after another row, optionally with animation
scrollToIndex: scroll to a specific row index and ensure that that row is on screen
scrollToTop: scroll the table to a specific top position where 0 is the topmost y position in the table view
selectRow: programmatically select a row
deselectRow: programmatically deselect a row

- method : selectRow

row[int]: row index to select

- method : deselectRow

row[int]: row index to deselect


- method : scrollToTop

top[float]: y position
properties[object]: optional dictionary with the key `animated` (default, true) as boolean to indicate if the scroll should be animated or immediate

- method : setData

data[array]: data array of rows either as objects or row objects
properties[object]: animation properties

- method : appendRow

row[object]: row to append
properties[object]: animation properties

- method : updateRow

row[object]: row data to update
properties[object]: animation properties

- method : deleteRow

row[int]: index of row to delete
properties[object]: animation properties

- method : insertRowAfter

index[int]: index
row[object]: row to insert
properties[object]: animation properties

- method : insertRowBefore

index[int]: index
row[object]: row to insert
properties[object]: animation properties

- method : scrollToIndex

index[int]: index
properties[object]: animation properties. `position` property controls the position constant to use for position (on iPhone, use constants from Titanium.UI.iPhone.TableViewScrollPosition).


- events

delete: fired when a table row is delete by the user
move: fired when a table row is moved by the user
click: fired when a table row is clicked
scroll: fired when the table view is scrolled (currently, iphone only)
scrollEnd: fired when the table view stops scrolling (currently, iphone only)

- event : delete

index: table view row index
section: table view section object
row: table view row object
detail: boolean to indicate if the right area was clicked
searchMode: boolean to indicate if the table is in search mode
rowData: table view row data object

- event : move

index: table view row index
section: table view section object
row: table view row object
detail: boolean to indicate if the right area was clicked
searchMode: boolean to indicate if the table is in search mode
rowData: table view row data object

- event : click

index: table view row index
section: table view section object
row: table view row object
detail: boolean to indicate if the right area was clicked
searchMode: boolean to indicate if the table is in search mode
rowData: table view row data object

- event : scroll

contentOffset: dictionary with `x` and `y` properties containing the content offset
contentSize: dictionary with `width` and `height` properties containing the size of the content (regardless of the display size in the case of scrolling)
size: dictionary with `width` and `height` properties containing the size of the visible table view

- event : scrollEnd

contentOffset: dictionary with `x` and `y` properties containing the content offset
contentSize: dictionary with `width` and `height` properties containing the size of the content (regardless of the display size in the case of scrolling)
size: dictionary with `width` and `height` properties containing the size of the visible table view

- example : Simple Table View with basic rows

The most basic example of a table view.

~~~
var data = [{title:"Row 1"},{title:"Row 2"}];
var table = Titanium.UI.createTableView({data:data});
win.add(table);
~~~

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