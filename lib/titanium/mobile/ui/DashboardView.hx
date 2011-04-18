package titanium.mobile.ui;
import titanium.mobile.core.BaseView;
import titanium.mobile.core.Dispatcher;
import titanium.mobile.core.Point;

/**
DashboardView class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.DashboardView-object.html

- namespace

Titanium.UI.DashboardView

- type

object

- subtype

view

- description

The Dashboard View provides a view that supports the ability to have Springboard-like view of icons which can be reordered by dragging and can contain multiple pages of icons in a scrollable view. The Dashboard View is created by the method `Titanium.UI.createDashboardView`.

- since

1.2

- platforms

iphone, ipad

- properties

data[array]: an array of [[Titanium.UI.DashboardItem]] objects to display in the view
wobble[boolean]: true (default) to wobble during edit, false to disable wobble effect

- methods

startEditing: put the dashboard in edit mode
stopEditing: cancel editing

- events

edit: fired when editing begins
commit: fired when editing ends
click: fired when a [[Titanium.UI.DashboardItem]] is clicked
move: fired when a  [[Titanium.UI.DashboardItem]] is moved during editing
delete: fired when a  [[Titanium.UI.DashboardItem]] is deleted during editings

- event : edit

- event : commit

- event : click

item: the [[Titanium.UI.DashboardItem]] that was clicked
location: the location object with the properties `x` and `y` of where in the parent view the click was

- event : dragStart

item: the [[Titanium.UI.DashboardItem]] that will be dragged

- event : dragEnd

item: the [[Titanium.UI.DashboardItem]] that was dragged (not necessarily moved)

- event : move

item: the [[Titanium.UI.DashboardItem]] that was moved
items: the pending data array in the new order (uncommitted)

- event : delete

item: the [[Titanium.UI.DashboardItem]] that was deleted

**/
#if iphoneos

typedef DashboardViewClickEvent = 
{ > Event,
	item:DashboardItem,
	location:Point
}

typedef DashboardViewCommitEvent = 
{ > Event,
}

typedef DashboardViewEditEvent = 
{ > Event,
}

typedef DashboardViewDeleteEvent = 
{ > Event,
	item:DashboardItem
}

typedef DashboardViewMoveEvent = 
{ > Event,
	item:DashboardItem,
	items:Array<DashboardItem>
}

@:native("Titanium.UI.DashboardItem")
extern class DashboardView extends BaseView
{
	// static constructor
	public inline static function create(?params:Dynamic):DashboardView
		return titanium.mobile.UI.createDashboardView(params)
		
	// events
	public inline static var CLICK_EVENT = "click";
	public inline static var COMMIT_EVENT = "commit";
	public inline static var DELETE_EVENT = "delete";
	public inline static var EDIT_EVENT = "edit";
	public inline static var MOVE_EVENT = "move";
	
	// properties
	public var data:Array<DashboardItem>;
	public var wobble:Bool;
	
	// methods
	public function startEditing():Void;
	public function stopEditing():Void;
}
#end