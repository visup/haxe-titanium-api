package titanium.mobile.ui;
import titanium.mobile.core.BaseView;
import titanium.mobile.core.Dispatcher;
import titanium.mobile.core.Point;

/**
DashboardItem class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.DashboardItem-object.html
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