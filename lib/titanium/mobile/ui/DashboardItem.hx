package titanium.mobile.ui;
import titanium.mobile.core.BaseView;
import titanium.mobile.core.Dispatcher;
import titanium.mobile.core.Point;

/**
DashboardItem class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.DashboardItem-object.html

- namespace

Titanium.UI.DashboardItem

- type

object

- subtype

proxy

- description

An item that represents a visual icon in the [[Titanium.UI.DashboardView]]. The Dashboard Item is created by the method `Titanium.UI.createDashboardItem`.

- since

1.2

- platforms

iphone, ipad

- properties

badge[int]: the badge value or `0` to remove the badge
image[string]: the URL to the image
selectedImage[string]: the URL to the image to display when the item is depressed (clicked)
canDelete[boolean]: a boolean to indicate if this item can be deleted when it edit mode

- events

click: fired when a [[Titanium.UI.DashboardItem]] is clicked
move: fired when a  [[Titanium.UI.DashboardItem]] is moved during editing
delete: fired when a  [[Titanium.UI.DashboardItem]] is deleted during editings

- event : click

item: the [[Titanium.UI.DashboardItem]] that was clicked
location: the location object with the properties `x` and `y` of where in the parent view the click was

- event : move

item: the [[Titanium.UI.DashboardItem]] that was moved
items: the pending data array in the new order (uncommitted)

- event : delete

item: the [[Titanium.UI.DashboardItem]] that was deleted

**/
#if iphoneos

typedef DashboardItemClickEvent = 
{ > Event,
	item:DashboardItem,
	location:Point
}

typedef DashboardItemDeleteEvent = 
{ > Event,
	item:DashboardItem
}

typedef DashboardItemMoveEvent = 
{ > Event,
	item:DashboardItem,
	items:Array<DashboardItem>
}

@:native("Titanium.UI.DashboardItem")
extern class DashboardItem extends Dispatcher
{
	// static constructor
	public inline static function create(?params:Dynamic):DashboardItem
		return titanium.mobile.UI.createDashboardItem(params)
		
	// events
	public inline static var CLICK_EVENT = "click";
	public inline static var DELETE_EVENT = "delete";
	public inline static var MOVE_EVENT = "move";
	
	// properties
	public var badge:Int;
	public var canDelete:Bool;
	public var image:String;
	public var selectedImage:String;
}
#end